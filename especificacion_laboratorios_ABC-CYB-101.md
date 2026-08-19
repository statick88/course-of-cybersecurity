# Especificación de Laboratorios — Curso ABC-CYB-101: Fundamentos de Ciberseguridad

**Institución:** Abacom Capacitación y Servicios Informáticos  
**Código:** ABC-CYB-101  
**Versión:** 2.1  
**Fecha:** Agosto 2026  
**Responsable:** Diseño Curricular Abacom  

---

## 1. Propósito de este documento

Este documento define las **especificaciones técnicas y pedagógicas** de los 16 laboratorios prácticos del curso **Fundamentos de Ciberseguridad (ABC-CYB-101)**. Cada laboratorio está alineado con los objetivos de aprendizaje de su módulo y sigue una estructura de **tiempos, objetivos, prerrequisitos, guión, preguntas de reflexión y solución modelo**.

---

## 2. Filosofía de los laboratorios

Los laboratorios de ABC-CYB-101 se diseñaron bajo los siguientes principios:

1. **Alineación curricular:** Cada laboratorio responde a uno o más subtemas del temario.
2. **Entorno seguro:** Todos los ejercicios se realizan en entornos controlados (máquinas virtuales, entornos de prueba o simuladores).
3. **Progresión didáctica:** Los laboratorios avanzan desde conceptos básicos (captura de tráfico) hacia integración (diseño de arquitectura completa).
4. **Reflexión crítica:** Cada laboratorio incluye preguntas de reflexión que conectan la práctica con el contexto organizacional.
5. **Estándares alineados:** Las herramientas y metodologías utilizadas corresponden a estándares reconocidos (NIST, ISO, CompTIA).

---

## 3. Inventario de laboratorios

### Módulo I — Introducción a la Ciberseguridad

| # | Laboratorio | Sesiones | Duración | Objetivo principal |
|---|-------------|----------|----------|--------------------|
| 1 | Análisis de incidentes de ciberseguridad | 1–2 | 2 h | Identificar actores, vectores y impacto de incidentes reales. |
| 2 | Evaluación de riesgos con matriz ISO 31000 | 3–4 | 2 h | Aplicar la matriz de probabilidad/impacto a escenarios organizacionales. |
| 3 | Clasificación de activos y alineación con NIST CSF 2.0 | 4–5 | 2 h | Clasificar activos y mapear controles a las funciones del CSF 2.0. |

### Módulo II — Seguridad en Redes y Controles Perimetrales

| # | Laboratorio | Sesiones | Duración | Objetivo principal |
|---|-------------|----------|----------|--------------------|
| 4 | Análisis de tráfico con Wireshark | 7–8 | 2 h | Capturar e interpretar protocolos de red en busca de anomalías. |
| 5 | Configuración de reglas de firewall (iptables / Windows Defender Firewall) | 8–9 | 2 h | Diseñar e implementar reglas de filtrado aplicando menor privilegio. |
| 6 | Detección de intrusiones con Suricata / Snort | 9–10 | 2 h | Configurar reglas IDS y analizar alertas generadas. |
| 7 | Diseño de arquitectura de defensa perimetral | 10–11 | 2 h | Diseñar una arquitectura completa con segmentación, DMZ y zonas de seguridad. |

### Módulo III — Gestión de Identidades y Hardening

| # | Laboratorio | Sesiones | Duración | Objetivo principal |
|---|-------------|----------|----------|--------------------|
| 8 | Hardening de sistemas operativos (CIS Benchmarks) | 13–14 | 2 h | Aplicar controles de hardening sobre sistemas operativos. |
| 9 | Implementación de IAM y roles (RBAC) | 14–15 | 2 h | Diseñar e implementar un modelo de roles y permisos. |
| 10 | Configuración de MFA y políticas de passwords | 15–16 | 2 h | Implementar MFA y evaluar resistencia ante ataques de robo de credenciales. |
| 11 | Análisis de políticas de seguridad y cumplimiento ISO 27001 | 16–17 | 2 h | Evaluar el estado de cumplimiento de un conjunto de controles ISO 27001:2022. |

