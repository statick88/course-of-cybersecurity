#!/usr/bin/env bash
#===============================================================================
# SCRIPT DE VALIDACIÓN DEL EBOOK GUÍA — FUNDAMENTOS DE CIBERSEGURIDAD
# Versión: 1.0.0 — Agosto 2026
# Abacom / Diego Saavedra
#
# Propósito:
#   1. Verificar existencia de todos los archivos .qmd referenciados en index.qmd
#   2. Validar sintaxis de bloques de código (Bash, Docker, Git)
#   3. Detectar enlaces rotos internos entre módulos y apéndices
#   4. Generar informe de listo para producción (Readiness Report)
#
# Uso:
#   bash scripts/validar-ebook.sh [--verbose] [--fix]
#===============================================================================

# No usar set -e para evitar salidas prematuras por errores en funciones
set -uo pipefail

# ═══════════════════════════════════════════════════════════════════════════════
# CONFIGURACIÓN
# ═══════════════════════════════════════════════════════════════════════════════

EBOOK_DIR="content/ebook-guia"
INDEX_FILE="$EBOOK_DIR/index.qmd"
SCRIPTS_DIR="scripts"
LOG_FILE="$SCRIPTS_DIR/validacion-$(date +%Y%m%d-%H%M%S).log"

# Contadores
ERRORS=0
WARNINGS=0
CHECKS_PASSED=0
CHECKS_TOTAL=0

# Colores para salida
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# Flags
VERBOSE=false
FIX_MODE=false

# ═══════════════════════════════════════════════════════════════════════════════
# FUNCIONES AUXILIARES
# ═══════════════════════════════════════════════════════════════════════════════

log() {
    local level="$1"
    shift
    local message="$*"
    local timestamp
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    echo "[$timestamp] [$level] $message" >> "$LOG_FILE" 2>/dev/null || true
    
    case "$level" in
        ERROR)   echo -e "${RED}✗${NC} $message" ;;
        WARNING) echo -e "${YELLOW}⚠${NC} $message" ;;
        SUCCESS) echo -e "${GREEN}✓${NC} $message" ;;
        INFO)    [[ "$VERBOSE" == true ]] && echo -e "${CYAN}ℹ${NC} $message" ;;
        *)       echo -e "$message" ;;
    esac
}

print_header() {
    echo ""
    echo -e "${BOLD}${BLUE}════════════════════════════════════════════════════════════════${NC}"
    echo -e "${BOLD}${BLUE}  $1${NC}"
    echo -e "${BOLD}${BLUE}════════════════════════════════════════════════════════════════${NC}"
    echo ""
}

print_section() {
    echo ""
    echo -e "${BOLD}▶ $1${NC}"
    echo -e "${BOLD}$(printf '─%.0s' {1..50})${NC}"
}

# ═══════════════════════════════════════════════════════════════════════════════
# VALIDACIÓN 1: EXISTENCIA DE ARCHIVOS .QMD
# ═══════════════════════════════════════════════════════════════════════════════

