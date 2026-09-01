# CHANGELOG — Ebook Guía: Fundamentos de Ciberseguridad

Registro de cambios del Ebook Guía preparatorio para el curso Fundamentos de Ciberseguridad (Agosto 2026).

---

## [1.2.0] — Septiembre 2026

### 🔧 Corrección de Compliance Técnico

Correcciones derivadas de la Auditoría de Compliance Técnico para entrega institucional SETEC-CAL-2019-0183.

#### P0 — Control de Versiones (Crítico)

- **`.gitignore`**: Agregada excepción `!content/ebook-guia/images/**` para rastrear recursos visuales del ebook
- **Imágenes indexadas**: 10 imágenes CC0/CC-BY-SA ahora forman parte del repositorio Git
- **Commit**: `fix(images): corrige reglas en .gitignore para rastrear recursos visuales del ebook`

#### P1 — Integración Normativa

- **NIST SP 800-61**: Sección completa agregada al Módulo 6 con:
  - Las 4 fases de respuesta a incidentes (Preparación, Detección/Análisis, Contención/Erradicación/Recuperación, Post-Incidente)
  - Diagrama de ciclo de vida del incidente
  - Conexión explícita con el Capstone Project
- **ISO 31000**: Callouts agregados en módulos 1, 3 y 6:
  - Módulo 1: Gestión de riesgos en permisos de archivos (principio de menor privilegio)
  - Módulo 3: Gestión de riesgos en control de versiones (protección de secretos)
  - Módulo 6: Gestión de riesgos en respuesta a incidentes (protección de activos)
- **Commit**: `feat(normative): integra NIST SP 800-61 e ISO 31000 en módulos del ebook`

#### P2 — Validación Automatizada

- **Script `validar-ebook.sh`**: Nueva función `verificar_imagenes_referenciadas()` que:
  - Detecta imágenes referenciadas en bloques `![alt](ruta)` de archivos Markdown
  - Verifica existencia física de cada imagen referenciada
  - Cuenta imágenes en directorio vs referenciadas
- **Commit**: `feat(validation): agrega verificación de imágenes referenciadas al script`

#### Resultados de Validación

| Métrica | Valor |
|---------|-------|
| Checks pasados | 77/82 |
| Errores | 0 |
| Advertencias | 5 (módulos no referenciados directamente en index) |
| Tasa de éxito | 93% |
| Estado | ✅ LISTO PARA PRODUCCIÓN |

---

## [1.1.0] — Septiembre 2026

### 🎨 Enriquecimiento Visual

Integración de imágenes con licencia libre (CC0/CC-BY-SA) de Wikimedia Commons para mejorar la experiencia visual del estudiante.

#### Imágenes Integradas (10)

| Archivo | Módulo | Licencia | Fuente |
|---------|--------|----------|--------|
| `cybersecurity-overview.png` | General/Intro | CC0 (Pixabay) | Wikimedia Commons |
| `tux.svg` | Módulo 1 (Linux) + Apéndice Termux | CC0 | Wikimedia Commons |
| `kali-linux.svg` | Módulo 2 (Kali) | Dominio Público | Wikimedia Commons |
| `git-workflow.svg` | Módulo 3 (Git) | CC-BY-SA 3.0 | Wikimedia Commons (hashar) |
| `docker-arquitetura.png` | Módulo 4 (Docker) | CC0 | Wikimedia Commons |
| `hacker-terminal.jpg` | Módulo 5 (Wargames) + Apéndice Bandit | CC0 (Pixabay) | Wikimedia Commons |
| `network-diagram.png` | Módulo 6 (Avanzado) | CC-BY-SA 3.0 | Wikimedia Commons (SilverStar) |
| `nist-framework.png` | General/NIST | CC-BY-SA 3.0 | Wikimedia Commons |
| `risk-management-framework.svg` | General/NIST | CC0 | Wikimedia Commons |
| `containers.svg` | Módulo 4 (Docker) | CC0 | Wikimedia Commons |

#### Documentación

- `content/ebook-guia/images/ATRIBUCION.md` — Documento completo de atribuciones y licencias
- Imágenes insertadas en: index.qmd, módulos 01-06, apéndice-termux.qmd, apendice-bandit-masterclass.qmd

---

## [1.0.0] — Agosto 2026

### 🎉 Release Inicial

Primera versión estable del Ebook Guía, listo para entrega institucional en Abacom.

---

### 📚 Contenido

#### Módulos Preparatorios (6)