### Módulo IV — Amenazas, Criptografía y Gestión de Vulnerabilidades

| # | Laboratorio | Sesiones | Duración | Objetivo principal |
|---|-------------|----------|----------|--------------------|
| 12 | Análisis de malware en sandbox (ejecución controlada) | 19–20 | 2 h | Analizar comportamiento de malware en entorno aislado. |
| 13 | Prácticas de criptografía con OpenSSL | 21–22 | 2 h | Implementar cifrado simétrico, asimétrico y funciones hash. |
| 14 | Cálculo de CVSS v3.1 y análisis de vulnerabilidades con Nessus Essentials | 22–23 | 2 h | Calcular puntuación CVSS e interpretar reportes de escaneo. |
| 15 | Laboratorio práctico integrador Módulo IV | 23–24 | 2 h | Integrar conocimientos de malware, criptografía y CVSS en un escenario unificado. |

### Módulo V — Respuesta a Incidentes y Recuperación

| # | Laboratorio | Sesiones | Duración | Objetivo principal |
|---|-------------|----------|----------|--------------------|
| 16 | Respuesta a incidentes simulados y elaboración de informe forense | 25–28 | 2 h | Aplicar NIST SP 800-61 para responder a un incidente simulado. |

---

## 4. Especificación detallada de laboratorios

### 4.1 Módulo I

#### Laboratorio 1 — Análisis de incidentes de ciberseguridad

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Identificar actores, vectores de ataque e impacto en incidentes reales.
  - Aplicar la Tríada CIA para evaluar consecuencias.
  - Relacionar incidentes con controles del NIST CSF 2.0.
- **Prerrequisitos:** Sesiones 1–2 completadas.
- **Materiales:**
  - Informes públicos de incidentes (verdadera lista proporcionada por el docente).
  - Plantilla de análisis de incidentes.
- **Guión:**
  1. El docente presenta 3 informes de incidentes reales (anonimizados).
  2. Los estudiantes, en equipos de 3, analizan cada incidente identificando: actor, vector, activos afectados, impacto CIA, controles aplicables.
  3. Cada equipo presenta un resumen de 5 minutos.
- **Preguntas de reflexión:**
  - ¿Qué función del NIST CSF 2.0 habría mitigado cada incidente?
  - ¿Cómo afecta el impacto en la disponibilidad a la continuidad del negocio?
- **Solución modelo:** Guía de respuestas proporcionada por el docente con referencias a informes públicos.

---

#### Laboratorio 2 — Evaluación de riesgos con matriz ISO 31000

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Aplicar la matriz de probabilidad/impacto de ISO 31000.
  - Calcular riesgo inherente y riesgo residual.
  - Proponer tratamientos de riesgo (aceptar, mitigar, transferir, evitar).
- **Prerrequisitos:** Sesiones 3–4 completadas.
- **Materiales:**
  - Matriz de riesgo ISO 31000 (plantilla).
  - Escenario de una PyME con 5 activos críticos.
- **Guión:**
  1. Los estudiantes reciben un escenario detallado de una PyME.
  2. Deben identificar activos, amenazas y controles existentes.
  3. Aplican la matriz ISO 31000 para calcular riesgo inherente y residual.
  4. Proponen un tratamiento de riesgo para cada activo.
- **Preguntas de reflexión:**
  - ¿Por qué el riesgo residual nunca es cero?
  - ¿Cómo justificaría al directorio la inversión en controles de seguridad?
- **Solución modelo:** Matriz completa con justificaciones técnicas y referencia a ISO 31000.

---

#### Laboratorio 3 — Clasificación de activos y alineación con NIST CSF 2.0

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Clasificar activos según criticidad y tipo.
  - Mapear controles de seguridad a las 6 funciones del NIST CSF 2.0.
  - Evaluar brechas entre controles actuales y deseados.
- **Prerrequisitos:** Sesiones 4–5 completadas.
- **Materiales:**
  - Inventario de activos de una organización ficticia.
  - Tabla de mapeo NIST CSF 2.0.