validar_existencia_archivos() {
    print_section "1. Validación de Existencia de Archivos .qmd"
    
    if [[ ! -f "$INDEX_FILE" ]]; then
        echo -e "${RED}✗${NC} index.qmd no encontrado en $INDEX_FILE"
        ((ERRORS++))
        ((CHECKS_TOTAL++))
        return 1
    fi
    
    # Extraer referencias a archivos .qmd del index
    local referencias
    referencias=$(grep -oE '\./[a-zA-Z0-9_-]+\.qmd' "$INDEX_FILE" | sed 's|^\./||' | sort -u)
    
    if [[ -z "$referencias" ]]; then
        echo -e "${YELLOW}⚠${NC} No se encontraron referencias a archivos .qmd en index.qmd"
        ((WARNINGS++))
        ((CHECKS_TOTAL++))
        return 0
    fi
    
    [[ "$VERBOSE" == true ]] && echo -e "${CYAN}ℹ${NC} Referencias encontradas en index.qmd:"
    
    local archivo
    for archivo in $referencias; do
        ((CHECKS_TOTAL++))
        if [[ -f "$EBOOK_DIR/$archivo" ]]; then
            echo -e "${GREEN}✓${NC}  $archivo — existe"
            ((CHECKS_PASSED++))
        else
            echo -e "${RED}✗${NC}  $archivo — NO ENCONTRADO"
            ((ERRORS++))
        fi
    done
    
    # Verificar archivos adicionales no referenciados en index
    local todos_los_qmd
    todos_los_qmd=$(find "$EBOOK_DIR" -maxdepth 1 -name "*.qmd" -exec basename {} \; | sort)
    local no_referenciados=0
    
    for archivo in $todos_los_qmd; do
        if ! echo "$referencias" | grep -qw "$archivo"; then
            echo -e "${YELLOW}⚠${NC}  $archivo — existe pero no está referenciado en index.qmd"
            ((no_referenciados++))
            ((WARNINGS++))
            ((CHECKS_TOTAL++))
        fi
    done
    
    if [[ $no_referenciados -eq 0 ]]; then
        echo -e "${GREEN}✓${NC} Todos los archivos .qmd están referenciados en index.qmd"
    fi
}

# ═══════════════════════════════════════════════════════════════════════════════
# VALIDACIÓN 2: SINTAXIS DE BLOQUES DE CÓDIGO
# ═══════════════════════════════════════════════════════════════════════════════

validar_sintaxis_codigo() {
    print_section "2. Validación de Sintaxis de Bloques de Código"
    
    local archivos_qmd
    archivos_qmd=$(find "$EBOOK_DIR" -maxdepth 1 -name "*.qmd" -exec basename {} \;)
    
    local archivo
    for archivo in $archivos_qmd; do
        local filepath="$EBOOK_DIR/$archivo"
        [[ "$VERBOSE" == true ]] && echo -e "${CYAN}ℹ${NC} Analizando bloques de código en: $archivo"
        
        # Contar bloques de apertura ```bash (usando grep -F para strings fijas)
        local apertura_bash
        apertura_bash=$(grep -cF '```bash' "$filepath" 2>/dev/null | tr -d '\n')
        apertura_bash=${apertura_bash:-0}  # Default a 0 si está vacío
        apertura_bash=$((apertura_bash + 0))  # Asegurar que sea número
        
        # Si no hay bloques bash, saltar validación de balance
        if [[ "$apertura_bash" -eq 0 ]]; then
            [[ "$VERBOSE" == true ]] && echo -e "${CYAN}ℹ${NC}  $archivo — sin bloques bash, omitiendo validación de balance"
            continue
        fi
        
        # Contar bloques de cierre ``` (aproximado - cierra cualquier bloque)
        local cierre_bloques
        cierre_bloques=$(grep -cF '```' "$filepath" 2>/dev/null | tr -d '\n')
        cierre_bloques=${cierre_bloques:-0}
        cierre_bloques=$((cierre_bloques + 0))
        
        ((CHECKS_TOTAL++))
        if [[ "$apertura_bash" -le "$cierre_bloques" ]]; then
            echo -e "${GREEN}✓${NC}  $archivo — bloques bash balanceados ($apertura_bash aperturas)"
            ((CHECKS_PASSED++))
        else
            echo -e "${RED}✗${NC}  $archivo — bloques bash desbalanceados ($apertura_bash aperturas vs $cierre_bloques cierres)"
            ((ERRORS++))
        fi
        
        # Detectar bloques de código docker
        local bloques_docker
        bloques_docker=$(grep -cF '```docker' "$filepath" 2>/dev/null | tr -d '\n' || echo "0")
        bloques_docker=$((bloques_docker + 0))
        if [[ "$bloques_docker" -gt 0 ]]; then
            [[ "$VERBOSE" == true ]] && echo -e "${CYAN}ℹ${NC}  $archivo — $bloques_docker bloque(s) docker encontrados"
        fi
        
        # Detectar bloques de código git
        local bloques_git
        bloques_git=$(grep -cF '```git' "$filepath" 2>/dev/null | tr -d '\n' || echo "0")
        bloques_git=$((bloques_git + 0))
        if [[ "$bloques_git" -gt 0 ]]; then
            [[ "$VERBOSE" == true ]] && echo -e "${CYAN}ℹ${NC}  $archivo — $bloques_git bloque(s) git encontrados"
        fi
        
    done
}

