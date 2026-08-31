# Especificación de Laboratorios — Curso ABC-CYB-101: Fundamentos de Ciberseguridad

**Institución:** Abacom Capacitación y Servicios Informáticos  
**Código:** ABC-CYB-101  
**Versión:** 3.0  
**Fecha:** Agosto 2026  
**Responsable:** Diseño Curricular Abacom

---

## 1. Propósito de este documento

Este documento define las **especificaciones técnicas y pedagógicas** de los 5 laboratorios prácticos del curso **Fundamentos de Ciberseguridad (ABC-CYB-101)**. Cada laboratorio está alineado con los objetivos de aprendizaje de su módulo y sigue una estructura de **tiempos, objetivos, prerrequisitos, guión, preguntas de reflexión y solución modelo**.

> **Nota:** En la versión 3.0 se reduce de 16 laboratorios a 5 laboratorios integradores, alineados a la estructura de 5 módulos del brochure oficial. Cada laboratorio es un proyecto integrador que evalúa competencias múltiples del módulo correspondiente.

---

## 2. Filosofía de los laboratorios

Los laboratorios de ABC-CYB-101 v3.0 se diseñaron bajo los siguientes principios:

1. **Alineación curricular:** Cada laboratorio responde a uno o más subtemas del temario del módulo.
2. **Entorno seguro:** Todos los ejercicios se realizan en entornos controlados (máquinas virtuales, entornos de prueba o simuladores).
3. **Progresión didáctica:** Los laboratorios avanzan desde conceptos básicos hacia integración completa.
4. **Reflexión crítica:** Cada laboratorio incluye preguntas de reflexión que conectan la práctica con el contexto organizacional.
5. **Estándares alineados:** Las herramientas y metodologías utilizadas corresponden a estándares reconocidos (NIST, ISO, CompTIA).

---

## 3. Inventario de laboratorios

| # | Laboratorio | Módulo | Duración | Objetivo principal |
|---|-------------|--------|----------|--------------------|
| 1 | Análisis de Incidentes y Mapeo NIST CSF | I | 2 h | Integrar Tríada CIA, gestión de riesgo y NIST CSF 2.0 en un caso práctico. |
| 2 | Diseño de Arquitectura de Defensa Perimetral | II | 2 h | Diseñar arquitectura de red con segmentación, DMZ y reglas de firewall. |
| 3 | Hardening de Sistemas, IAM y MFA | III | 2 h | Aplicar hardening, diseñar modelo RBAC y configurar MFA phishing-resistant. |
| 4 | Análisis de Malware, Criptografía y CVSS | IV | 2 h | Analizar malware, implementar criptografía con OpenSSL y calcular CVSS. |
| 5 | Respuesta a Incidentes e Informe Forense | V | 2 h | Aplicar NIST SP 800-61 y elaborar informe forense estructurado. |

---

## 4. Especificación detallada de laboratorios

### 4.1 Módulo I

#### Laboratorio 1 — Análisis de Incidentes y Mapeo NIST CSF

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Integrar Tríada CIA, gestión de riesgo, clasificación de activos y NIST CSF 2.0.
  - Aplicar los conceptos en un caso integral de incidente de seguridad.
  - Mapear controles a las 6 funciones del CSF 2.0.
- **Prerrequisitos:** Sesiones 1–5 completadas.
- **Materiales:**
  - Informes públicos de incidentes (anonimizados).
  - Plantilla de análisis de incidentes.
  - Tabla de mapeo NIST CSF 2.0.
- **Guión:**
  1. El docente presenta un caso de incidente de seguridad en una organización ficticia.
  2. Los estudiantes, en equipos de 3, analizan el incidente identificando: actor, vector, activos afectados, impacto CIA.
  3. Clasifican los activos según sensibilidad.
  4. Evalúan el riesgo inherente y residual.
  5. Mapean controles aplicables a las 6 funciones del CSF 2.0.
  6. Cada equipo presenta un resumen de 5 minutos.
- **Preguntas de reflexión:**
  - ¿Qué función del NIST CSF 2.0 habría mitigado cada incidente?
  - ¿Cómo afecta el impacto en la disponibilidad a la continuidad del negocio?
  - ¿Por qué el riesgo residual nunca es cero?
- **Solución modelo:** Informe de análisis con identificación de activos, cálculo de riesgo y mapeo de controles a CSF 2.0.