- **Guión:**
  1. Los estudiantes clasifican 15 activos según criticidad (alta/media/baja) y tipo (información, software, hardware, personal).
  2. Mapean cada activo a las funciones del CSF 2.0 (Gobernar, Identificar, Proteger, Detectar, Responder, Recuperar).
  3. Identifican brechas y proponen controles adicionales.
- **Preguntas de reflexión:**
  - ¿Cómo evoluciona la clasificación de activos cuando la organización crece?
  - ¿Qué función del CSF 2.0 es más difícil de implementar y por qué?
- **Solución modelo:** Tabla de clasificación y mapeo completo con justificación.

---

### 4.2 Módulo II

#### Laboratorio 4 — Análisis de tráfico con Wireshark

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Capturar tráfico de red en una máquina virtual.
  - Identificar protocolos HTTP, DNS, TCP y SSH.
  - Detectar patrones sospechosos (p. ej., consultas DNS excesivas).
- **Prerrequisitos:** Sesiones 7–8 completadas.
- **Materiales:**
  - Máquina virtual con Kali Linux o Ubuntu.
  - Wireshark instalado.
  - Archivo .pcapng de tráfico de prueba (proporcionado por el docente).
- **Guión:**
  1. Los estudiantes capturan tráfico mientras navegan por sitios web y ejecutan consultas DNS.
  2. Abren el archivo .pcapng en Wireshark y aplican filtros.
  3. Identifican protocolos, IPs y puertos involucrados.
  4. Documentan hallazgos en un informe breve.
- **Preguntas de reflexión:**
  - ¿Qué información sensible puede exponerse en tráfico HTTP no cifrado?
  - ¿Cómo detectaría una exfiltración de datos en una captura?
- **Solución modelo:** Informe modelo con capturas de pantalla anotadas.

---

#### Laboratorio 5 — Configuración de reglas de firewall

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Diseñar reglas de filtrado aplicando el principio de menor privilegio.
  - Implementar reglas en iptables o Windows Defender Firewall.
  - Probar la efectividad de las reglas con escaneos Nmap.
- **Prerrequisitos:** Sesiones 8–9 completadas.
- **Materiales:**
  - Máquina virtual Linux con iptables o Windows con Defender Firewall.
  - Nmap instalado en máquina atacante.
- **Guión:**
  1. Los estudiantes reciben un escenario de red con servicios específicos (SSH, HTTP, HTTPS, DNS).
  2. Diseñan reglas de firewall que permitan solo el tráfico necesario.
  3. Implementan las reglas y verifican conectividad.
  4. Ejecutan Nmap desde otra VM para validar que los puertos innecesarios estén cerrados.
- **Preguntas de reflexión:**
  - ¿Qué riesgos implica permitir tráfico SSH desde cualquier IP?
  - ¿Cómo afecta una regla mal configurada a la disponibilidad del servicio?
- **Solución modelo:** Conjunto de reglas validadas con explicación de cada criterio.

---

#### Laboratorio 6 — Detección de intrusiones con Suricata / Snort

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Configurar reglas IDS para detectar escaneos de puertos.
  - Analizar alertas generadas por Suricata o Snort.
  - Diferenciar verdaderos positivos (TP) de falsos positivos (FP).
- **Prerrequisitos:** Sesiones 9–10 completadas.
- **Materiales:**
  - Suricata o Snort instalado en máquina virtual.
  - Reglas de prueba proporcionadas por el docente.
  - Tráfico de prueba (p. ej., Nmap scan).
- **Guión:**
  1. Los estudiantes instalan y configuran Suricata/Snort.
  2. Cargan reglas de detección de escaneo de puertos.
  3. Ejecutan Nmap desde otra VM y analizan las alertas generadas.
  4. Clasifican cada alerta como TP o FP y proponen ajustes de regla.
- **Preguntas de reflexión:**
  - ¿Por qué los falsos positivos son un problema en entornos productivos?
  - ¿Cómo ajustaría una regla para reducir falsos positivos sin perder detección?