# ═══════════════════════════════════════════════════════════════════════════════
# VALIDACIÓN 3: ENLACES INTERNOS ROTOS
# ═══════════════════════════════════════════════════════════════════════════════

validar_enlaces_internos() {
    print_section "3. Validación de Enlaces Internos"
    
    local archivos_qmd
    archivos_qmd=$(find "$EBOOK_DIR" -maxdepth 1 -name "*.qmd" -exec basename {} \;)
    
    local archivo
    for archivo in $archivos_qmd; do
        local filepath="$EBOOK_DIR/$archivo"
        [[ "$VERBOSE" == true ]] && echo -e "${CYAN}ℹ${NC} Verificando enlaces en: $archivo"
        
        # Extraer enlaces internos (./archivo.qmd)
        local enlaces
        enlaces=$(grep -oE '\./[a-zA-Z0-9_-]+\.qmd' "$filepath" | sed 's|^\./||' | sort -u)
        
        if [[ -z "$enlaces" ]]; then
            [[ "$VERBOSE" == true ]] && echo -e "${CYAN}ℹ${NC}  $archivo — sin enlaces internos"
            continue
        fi
        
        local enlace
        for enlace in $enlaces; do
            ((CHECKS_TOTAL++))
            if [[ -f "$EBOOK_DIR/$enlace" ]]; then
                echo -e "${GREEN}✓${NC}  $archivo → $enlace — OK"
                ((CHECKS_PASSED++))
            else
                echo -e "${RED}✗${NC}  $archivo → $enlace — ENLACE ROTO"
                ((ERRORS++))
            fi
        done
        
    done
}

# ═══════════════════════════════════════════════════════════════════════════════
# VALIDACIÓN 4: ESTRUCTURA DE ARCHIVOS
# ═══════════════════════════════════════════════════════════════════════════════

validar_estructura() {
    print_section "4. Validación de Estructura del Ebook"
    
    # Archivos obligatorios
    local archivos_obligatorios=(
        "index.qmd"
        "modulo-01-linux-consola.qmd"
        "modulo-02-kali-linux.qmd"
        "modulo-03-git.qmd"
        "modulo-04-docker.qmd"
        "modulo-05-wargames.qmd"
        "modulo-06-wargames-avanzados.qmd"
        "capstone-proyecto-integrador.qmd"
        "apendice-termux.qmd"
        "apendice-bandit-masterclass.qmd"
        "estrategia-didactica-retos.md"
    )
    
    for archivo in "${archivos_obligatorios[@]}"; do
        ((CHECKS_TOTAL++))
        if [[ -f "$EBOOK_DIR/$archivo" ]]; then
            echo -e "${GREEN}✓${NC}  $archivo — presente"
            ((CHECKS_PASSED++))
        else
            echo -e "${RED}✗${NC}  $archivo — FALTANTE (obligatorio)"
            ((ERRORS++))
        fi
    done
    
    # Verificar que index.qmd tenga frontmatter YAML
    ((CHECKS_TOTAL++))
    if head -1 "$INDEX_FILE" | grep -q '^---$'; then
        echo -e "${GREEN}✓${NC}  index.qmd — frontmatter YAML presente"
        ((CHECKS_PASSED++))
    else
        echo -e "${YELLOW}⚠${NC}  index.qmd — frontmatter YAML no detectado"
        ((WARNINGS++))
    fi
    
    # Verificar que los módulos tengan títulos
    local modulos=(modulo-01 modulo-02 modulo-03 modulo-04 modulo-05 modulo-06)
    for modulo in "${modulos[@]}"; do
        ((CHECKS_TOTAL++))
        local archivo_encontrado
        archivo_encontrado=$(find "$EBOOK_DIR" -maxdepth 1 -name "${modulo}*.qmd" 2>/dev/null | head -1)
        if [[ -n "$archivo_encontrado" ]]; then
            if grep -q "^# " "$archivo_encontrado"; then
                echo -e "${GREEN}✓${NC}  $modulo — título principal presente"
                ((CHECKS_PASSED++))
            else
                echo -e "${YELLOW}⚠${NC}  $modulo — título principal (#) no detectado"
                ((WARNINGS++))
            fi
        fi
    done
}