| Módulo | Título | Descripción |
|--------|--------|-------------|
| 01 | Fundamentos de Sistemas Operativos y Consola | Linux básico, navegación, permisos, gestión de usuarios. Incluye sección de GOVERN (NIST CSF 2.0) |
| 02 | Introducción a Kali Linux | Distribución de seguridad, herramientas esenciales, alineación con IDENTIFY (NIST CSF 2.0) |
| 03 | Introducción a Git | Control de versiones, commits, ramas, flujo profesional. Alineado a PROTECT (NIST CSF 2.0) |
| 04 | Introducción a Docker | Contenedores, imágenes, Dockerfiles. Alineado a PROTECT (NIST CSF 2.0) |
| 05 | Wargames — OverTheWire Bandit (Niveles 0-5) | Retos prácticos introductorios. Alineado a IDENTIFY (NIST CSF 2.0) |
| 06 | Wargames Avanzados — Bandit (Niveles 6-10) | Búsqueda avanzada, filtrado, análisis de datos. Incluye sección RESPOND (NIST CSF 2.0) |

#### Proyecto Integrador

| Componente | Descripción |
|------------|-------------|
| **Capstone: El Incidente en Abacom S.A.** | Proyecto final integrador que simula un incidente de seguridad real. 4 fases: Auditoría → Inspección → Documentación → Reporte NIST |

#### Apéndices Especializados

| Apéndice | Descripción |
|----------|-------------|
| **Bandit Masterclass** | Guía definitiva de wargames: conexión multi-entorno (Linux, Kali, Termux, Windows), estrategias por categoría, documentación forense, troubleshooting |
| **Termux: Linux en Android** | Guía completa para estudiantes móviles: instalación, PRoot-Distro, SSH, persistencia con tmux |

#### Estrategia Didáctica

| Componente | Descripción |
|------------|-------------|
| **Mini-escenarios** | 6 minijuegos de 10 minutos integrados en los módulos |
| **Sistema de Badges** | 6 badges por módulo + 1 badge integrador ("Fundamentos Listo") con triple validación (auto/peer/facilitador) |
| **Protocolo de Frustración** | Metodología PAUSA→RESPIRAR→REFORMULAR→REDUCIR→REGISTRAR→RETOMAR |
| **Rúbrica de Evaluación** | 40% Dominio Técnico + 30% Rigor Documental Git + 30% Seguridad/NIST (100 pts) |

---

### 🔒 Alineación NIST CSF 2.0

| Función NIST | Módulos | Categorías |
|--------------|---------|------------|
| **PROTECT** | 1, 3, 4 | PR.AC, PR.PT, PR.DS, PR.IP |
| **IDENTIFY** | 2, 5 | ID.RA, ID.SC, ID.AM |
| **DETECT** | 6 | DE.CM, DE.AE |
| **GOVERN** | 1 | GV.OC |
| **RESPOND** | 6 | RS.MA, RS.AN, RS.CO |
| **RECOVER** | Curso principal | — |

---

### 🛠️ Infraestructura Técnica

#### Validación y Calidad

- **Script de validación automatizada** (`scripts/validar-ebook.sh`):
  - Verificación de existencia de archivos .qmd
  - Validación de sintaxis de bloques de código (Bash, Docker, Git)
  - Detección de enlaces rotos internos
  - Verificación de estructura obligatoria
  - Limpieza de artefactos de compilación
  - Verificación de .gitignore

#### Control de Versiones

- **`.gitignore` actualizado** para excluir:
  - `_book/`, `_freeze/`, `_site/` (outputs Quarto)
  - `*.log`, `*.tex` (archivos temporales de compilación)
  - `.quarto/` (caché de Quarto)

---

### 📊 Métricas del Ebook

| Métrica | Valor |
|---------|-------|
| Total de archivos .qmd | 10 |
| Total de archivos de contenido | 11 |
| Líneas de código (aprox.) | 3,608+ |
| Funciones NIST CSF 2.0 cubiertas | 6/6 |
| Módulos preparatorios | 6 |
| Apéndices especializados | 2 |
| Mini-escenarios didácticos | 6 |
| Badges de certificación | 7 |

---

### 🎓 Información del Curso

| Campo | Valor |
|-------|-------|
| **Curso** | Fundamentos de Ciberseguridad |
| **Período** | Agosto 2026 |
| **Facilitador** | Diego Medardo Saavedra García |
| **Institución** | Abacom |
| **Certificación** | SETEC/Abacom |

---

### 📝 Convenciones de Versionado

Este proyecto sigue [Semantic Versioning](https://semver.org/):

- **MAJOR**: Cambios incompatibles en estructura o contenido
- **MINOR**: Nuevo contenido o funcionalidad compatible
- **PATCH**: Correcciones menores, typos, ajustes de formato

---

### 🔄 Historial de Cambios

#### [1.0.0] — 2026-08-31
- ✅ Estructura completa de 6 módulos
- ✅ Proyecto Capstone integrador
- ✅ Apéndice Termux para móviles
- ✅ Apéndice Bandit Masterclass
- ✅ Estrategia didáctica con mini-escenarios y badges
- ✅ Alineación completa con NIST CSF 2.0
- ✅ Script de validación automatizada
- ✅ CHANGELOG inicial

---

> **"La ciberseguridad no se aprende memorizando, se aprende rompiendo cosas y arreglándolas. Bienvenido al laboratorio."**
> — Diego Saavedra, Abacom