- **Solución modelo:** Lista de alertas clasificadas con ajustes de regla propuestos.

---

#### Laboratorio 7 — Diseño de arquitectura de defensa perimetral

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Diseñar una arquitectura de red con segmentación, DMZ y zonas de seguridad.
  - Proporcionar reglas de firewall por zona.
  - Justificar decisiones de diseño aplicando principio de menor privilegio.
- **Prerrequisitos:** Sesiones 10–11 completadas.
- **Materiales:**
  - Herramienta de diagramación (Draw.io, Lucidchart o papel).
  - Plantilla de arquitectura de red.
- **Guión:**
  1. Los estudiantes reciben un escenario: empresa con servidores web, base de datos y red interna.
  2. Diseñan una arquitectura con al menos 3 zonas (Internet, DMZ, LAN).
  3. Proporcionan al menos 5 reglas de firewall por zona.
  4. Defienden su diseño en una presentación de 5 minutos.
- **Preguntas de reflexión:**
  - ¿Qué ventajas tiene segmentar la red en zonas?
  - ¿Cómo afecta la arquitectura a la capacidad de detección y respuesta?
- **Solución modelo:** Diagrama de arquitectura con reglas de firewall y justificación.

---

### 4.3 Módulo III

#### Laboratorio 8 — Hardening de sistemas operativos (CIS Benchmarks)

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Aplicar controles de hardening de CIS Benchmarks.
  - Verificar el cumplimiento de controles.
  - Documentar el proceso de hardening.
- **Prerrequisitos:** Sesiones 13–14 completadas.
- **Materiales:**
  - Máquina virtual Windows 10/11 o Ubuntu.
  - CIS Benchmarks PDF (proporcionado por el docente).
  - Scripts de verificación proporcionados por el docente.
- **Guión:**
  1. Los estudiantes reciben una máquina virtual con configuración predeterminada.
  2. Aplican al menos 10 controles de hardening (p. ej., deshabilitar servicios innecesarios, configurar auditoría, establecer políticas de passwords).
  3. Ejecutan scripts de verificación y documentan el estado antes/después.
- **Preguntas de reflexión:**
  - ¿Qué equilibrio existe entre seguridad y usabilidad en el hardening?
  - ¿Por qué es importante documentar el proceso de hardening?
- **Solución modelo:** Informe de hardening con capturas de pantalla y verificación de controles.

---

#### Laboratorio 9 — Implementación de IAM y roles (RBAC)

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Diseñar un modelo de roles y permisos (RBAC).
  - Implementar roles en un sistema operativo o aplicación.
  - Evaluar la efectividad del modelo.
- **Prerrequisitos:** Sesiones 14–15 completadas.
- **Materiales:**
  - Máquina virtual Linux con sudo o Windows con grupos locales.
  - Escenario organizacional proporcionado por el docente.
- **Guión:**
  1. Los estudiantes reciben un escenario con 5 roles organizacionales (administrador, desarrollador, analista, auditor, invitado).
  2. Diseñan un modelo RBAC con permisos específicos por rol.
  3. Implementan los roles en el sistema operativo.
  4. Verifican que cada rol solo pueda ejecutar las acciones permitidas.
- **Preguntas de reflexión:**
  - ¿Qué riesgos implica otorgar permisos excesivos a un rol?
  - ¿Cómo escalaría el modelo RBAC en una organización de 500 usuarios?
- **Solución modelo:** Modelo RBAC documentado con matriz de permisos y verificación.

---

#### Laboratorio 10 — Configuración de MFA y políticas de passwords

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Configurar MFA en un servicio o aplicación.
  - Evaluar la resistencia de MFA ante ataques de robo de credenciales.
  - Diseñar políticas de passwords alineadas con estándares.
- **Prerrequisitos:** Sesiones 15–16 completadas.
- **Materiales:**
  - Aplicación o servicio con soporte MFA (p. ej., Google Authenticator, Azure AD).
  - Herramientas de prueba de fuerza de passwords (p. ej., John the Ripper en modo educativo).