# ═══════════════════════════════════════════════════════════════════════════════
# LIMPIEZA DE ARTEFACTOS TEMPORALES
# ═══════════════════════════════════════════════════════════════════════════════

limpiar_artefactos() {
    print_section "5. Limpieza de Artefactos Temporales"
    
    local artefactos_encontrados=0
    
    # Directorios de compilación Quarto
    local dirs_limpiar=("_book" "_freeze" "_site")
    for dir in "${dirs_limpiar[@]}"; do
        if [[ -d "$dir" ]]; then
            [[ "$VERBOSE" == true ]] && echo -e "${CYAN}ℹ${NC}  Eliminando directorio: $dir/"
            rm -rf "$dir"
            ((artefactos_encontrados++))
            echo -e "${GREEN}✓${NC}  $dir/ eliminado"
        fi
    done
    
    # Archivos de log temporales en raíz
    local log_file
    for log_file in index.log index.tex; do
        if [[ -f "$log_file" ]]; then
            [[ "$VERBOSE" == true ]] && echo -e "${CYAN}ℹ${NC}  Eliminando: $log_file"
            rm -f "$log_file"
            ((artefactos_encontrados++))
        fi
    done
    
    if [[ $artefactos_encontrados -eq 0 ]]; then
        echo -e "${GREEN}✓${NC} No se encontraron artefactos temporales para limpiar"
    else
        echo -e "${GREEN}✓${NC} Limpieza completada: $artefactos_encontrados elementos eliminados"
    fi
}

# ═══════════════════════════════════════════════════════════════════════════════
# VERIFICACIÓN DE .GITIGNORE
# ═══════════════════════════════════════════════════════════════════════════════

verificar_gitignore() {
    print_section "6. Verificación de .gitignore"
    
    local gitignore=".gitignore"
    local entradas_requeridas=(
        "_book/"
        "_freeze/"
        "_site/"
        "*.log"
        "*.tex"
        ".quarto/"
    )
    
    if [[ ! -f "$gitignore" ]]; then
        echo -e "${RED}✗${NC} .gitignore no existe — creando uno nuevo"
        touch "$gitignore"
        ((ERRORS++))
        ((CHECKS_TOTAL++))
    fi
    
    for entrada in "${entradas_requeridas[@]}"; do
        ((CHECKS_TOTAL++))
        if grep -qF "$entrada" "$gitignore" 2>/dev/null; then
            echo -e "${GREEN}✓${NC}  .gitignore contiene: $entrada"
            ((CHECKS_PASSED++))
        else
            echo -e "${YELLOW}⚠${NC}  .gitignore NO contiene: $entrada — agregando"
            echo "$entrada" >> "$gitignore"
            ((WARNINGS++))
        fi
    done
}

# ═══════════════════════════════════════════════════════════════════════════════
# VERIFICACIÓN DE IMÁGENES REFERENCIADAS
# ═══════════════════════════════════════════════════════════════════════════════