---

### 4.2 Módulo II

#### Laboratorio 2 — Diseño de Arquitectura de Defensa Perimetral

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Diseñar una arquitectura de red con segmentación, DMZ y zonas de seguridad.
  - Configurar reglas de firewall aplicando el principio de menor privilegio.
  - Analizar tráfico de red con Wireshark para validar la arquitectura.
- **Prerrequisitos:** Sesiones 6–9 completadas.
- **Materiales:**
  - Herramienta de diagramación (Draw.io, Lucidchart o papel).
  - Máquina virtual con Wireshark instalado.
  - Archivo .pcapng de tráfico de prueba.
- **Guión:**
  1. Los estudiantes reciben un escenario: empresa con servidores web, base de datos y red interna.
  2. Diseñan una arquitectura con al menos 3 zonas (Internet, DMZ, LAN).
  3. Proporcionan al menos 5 reglas de firewall por zona.
  4. Analizan capturas de tráfico .pcapng para validar que la arquitectura funciona.
  5. Defienden su diseño en una presentación de 5 minutos.
- **Preguntas de reflexión:**
  - ¿Qué ventajas tiene segmentar la red en zonas?
  - ¿Cómo afecta la arquitectura a la capacidad de detección y respuesta?
  - ¿Por qué HTTPS solo protege hasta la capa de transporte?
- **Solución modelo:** Diagrama de arquitectura con reglas de firewall, capturas Wireshark analizadas y justificación técnica.

---

### 4.3 Módulo III

#### Laboratorio 3 — Hardening de Sistemas, IAM y MFA

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Aplicar controles de hardening de CIS Benchmarks.
  - Diseñar e implementar un modelo de roles y permisos (RBAC).
  - Configurar MFA y evaluar resistencia ante ataques de phishing.
- **Prerrequisitos:** Sesiones 11–13 completadas.
- **Materiales:**
  - Máquina virtual Windows 10/11 o Ubuntu.
  - CIS Benchmarks PDF.
  - Herramienta de prueba MFA (Google Authenticator, Azure AD o similar).
- **Guión:**
  1. Los estudiantes reciben una máquina virtual con configuración predeterminada.
  2. Aplican al menos 10 controles de hardening (deshabilitar servicios, configurar auditoría, políticas de passwords).
  3. Diseñan un modelo RBAC con 5 roles organizacionales y lo implementan.
  4. Configuran MFA en un servicio y analizan su resistencia ante phishing.
  5. Documentan el proceso completo.
- **Preguntas de reflexión:**
  - ¿Qué equilibrio existe entre seguridad y usabilidad en el hardening?
  - ¿Por qué el SMS no es considerado MFA phishing-resistant?
  - ¿Qué es el "privilege creep" y cómo se mitiga?
- **Solución modelo:** Informe de hardening con capturas, modelo RBAC documentado y análisis de resistencia MFA.

---

### 4.4 Módulo IV

#### Laboratorio 4 — Análisis de Malware, Criptografía y CVSS

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Analizar comportamiento de malware en entorno aislado.
  - Implementar cifrado simétrico, asimétrico y funciones hash con OpenSSL.
  - Calcular puntuación CVSS e interpretar reportes de escaneo de vulnerabilidades.
- **Prerrequisitos:** Sesiones 17–22 completadas.
- **Materiales:**
  - Sandbox proporcionada por el docente (ANY.RUN o FLARE-VM).
  - Muestras de malware educativo.
  - OpenSSL instalado en máquina virtual Linux.
  - Nessus Essentials instalado.
  - Máquina virtual vulnerable (Metasploitable 2 o DVWA).
- **Guión:**
  1. Los estudiantes reciben una muestra de malware educativo y la ejecutan en la sandbox.
  2. Documentan: familia de malware, persistencia, propagación, IOCs.
  3. Implementan cifrado AES-256-CBC y RSA-2048 con OpenSSL.
  4. Generan y verifican hash SHA-256.
  5. Ejecutan escaneo de vulnerabilidades con Nessus Essentials.
  6. Seleccionan 3 vulnerabilidades críticas y calculan su puntuación CVSS Base.
  7. Proponen un plan de remediación priorizado.
- **Preguntas de reflexión:**
  - ¿Qué técnicas de evasión utiliza el malware analizado?
  - ¿Por qué no se recomienda reutilizar claves en diferentes sistemas?
  - ¿Por qué CVSS Base no incluye el contexto ambiental?