- **Guión:**
  1. Los estudiantes configuran MFA en un servicio proporcionado por el docente.
  2. Evalúan la resistencia de MFA ante un escenario simulado de robo de credenciales.
  3. Diseñan una política de passwords con requisitos de complejidad, antigüedad y bloqueo.
- **Preguntas de reflexión:**
  - ¿Qué tipos de MFA son más resistentes a ataques de phishing?
  - ¿Por qué una política de passwords muy estricta puede generar riesgo de usuarios?
- **Solución modelo:** Política de MFA y passwords documentada con justificación técnica.

---

#### Laboratorio 11 — Análisis de políticas de seguridad y cumplimiento ISO 27001

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Evaluar el estado de cumplimiento de un conjunto de controles ISO 27001:2022.
  - Identificar brechas de cumplimiento.
  - Proponer un plan de remediación.
- **Prerrequisitos:** Sesiones 16–17 completadas.
- **Materiales:**
  - Lista de controles ISO 27001:2022 (A.5 a A.8).
  - Escenario de una organización con estado de cumplimiento parcial.
- **Guión:**
  1. Los estudiantes reciben un escenario con 20 controles ISO 27001:2022.
  2. Evaluán el estado de cumplimiento (Cumple / No cumple / Parcialmente).
  3. Identifican brechas y proponen un plan de remediación con plazos.
- **Preguntas de reflexión:**
  - ¿Por qué el cumplimiento normativo no garantiza la seguridad?
  - ¿Cómo priorizaría los controles con mayor impacto en la reducción de riesgo?
- **Solución modelo:** Informe de cumplimiento con brechas identificadas y plan de remediación.

---

### 4.4 Módulo IV

#### Laboratorio 12 — Análisis de malware en sandbox (ejecución controlada)

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Analizar el comportamiento de malware en un entorno aislado.
  - Identificar técnicas de persistencia y propagación.
  - Documentar hallazgos en un informe forense.
- **Prerrequisitos:** Sesiones 19–20 completadas.
- **Materiales:**
  - Sandbox proporcionada por el docente (p. ej., ANY.RUN o FLARE-VM).
  - Muestras de malware educativo (proporcionadas por el docente).
  - Plantilla de informe de análisis de malware.
- **Guión:**
  1. Los estudiantes reciben una muestra de malware educativo (sin riesgo real).
  2. Ejecutan la muestra en la sandbox y observan el comportamiento.
  3. Documentan: familia de malware, persistencia, propagación, indicadores de compromiso (IOCs).
  4. Proponen mitigaciones.
- **Preguntas de reflexión:**
  - ¿Qué técnicas de evasión utiliza el malware analizado?
  - ¿Cómo afecta el cifrado de tráfico a la detección de malware?
- **Solución modelo:** Informe de análisis con IOCs y mitigaciones propuestas.
- **Advertencia:** Este laboratorio se realiza en entorno aislado. Las muestras de malware son educativas y no representan riesgo para sistemas productivos.

---

#### Laboratorio 13 — Prácticas de criptografía con OpenSSL

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Implementar cifrado simétrico (AES-256-CBC).
  - Implementar cifrado asimétrico (RSA-2048).
  - Generar y verificar funciones hash (SHA-256).
  - Aplicar buenas prácticas de gestión de claves.
- **Prerrequisitos:** Sesiones 21–22 completadas.
- **Materiales:**
  - OpenSSL instalado en máquina virtual Linux.
  - Guión de comandos proporcionado por el docente.
- **Guión:**
  1. Los estudiantes generan un par de claves RSA-2048.
  2. Cifran y descifran un mensaje con AES-256-CBC.
  3. Generan un hash SHA-256 de un archivo y verifican su integridad.
  4. Documentan el proceso y explican cada paso.
- **Preguntas de reflexión:**
  - ¿Por qué no se recomienda reutilizar claves en diferentes sistemas?
  - ¿Qué ventajas tiene el cifrado asimétrico sobre el simétrico en ciertos escenarios?
- **Solución modelo:** Secuencia de comandos OpenSSL con explicación de cada operación.

---

