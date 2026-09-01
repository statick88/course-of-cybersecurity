#!/usr/bin/env bash
#===============================================================================
# SCRIPT DE DESCARGA DE IMÁGENES — EBOOK GUÍA FUNDAMENTOS DE CIBERSEGURIDAD
# Versión: 1.0.0 — Agosto 2026
#
# Propósito: Descargar imágenes CC0/CC-BY de Wikimedia Commons para enriquecer
# visualmente el Ebook Guía. Todas las imágenes son de dominio público o con
# licencia Creative Commons Attribution.
#
# Uso: bash scripts/descargar-imagenes.sh
#===============================================================================

set -uo pipefail

IMAGES_DIR="content/ebook-guia/images"
LOG_FILE="scripts/descarga-imagenes-$(date +%Y%m%d-%H%M%S).log"

# Crear directorio de imágenes
mkdir -p "$IMAGES_DIR"

# Colores
GREEN='\033[0;32m'
RED='\033[0;31m'
CYAN='\033[0;36m'
NC='\033[0m'

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" >> "$LOG_FILE"
    echo -e "$*"
}

descargar_imagen() {
    local nombre_archivo="$1"
    local url="$2"
    local descripcion="$3"
    
    log "${CYAN}Descargando:${NC} $descripcion"
    log "  Archivo: $nombre_archivo"
    log "  URL: $url"
    
    if curl -fsSL "$url" -o "$IMAGES_DIR/$nombre_archivo" 2>/dev/null; then
        local size
        size=$(du -h "$IMAGES_DIR/$nombre_archivo" | cut -f1)
        log "${GREEN}✓${NC} Descargado exitosamente ($size)"
        return 0
    else
        log "${RED}✗${NC} Error al descargar"
        return 1
    fi
}

log "════════════════════════════════════════════════════════════════"
log "  DESCARGA DE IMÁGENES — EBOOK GUÍA"
log "════════════════════════════════════════════════════════════════"
log ""

# ─── MÓDULO 1: Linux y Consola ──────────────────────────────────────────────
# Gnome Terminal - CC0
descargar_imagen "linux-terminal-gnome.png" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Gnome_Terminal_bash_command_line.png/1280px-Gnome_Terminal_bash_command_line.png" \
    "Terminal Linux (Gnome Terminal — CC0 Wikimedia Commons)"

# ─── MÓDULO 2: Kali Linux ──────────────────────────────────────────────────
# Kali Linux Logo/Interface - usando imagen genérica de seguridad
descargar_imagen "kali-linux-security.png" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Kali_Linux_2.0_wordmark.svg/1280px-Kali_Linux_2.0_wordmark.svg.png" \
    "Kali Linux Security Distribution (CC BY-SA Wikimedia Commons)"

# ─── MÓDULO 3: Git ─────────────────────────────────────────────────────────
# Git Workflow Diagram - CC0
descargar_imagen "git-workflow-diagram.svg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/GitWorkflow.svg/1280px-GitWorkflow.svg.png" \
    "Git Workflow Diagram (CC0 Wikimedia Commons)"

# ─── MÓDULO 4: Docker ──────────────────────────────────────────────────────
# Docker Architecture - CC0
descargar_imagen "docker-architecture.png" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Containers.svg/1280px-Containers.svg.png" \
    "Docker Container Architecture (CC0 Wikimedia Commons)"

# ─── MÓDULO 5: Wargames (Bandit) ───────────────────────────────────────────
# Terminal/Hacking representation
descargar_imagen "wargames-terminal.png" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Tux.svg/1280px-Tux.svg.png" \
    "Tux — Linux Mascot for Wargames (CC0 Wikimedia Commons)"

# ─── MÓDULO 6: Wargames Avanzados ──────────────────────────────────────────
# Cybersecurity/Network diagram
descargar_imagen "network-security.svg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Network_diagram_-_subnets_%28ru%29.svg/1280px-Network_diagram_-_subnets_%28ru%29.svg.png" \
    "Network Security Diagram (CC0 Wikimedia Commons)"

# ─── APÉNDICE: Termux ──────────────────────────────────────────────────────
# Mobile terminal representation
descargar_imagen "termux-mobile.png" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Android_robot_%282019%29.svg/1280px-Android_robot_%282019%29.svg.png" \
    "Android Robot — Termux Mobile (CC0 Wikimedia Commons)"

# ─── APÉNDICE: Bandit Masterclass ──────────────────────────────────────────
# Advanced terminal/CTF
descargar_imagen "bandit-masterclass.png" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Gnome_Terminal_bash_command_line.png/1280px-Gnome_Terminal_bash_command_line.png" \
    "Advanced Terminal for Bandit Masterclass (CC0 Wikimedia Commons)"

# ─── NIST CSF 2.0 ──────────────────────────────────────────────────────────
# NIST Framework
descargar_imagen "nist-csf-framework.svg" \
    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/NIST_Cybersecurity_Framework_logo.svg/1280px-NIST_Cybersecurity_Framework_logo.svg.png" \
    "NIST Cybersecurity Framework (CC0 Wikimedia Commons)"

log ""
log "════════════════════════════════════════════════════════════════"
log "  DESCARGA COMPLETADA"
log "════════════════════════════════════════════════════════════════"
log ""
log "Imágenes descargadas en: $IMAGES_DIR/"
log "Log: $LOG_FILE"
log ""

# Mostrar resumen
log "Resumen de imágenes:"
ls -1 "$IMAGES_DIR/" 2>/dev/null | while read -r img; do
    local size
    size=$(du -h "$IMAGES_DIR/$img" 2>/dev/null | cut -f1)
    log "  📷 $img ($size)"
done