- **Solución modelo:** Informe de análisis de malware, secuencia de comandos OpenSSL, informe de escaneo con cálculos CVSS y plan de remediación.
- **Advertencia:** Este laboratorio se realiza en entorno aislado. Las muestras de malware son educativas y no representan riesgo para sistemas productivos.

---

### 4.5 Módulo V

#### Laboratorio 5 — Respuesta a Incidentes e Informe Forense

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Aplicar NIST SP 800-61 en un incidente simulado.
  - Elaborar un informe forense estructurado.
  - Integrar conocimientos de todos los módulos en un escenario completo.
- **Prerrequisitos:** Sesiones 23–28 completadas.
- **Materiales:**
  - Escenario de incidente simulado (ransomware, exfiltración de datos o similar).
  - Logs de sistema y red proporcionados por el docente.
  - Plantilla de informe forense NIST SP 800-61.
- **Guión:**
  1. Los estudiantes reciben un escenario de incidente completo.
  2. Aplican las fases de NIST SP 800-61: Preparación, Detección y Análisis, Contención, Erradicación, Recuperación, Lecciones Aprendidas.
  3. Analizan logs de sistema y red.
  4. Elaboran un informe forense estructurado.
  5. Proponen controles correctivos y preventivos integrando conocimientos de todos los módulos.
- **Preguntas de reflexión:**
  - ¿Qué lección aprendida es más relevante para evitar la repetición del incidente?
  - ¿Cómo afecta el tiempo de respuesta al impacto final del incidente?
  - ¿Cómo se relacionan los controles de los Módulos II, III y IV en un incidente real?
- **Solución modelo:** Informe forense completo con fases NIST SP 800-61, análisis de logs y controles propuestos.

---

## 5. Especificaciones técnicas de entorno

### 5.1 Requisitos de hardware

| Componente | Mínimo | Recomendado |
|------------|--------|-------------|
| **CPU** | 4 núcleos | 8 núcleos |
| **RAM** | 16 GB | 32 GB |
| **Almacenamiento** | 100 GB libres (SSD) | 250 GB libres (SSD) |
| **Red** | Adaptador virtual (Host-Only) | Adaptador virtual (Host-Only + NAT) |

### 5.2 Software base

| Software | Versión | Uso |
|----------|---------|-----|
| **VirtualBox** o **VMware** | 6.1+ / 16+ | Entorno de laboratorio |
| **Kali Linux** | 2024.x | Máquina atacante |
| **Ubuntu Server** | 22.04 LTS | Máquina objetivo |
| **Windows 10/11** | 22H2+ | Máquina objetivo (endpoint) |
| **Wireshark** | 4.x | Análisis de tráfico |
| **OpenSSL** | 3.x | Prácticas de criptografía |
| **Nessus Essentials** | Última versión | Escaneo de vulnerabilidades |
| **Suricata** | 6.x / Snort 3.x | Detección de intrusiones |
| **Metasploitable 2** o **DVWA** | — | Máquina vulnerable objetivo |

### 5.3 Consideraciones de seguridad

- Todos los laboratorios se realizan en **redes aisladas** (Host-Only o NAT privado).
- Las muestras de malware son **educativas** y se ejecutan únicamente en entornos controlados.
- Se prohíbe el uso de herramientas de ataque contra sistemas fuera del entorno de laboratorio.
- Los estudiantes deben firmar un **acuerdo de uso responsable** antes de acceder al entorno de laboratorio.

---

## 6. Política de entrega de laboratorios

1. Cada laboratorio se entrega en el **LMS de Abacom** en la fecha indicada.
2. El informe debe incluir: introducción, procedimiento, hallazgos, reflexión y conclusiones.
3. Se aplicará un **descuento del 10 %** por día de retraso.
4. Después de 3 días de retraso, el laboratorio no será aceptado.

---

## 7. Historial de versiones

| Versión | Fecha | Cambios |
|---------|-------|---------|
| 3.0 | Agosto 2026 | Reducción de 16 a 5 laboratorios integradores alineados a estructura de 5 módulos del brochure. |
| 2.1 | Agosto 2026 | Actualización de entornos de laboratorio y especificaciones técnicas. |
| 2.0 | Agosto 2026 | Versión base validada con estructura de 5 módulos / 16 laboratorios / 32 h. |