#### Laboratorio 14 — Cálculo de CVSS v3.1 y análisis de vulnerabilidades con Nessus Essentials

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Calcular la puntuación CVSS Base de una vulnerabilidad.
  - Interpretar métricas de CVSS (Attack Vector, Complexity, Privileges Required, etc.).
  - Utilizar Nessus Essentials para escanear vulnerabilidades.
- **Prerrequisitos:** Sesiones 22–23 completadas.
- **Materiales:**
  - Nessus Essentials instalado en máquina virtual.
  - Máquina virtual vulnerable (p. ej., Metasploitable 2 o DVWA).
  - Calculadora CVSS en línea (FIRST.org).
- **Guión:**
  1. Los estudiantes ejecutan un escaneo de vulnerabilidades con Nessus Essentials.
  2. Seleccionan 3 vulnerabilidades críticas y calculan su puntuación CVSS Base.
  3. Interpretan cada métrica y contextualizan el riesgo en el entorno escaneado.
  4. Proponen un plan de remediación priorizado por CVSS.
- **Preguntas de reflexión:**
  - ¿Por qué CVSS Base no incluye el contexto ambiental?
  - ¿Cómo afecta la criticidad del activo a la priorización de parches?
- **Solución modelo:** Informe de escaneo con cálculos CVSS y plan de remediación.

---

#### Laboratorio 15 — Laboratorio práctico integrador Módulo IV

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Integrar conocimientos de malware, criptografía y CVSS en un escenario unificado.
  - Analizar un incidente de seguridad completo.
  - Proponer controles integrales.
- **Prerrequisitos:** Laboratorios 12, 13 y 14 completados.
- **Materiales:**
  - Escenario integrador proporcionado por el docente.
  - Herramientas: Wireshark, OpenSSL, Nessus Essentials.
- **Guión:**
  1. Los estudiantes reciben un escenario de incidente de seguridad en una organización ficticia.
  2. Analizan: vector de ataque, malware involucrado, vulnerabilidades explotadas, impacto en activos.
  3. Calculan CVSS de vulnerabilidades encontradas.
  4. Proponen controles integrales (prevención, detección, respuesta, recuperación).
- **Preguntas de reflexión:**
  - ¿Cómo se relacionan los controles de los Módulos II, III y IV en un incidente real?
  - ¿Qué función del NIST CSF 2.0 priorizaría en este escenario?
- **Solución modelo:** Informe integrador con análisis completo y controles propuestos.

---

### 4.5 Módulo V

#### Laboratorio 16 — Respuesta a incidentes simulados y elaboración de informe forense

- **Duración:** 2 h
- **Objetivos de aprendizaje:**
  - Aplicar NIST SP 800-61 en un incidente simulado.
  - Elaborar un informe forense estructurado.
  - Proponer controles correctivos y preventivos.
- **Prerrequisitos:** Sesiones 25–28 completadas.
- **Materiales:**
  - Escenario de incidente simulado (p. ej., ransomware, exfiltración de datos).
  - Logs de sistema y red proporcionados por el docente.
  - Plantilla de informe forense NIST SP 800-61.
- **Guión:**
  1. Los estudiantes reciben un escenario de incidente y logs asociados.
  2. Aplican las fases de NIST SP 800-61 (Preparación, Detección y Análisis, Contención, Erradicación, Recuperación, Lecciones Aprendidas).
  3. Elaboran un informe forense estructurado.
  4. Proponen controles correctivos y preventivos.
- **Preguntas de reflexión:**
  - ¿Qué lección aprendida es más relevante para evitar la repetición del incidente?
  - ¿Cómo afecta el tiempo de respuesta al impacto final del incidente?
- **Solución modelo:** Informe forense completo con fases NIST SP 800-61 y controles propuestos.

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
| **Nmap** | 7.x | Escaneo de puertos |
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
| 2.1 | Agosto 2026 | Actualización de entornos de laboratorio y especificaciones técnicas. |
| 2.0 | Agosto 2026 | Versión base validada con estructura de 5 módulos / 16 laboratorios / 32 h. |