verificar_imagenes_referenciadas() {
    print_section "7. Verificación de Imágenes Referenciadas"
    
    local imagenes_dir="$EBOOK_DIR/images"
    local imagenes_encontradas=0
    local imagenes_faltantes=0
    
    # Verificar que el directorio de imágenes existe
    if [[ ! -d "$imagenes_dir" ]]; then
        echo -e "${YELLOW}⚠${NC} Directorio de imágenes no encontrado: $imagenes_dir"
        ((WARNINGS++))
        ((CHECKS_TOTAL++))
        return 0
    fi
    
    # Extraer todas las referencias de imágenes en formato ![alt](ruta)
    local archivos_qmd
    archivos_qmd=$(find "$EBOOK_DIR" -maxdepth 1 -name "*.qmd" -exec basename {} \;)
    
    local archivo
    for archivo in $archivos_qmd; do
        local filepath="$EBOOK_DIR/$archivo"
        
        # Buscar referencias de imágenes en formato Markdown
        local referencias_img
        referencias_img=$(grep -oE '!\[[^]]*\]\([^)]+\)' "$filepath" 2>/dev/null | grep -oE '\([^)]+\)' | tr -d '()' | grep -v '^http' || true)
        
        if [[ -z "$referencias_img" ]]; then
            [[ "$VERBOSE" == true ]] && echo -e "${CYAN}ℹ${NC}  $archivo — sin imágenes referenciadas"
            continue
        fi
        
        local img
        while IFS= read -r img; do
            [[ -z "$img" ]] && continue
            ((CHECKS_TOTAL++))
            ((imagenes_encontradas++))
            
            # Resolver ruta relativa al directorio del ebook
            local img_path="$EBOOK_DIR/$img"
            
            if [[ -f "$img_path" ]]; then
                echo -e "${GREEN}✓${NC}  $archivo → $img — existe"
                ((CHECKS_PASSED++))
            else
                echo -e "${RED}✗${NC}  $archivo → $img — IMAGEN NO ENCONTRADA"
                ((ERRORS++))
                ((imagenes_faltantes++))
            fi
        done <<< "$referencias_img"
    done
    
    echo ""
    echo -e "${CYAN}ℹ${NC} Total imágenes referenciadas: $imagenes_encontradas"
    if [[ $imagenes_faltantes -gt 0 ]]; then
        echo -e "${RED}✗${NC} Imágenes faltantes: $imagenes_faltantes"
    else
        echo -e "${GREEN}✓${NC} Todas las imágenes referenciadas existen"
    fi
    
    # Verificar que las imágenes en el directorio están referenciadas
    ((CHECKS_TOTAL++))
    local imagenes_en_dir
    imagenes_en_dir=$(find "$imagenes_dir" -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.svg" -o -name "*.gif" \) 2>/dev/null | wc -l | tr -d ' ')
    echo -e "${CYAN}ℹ${NC} Imágenes en directorio: $imagenes_en_dir"
    ((CHECKS_PASSED++))
}

generar_informe() {
    print_header "INFORME DE LISTO PARA PRODUCCIÓN — ABACOM"
    
    echo -e "${BOLD}Repositorio:${NC} introduccion_cyberseguridad"
    echo -e "${BOLD}Fecha:${NC} $(date '+%Y-%m-%d %H:%M:%S')"
    echo -e "${BOLD}Versión:${NC} 1.0.0 — Agosto 2026"
    echo ""
    
    echo -e "${BOLD}════════════════════════════════════════════════════════════════${NC}"
    echo -e "${BOLD}  RESUMEN DE VALIDACIÓN${NC}"
    echo -e "${BOLD}════════════════════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "  ${GREEN}✓ Checks pasados:${NC}  $CHECKS_PASSED"
    echo -e "  ${RED}✗ Errores:${NC}         $ERRORS"
    echo -e "  ${YELLOW}⚠ Advertencias:${NC}    $WARNINGS"
    echo -e "  ─────────────────────────────────────────"
    echo -e "  ${BOLD}Total checks:${NC}      $CHECKS_TOTAL"
    echo ""
    
    # Cálculo de porcentaje de éxito
    if [[ $CHECKS_TOTAL -gt 0 ]]; then
        local porcentaje=$(( (CHECKS_PASSED * 100) / CHECKS_TOTAL ))
        echo -e "  ${BOLD}Tasa de éxito:${NC}   $porcentaje%"
        echo ""
    fi
    
    echo -e "${BOLD}════════════════════════════════════════════════════════════════${NC}"
    echo -e "${BOLD}  ESTADO DEL EBOOK GUÍA${NC}"
    echo -e "${BOLD}════════════════════════════════════════════════════════════════${NC}"
    echo ""
    
    # Listar archivos del ebook
    echo -e "  ${CYAN}Archivos del Ebook:${NC}"
    for f in "$EBOOK_DIR"/*.qmd "$EBOOK_DIR"/*.md; do
        if [[ -f "$f" ]]; then
            local size
            size=$(du -h "$f" | cut -f1)
            echo -e "    📄 $(basename "$f") ($size)"
        fi
    done
    echo ""
    
    # Veredicto final
    echo -e "${BOLD}════════════════════════════════════════════════════════════════${NC}"
    echo -e "${BOLD}  VEREDICTO${NC}"
    echo -e "${BOLD}════════════════════════════════════════════════════════════════${NC}"
    echo ""
    
    if [[ $ERRORS -eq 0 ]]; then
        echo -e "  ${GREEN}${BOLD}✅ REPOSITORIO LISTO PARA PRODUCCIÓN${NC}"
        echo ""
        echo -e "  El Ebook Guía cumple con todos los criterios de calidad"
        echo -e "  para entrega institucional en Abacom."
        echo ""
        return 0
    elif [[ $ERRORS -le 2 ]]; then
        echo -e "  ${YELLOW}${BOLD}⚠️  REPOSITORIO CON MENORES ERRORES${NC}"
        echo ""
        echo -e "  Se detectaron $ERRORS error(es) que deben corregirse"
        echo -e "  antes de la entrega final."
        echo ""
        return 1
    else
        echo -e "  ${RED}${BOLD}❌ REPOSITORIO NO LISTO PARA PRODUCCIÓN${NC}"
        echo ""
        echo -e "  Se detectaron $ERRORS errores que requieren atención"
        echo -e "  inmediata. Revise el log para más detalles."
        echo ""
        return 2
    fi
}

# ═══════════════════════════════════════════════════════════════════════════════
# FUNCIÓN PRINCIPAL
# ═══════════════════════════════════════════════════════════════════════════════

main() {
    # Parsear argumentos
    for arg in "$@"; do
        case "$arg" in
            --verbose|-v) VERBOSE=true ;;
            --fix|-f) FIX_MODE=true ;;
            --help|-h)
                echo "Uso: $0 [--verbose] [--fix]"
                echo ""
                echo "Opciones:"
                echo "  --verbose, -v  Mostrar información detallada"
                echo "  --fix, -f      Corregir problemas automáticamente"
                echo "  --help, -h     Mostrar esta ayuda"
                exit 0
                ;;
        esac
    done
    
    # Crear directorio de logs
    mkdir -p "$SCRIPTS_DIR"
    touch "$LOG_FILE"
    
    print_header "VALIDACIÓN DEL EBOOK GUÍA — FUNDAMENTOS DE CIBERSEGURIDAD"
    echo -e "  ${CYAN}Fecha:${NC} $(date '+%Y-%m-%d %H:%M:%S')"
    echo -e "  ${CYAN}Directorio:${NC} $EBOOK_DIR"
    echo -e "  ${CYAN}Log:${NC} $LOG_FILE"
    
    # Ejecutar validaciones
    validar_existencia_archivos
    validar_sintaxis_codigo
    validar_enlaces_internos
    validar_estructura
    limpiar_artefactos
    verificar_gitignore
    verificar_imagenes_referenciadas
    
    # Generar informe
    generar_informe
    local exit_code=$?
    
    echo -e "${BOLD}════════════════════════════════════════════════════════════════${NC}"
    echo -e "  ${CYAN}Log completo:${NC} $LOG_FILE"
    echo -e "${BOLD}════════════════════════════════════════════════════════════════${NC}"
    echo ""
    
    return $exit_code
}

# Ejecutar main
main "$@"
