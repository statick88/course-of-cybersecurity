# Guía Docente — Curso ABC-CYB-101: Fundamentos de Ciberseguridad

**Institución:** Abacom Capacitación y Servicios Informáticos  
**Código:** ABC-CYB-101  
**Versión:** 3.0  
**Fecha:** Agosto 2026  
**Responsable:** Diseño Curricular Abacom

---

## 1. Propósito de esta guía

Esta guía proporciona al instructor el plan de clases sesión por sesión, guiones didácticos detallados, soluciones modelo, material de apoyo y recomendaciones de gestión del aula para el curso **Fundamentos de Ciberseguridad**. Su estructura garantiza la aplicación uniforme de la metodología, el cumplimiento de los objetivos de aprendizaje y la alineación con los estándares internacionales referenciados (NIST CSF 2.0, ISO 31000, NIST SP 800-30, CVSS v3.1, NIST SP 800-61).

---

## 2. Estructura general del curso

| Módulo | Nombre | Teoría | Práctica | Total |
|--------|--------|--------|----------|-------|
| I | Principios de Ciberseguridad y Gestión de Riesgo | 3 h | 2 h | 5 h |
| II | Seguridad en Redes y Controles Perimetrales | 3 h | 2 h | 5 h |
| III | Hardening de Sistemas e Identidades (IAM/MFA) | 3 h | 2 h | 5 h |
| IV | Amenazas, Criptografía Aplicada y Análisis de Vulnerabilidades | 3 h | 2 h | 5 h |
| V | Logging, SIEM, Respuesta a Incidentes y Continuidad | 4 h | 3 h | 7 h |
| — | Evaluaciones y Cierre | 0 h | 3 h | 3 h |
| **Total** | | **30 h** | **10 h** | **43 h** |

> **Nota:** La estructura se alinea al brochure oficial de Abacom (5 unidades, 18 subtemas).
> Los temas de IA Security, PQC y Gestión de Vulnerabilidades se integran como **contenido transversal**
> en los módulos correspondientes para enriquecer el perfil operativo sin romper la acreditación.

---

## 3. Módulo I: Principios de Ciberseguridad y Gestión de Riesgo

**Objetivo del módulo:** Comprender los principios fundamentales de la ciberseguridad, la relación entre riesgo inherente, controles y riesgo residual, y aplicar un marco de control estratégico (NIST CSF 2.0) para la gestión de seguridad organizacional.

---

### Sesión 1 — 1.1. Tríada de la Seguridad de la Información

**Tiempo total:** 2 h (1 h teoría / 1 h práctica)

**Objetivos de aprendizaje:**
- Definir los tres pilares de la Tríada CIA: Confidencialidad, Integridad y Disponibilidad.
- Analizar el impacto en el negocio cuando se compromete cada pilar.
- Relacionar la Tríada CIA con escenarios organizacionales reales.

**Guión de clase:**
1. Activación de conocimientos previos (10 min): pregunte al grupo qué entiende por "seguridad de la información" y solicite ejemplos de fallas en cada pilar.
2. Exposición teórica (30 min): defina Confidencialidad (acceso autorizado), Integridad (precisión y completitud) y Disponibilidad (acceso oportuno). Use ejemplos sectoriales.
3. Demostración (10 min): presente un caso de estudio breve de violación de cada pilar.
4. Transición a práctica (10 min): explique el ejercicio de caso práctico y forme equipos.

**Preguntas de reflexión:**
- ¿Qué diferencia existe entre confidencialidad y privacidad?
- ¿Cómo afecta la pérdida de integridad a una transacción financiera?

**Material didáctico:**
- Diapositiva 1: Tríada CIA con iconografía simple.
- Diapositiva 2: Tabla de impacto por pilar (financiero, reputacional, legal).
- Caso de estudio impreso: "Violación de datos en una pyme".

**Solución modelo (práctica):**
- Confidencialidad: fuga de base de datos de clientes. Impacto: multas RGPD/LGPD, pérdida de confianza.
- Integridad: alteración de registros médicos. Impacto: error clínico, responsabilidad legal.
- Disponibilidad: ataque DDoS a portal web. Impacto: ingresos perdidos, reputación.

---

### Sesión 2 — 1.2. Gestión de Riesgo según ISO 31000 / NIST SP 800-30

**Tiempo total:** 2 h (1 h teoría / 1 h práctica)

**Objetivos de aprendizaje:**
- Distinguir entre riesgo inherente, controles aplicados y riesgo residual.
- Aplicar la fórmula de riesgo y matrices de probabilidad/impacto.
- Interpretar activos, exposición al riesgo y opciones de tratamiento.

**Guión de clase:**
1. Activación (10 min): solicite ejemplos de riesgos tecnológicos en organizaciones conocidas.
2. Exposición teórica (30 min): presente ISO 31000 (principios, marco, proceso) y NIST SP 800-30 (proceso de evaluación de riesgos).
3. Demostración (10 min): resuelva un cálculo de riesgo cuantitativo en pizarra.
4. Transición (10 min): asigne ejercicio cuantitativo individual.

**Preguntas de reflexión:**
- ¿Por qué el riesgo residual nunca es cero?
- ¿Cómo influye la aversión al riesgo en la selección de controles?

**Material didáctico:**
- Diapositiva 1: Diagrama del proceso ISO 31000.
- Diapositiva 2: Matriz de riesgo 5×5.
- Ejercicio impreso: escenario de riesgo para una organización ficticia.

**Solución modelo (práctica):**
- Activo: servidor de base de datos. Amenaza: ransomware. Probabilidad: Alta (4). Impacto: Crítico (5). Riesgo inherente: 20.
- Control: backups offline + EDR. Riesgo residual: Bajo (2×2=4).
- Tratamiento: Aceptar el riesgo residual; monitorear.

---

### Sesión 3 — 1.3. Clasificación de Activos y Datos

**Tiempo total:** 2 h (1 h teoría / 1 h práctica)

**Objetivos de aprendizaje:**
- Identificar tipologías de activos (físicos, lógicos, humanos).
- Aplicar esquemas de clasificación por sensibilidad.
- Diseñar un esquema de clasificación para una organización ficticia.

**Guión de clase:**
1. Activación (10 min): solicite al grupo listar activos críticos de una universidad o banco.
2. Exposición teórica (30 min): explique activos tangibles/intangibles, información como activo, niveles de clasificación (público, interno, confidencial, restringido).
3. Demostración (10 min): analice un esquema de clasificación real (ej. gobierno, salud).
4. Transición (10 min): asigne diseño de esquema para una pyme ficticia.

**Preguntas de reflexión:**
- ¿Qué consecuencias puede tener una clasificación excesiva o insuficiente?
- ¿Quién es el responsable de clasificar la información?

**Material didáctico:**
- Diapositiva 1: Taxonomía de activos.
- Diapositiva 2: Ejemplo de política de clasificación.

**Solución modelo (práctica):**
- Nivel Público: página web, comunicados de prensa.
- Nivel Interno: manuales de procedimiento, organigrama.
- Nivel Confidencial: datos de clientes, contratos.
- Nivel Restringido: claves criptográficas, propiedad intelectual crítica.

---

### Sesión 4 — 1.4. Marco NIST Cybersecurity Framework (CSF) 2.0

**Tiempo total:** 2 h (1 h teoría / 1 h práctica)

**Objetivos de aprendizaje:**
- Identificar las 6 funciones del NIST CSF 2.0: Gobernar, Identificar, Proteger, Detectar, Responder, Recuperar.
- Diferenciar entre Categorías, Subcategorías y Perfiles.
- Mapear controles existentes a las funciones del CSF 2.0.

**Guión de clase:**
1. Activación (10 min): pregunte qué marcos de ciberseguridad conocen los estudiantes.
2. Exposición teórica (30 min): evolución desde CSF 1.1 a 2.0. Detalle de las 6 funciones, categorías y subcategorías.
3. Demostración (10 min): muestre un Perfil de referencia (ej. PF) y un Perfil objetivo.
4. Transición (10 min): asigne taller de mapeo de controles.

**Preguntas de reflexión:**
- ¿Por qué se incorporó "Gobernar" como función en CSF 2.0?
- ¿Cómo ayuda el CSF 2.0 a priorizar inversiones en seguridad?

**Material didáctico:**
- Diapositiva 1: Las 6 funciones del CSF 2.0.
- Diapositiva 2: Ejemplo de Perfil de referencia vs. Perfil objetivo.
- Plantilla de mapeo de controles.

**Solución modelo (práctica):**
- Política de passwords → Proteger (PR.AA-01).
- Monitoreo de red → Detectar (DE.CM-01).
- Plan de respuesta a incidentes → Responder (RS.RP-01).
- Copias de seguridad → Recuperar (RC.RP-01).

---

### Sesión 5 — Laboratorio Módulo I: Análisis de Incidentes y Mapeo NIST CSF

**Tiempo total:** 2 h (1 h taller / 1 h defensa)

**Objetivos de aprendizaje:**
- Integrar Tríada CIA, gestión de riesgo, clasificación de activos y NIST CSF 2.0.
- Aplicar los conceptos en un caso integral.

**Guión de clase:**
1. Introducción al laboratorio (10 min): planteamiento del caso.
2. Desarrollo en equipos (70 min): análisis de incidentes y mapeo de controles.
3. Defensa oral (20 min): presentación de propuestas.
4. Retroalimentación (10 min): cierre docente.

**Solución modelo (laboratorio):**
- Caso: startup fintech. Identificar activos, clasificar, evaluar riesgo, mapear controles a CSF 2.0.

---

## 4. Módulo II: Seguridad en Redes y Controles Perimetrales

**Objetivo del módulo:** Analizar la arquitectura de redes desde la perspectiva de la seguridad, comprender el funcionamiento de controles perimetrales y de segmentación, y contrastar modelos de acceso tradicionales versus arquitecturas de confianza cero.

---

### Sesión 6 — 2.1. Modelo OSI y TCP-IP Aplicado a la Seguridad

**Tiempo total:** 2 h (1 h teoría / 1 h práctica)

**Objetivos de aprendizaje:**
- Mapear cada capa del modelo OSI a vectores de ataque comunes.
- Identificar protocolos clave (HTTP, HTTPS, DNS, TCP, UDP, ICMP, SSH).
- Aplicar filtros en Wireshark para análisis de capturas .pcapng.

**Guión de clase:**
1. Activación (10 min): solicite ejemplos de ataques por capa OSI.
2. Exposición teórica (30 min): repase las 7 capas y sus implicancias de seguridad.
3. Demostración (10 min): abra Wireshark, aplique filtros `http`, `dns`, `tcp.port==22`.
4. Transición (10 min): asigne análisis de captura pregrabada.

**Preguntas de reflexión:**
- ¿Por qué HTTPS solo protege hasta la capa de transporte?
- ¿Qué protocolos de la capa de aplicación son más atacados?

**Material didáctico:**
- Diapositiva 1: Mapa OSI con vectores de ataque por capa.
- Captura .pcapng de muestra (tráfico web y DNS).
- Guía rápida de filtros Wireshark.

**Solución modelo (práctica):**
- Identificar tráfico HTTP no cifrado en puerto 80.
- Detectar consultas DNS sospechosas (longitud de subdominio alta).
- Correlacionar IP destino con reputación.

---

### Sesión 7 — 2.2. Firewalls: Conceptos y Clasificación

**Tiempo total:** 2 h (1 h teoría / 1 h práctica)

**Objetivos de aprendizaje:**
- Diferenciar tipologías de firewall: NGFW, WAF, firewall de host.
- Comprender reglas, zonas desmilitarizadas (DMZ) y segmentación.
- Configurar reglas básicas en firewall de software.

**Guión de clase:**
1. Activación (10 min): pregunte qué firewalls conocen y en qué posición los han visto.
2. Exposición teórica (30 min): defina stateful vs. stateless, NGFW, WAF, zonas de red.
3. Demostración (10 min): configure reglas en UFW/iptables o Windows Defender Firewall.
4. Transición (10 min): asigne taller de reglas.

**Preguntas de reflexión:**
- ¿Qué riesgo implica una regla de "deny any any" sin excepciones documentadas?
- ¿Por qué una DMZ no es equivalente a "seguridad completa"?

**Material didáctico:**
- Diapositiva 1: Tipologías de firewall.
- Diapositiva 2: Diagrama de red con DMZ y segmentación.
- Script de configuración de reglas base.

**Solución modelo (práctica):**
- Permitir SSH (22) solo desde IP de administración.
- Denegar tráfico entrante a 3389 (RDP) desde Internet.
- Permitir HTTP/HTTPS hacia servidor web en DMZ.

---

### Sesión 8 — 2.3. Sistemas de Detección y Prevención de Intrusos (IDS / IPS)

**Tiempo total:** 2 h (1 h teoría / 1 h práctica)

**Objetivos de aprendizaje:**
- Diferenciar modos de operación: detección vs. prevención.
- Comprender firmas vs. anomalías.
- Revisar alertas de IDS mediante interfaz GUI o logs precargados.

**Guión de clase:**
1. Activación (10 min): solicite ejemplos de falsos positivos en detección de intrusos.
2. Exposición teórica (30 min): explique modos pasivo/inline, firmas (Snort/Suricata), detección de anomalías.
3. Demostración (10 min): revise alertas de IDS en entorno controlado.
4. Transición (10 min): asigne análisis de logs.

**Preguntas de reflexión:**
- ¿Cuándo es preferible un IDS sobre un IPS?
- ¿Qué riesgo existe al bloquear tráfico basado solo en firmas sin análisis contextual?

**Material didáctico:**
- Diapositiva 1: IDS vs. IPS.
- Diapositiva 2: Ejemplo de regla Snort.
- Logs de alertas precargados en entorno de prueba.

**Solución modelo (práctica):**
- Identificar alerta de escaneo Nmap (SYN scan).
- Clasificar alerta como verdadero positivo o falso positivo.
- Proponer ajuste de regla para reducir falsos positivos.

---

### Sesión 9 — 2.4. Arquitectura de Defensa Perimetral

**Tiempo total:** 2 h (1 h teoría / 1 h práctica)

**Objetivos de aprendizaje:**
- Diseñar arquitectura de defensa perimetral con segmentación.
- Aplicar principios de defensa en profundidad.
- Documentar topologías comunes de red segura.

**Guión de clase:**
1. Activación (10 min): solicite ejemplos de arquitecturas de red que hayan visto.
2. Exposición teórica (30 min): segmentación de red (zonas, VLANs, DMZ), defensa en profundidad, topologías comunes.
3. Demostración (10 min): diagrama de arquitectura de referencia.
4. Transición (10 min): asigne taller de diseño de arquitectura.

**Preguntas de reflexión:**
- ¿Por qué la segmentación reduce el radio de explosión?
- ¿Qué principio de diseño debe prevalecer en una arquitectura perimetral?

**Material didáctico:**
- Diapositiva 1: Topologías de defensa perimetral.
- Diapositiva 2: Ejemplo de arquitectura en capas.
- Plantilla de diseño de red.

**Solución modelo (práctica):**
- Arquitectura: Internet → Firewall → DMZ (web) → Firewall interno → LAN.
- Segmentación: VLANs por función (servidores, usuarios, invitados).
- Defensa en profundidad: múltiples capas de control.

---

### Sesión 10 — Laboratorio Módulo II: Diseño de Arquitectura de Defensa Perimetral

**Tiempo total:** 2 h (1 h taller / 1 h defensa)

**Objetivos de aprendizaje:**
- Integrar conocimientos de OSI, firewalls e IDS/IPS.
- Diseñar una arquitectura de defensa perimetral básica.

**Guión de clase:**
1. Introducción al laboratorio (10 min): planteamiento del caso.
2. Desarrollo en equipos (70 min): diseño de arquitectura y reglas.
3. Defensa oral (20 min): presentación de propuestas.
4. Retroalimentación (10 min): cierre docente.

**Solución modelo (laboratorio):**
- Arquitectura: Internet → Firewall → DMZ (web) → Firewall interno → LAN.
- Reglas: filtrar puertos no esenciales, segmentar por VLAN, IDS en modo detección en segmento DMZ.

---

## 5. Módulo III: Hardening de Sistemas e Identidades (IAM/MFA)

**Objetivo del módulo:** Aplicar medidas de hardening básico en sistemas operativos y gestionar identidades y accesos con mecanismos modernos de autenticación resistente a phishing.

---

### Sesión 11 — 3.1. Hardening Básico de Sistemas Operativos

**Tiempo total:** 2 h (1 h teoría / 1 h práctica)

**Objetivos de aprendizaje:**
- Aplicar principios de hardening: minimizar superficie de ataque, menor privilegio, actualizaciones.
- Utilizar checklists de hardening (ej. CIS Benchmarks nivel 1).

**Guión de clase:**
1. Activación (10 min): solicite ejemplos de configuraciones inseguras comunes.
2. Exposición teórica (30 min): principios de hardening, CIS Controls, secure baselines.
3. Demostración (10 min): aplicación de checklist en sistema preconfigurado.
4. Transición (10 min): asigne laboratorio de hardening.

**Preguntas de reflexión:**
- ¿Por qué "todo lo que no está explícitamente permitido, debe estar denegado"?
- ¿Qué riesgo implica ejecutar servicios innecesarios en un servidor?

**Material didáctico:**
- Diapositiva 1: Principios de hardening.
- Diapositiva 2: Checklist CIS Benchmarks nivel 1 (resumen).
- VM preconfigurada con puntos de control.

**Solución modelo (práctica):**
- Deshabilitar servicios innecesarios (ej. Telnet, FTP).
- Aplicar política de passwords (longitud, complejidad, antigüedad).
- Configurar actualizaciones automáticas.
- Habilitar logging de eventos de seguridad.

---

### Sesión 12 — 3.2. Gestión de Identidades y Accesos (IAM)

**Tiempo total:** 2 h (1 h teoría / 1 h práctica)

**Objetivos de aprendizaje:**
- Comprender el ciclo de vida de identidad.
- Diferenciar RBAC vs. ABAC.
- Modelar roles y permisos para un sistema empresarial ficticio.

**Guión de clase:**
1. Activación (10 min): solicite ejemplos de problemas de gestión de identidades.
2. Exposición teórica (30 min): ciclo de vida de identidad, acceso con privilegios mínimos, RBAC/ABAC.
3. Demostración (10 min): modelo de roles en diagrama.
4. Transición (10 min): asigne ejercicio de modelado.

**Preguntas de reflexión:**
- ¿Qué es el "privilege creep" y cómo se mitiga?
- ¿Cuándo es más apropiado ABAC que RBAC?

**Material didáctico:**
- Diapositiva 1: Ciclo de vida de identidad (joiner-mover-leaver).
- Diapositiva 2: Comparativa RBAC vs. ABAC.
- Plantilla de modelado de roles.

**Solución modelo (práctica):**
- Roles: Administrador, Analista, Operador, Auditor.
- RBAC: permisos fijos por rol.
- ABAC: reglas basadas en ubicación, hora, dispositivo, clasificación de datos.

---

### Sesión 13 — 3.3. Autenticación Multifactor (MFA) Resistente a Phishing

**Tiempo total:** 2 h (1 h teoría / 1 h práctica)

**Objetivos de aprendizaje:**
- Diferenciar MFA tradicional vs. MFA phishing-resistant (FIDO2 / WebAuthn).
- Configurar MFA con estándar FIDO2.
- Analizar resistencia ante ataques de phishing.

**Guión de clase:**
1. Activación (10 min): solicite experiencias con MFA (SMS, app, token).
2. Exposición teórica (30 min): factores de autenticación, limitaciones de OTP/SMS, estándar FIDO2, claves físicas, biometría avanzada.
3. Demostración (10 min): configuración de MFA con FIDO2 en entorno de prueba.
4. Transición (10 min): asigne análisis comparativo.

**Preguntas de reflexión:**
- ¿Por qué el SMS no es considerado MFA phishing-resistant?
- ¿Qué ventaja ofrece WebAuthn sobre tokens TOTP?

**Material didáctico:**
- Diapositiva 1: Matriz de resistencia de factores de autenticación.
- Diapositiva 2: Flujo FIDO2 / WebAuthn.
- Entorno de prueba con FIDO2 configurado.

**Solución modelo (práctica):**
- SMS/OTP: vulnerable a phishing (proxy inverso) y SIM swapping.
- FIDO2/WebAuthn: resistente a phishing porque el secreto nunca sale del dispositivo y el origen del origin request está atado al dominio.
- Conclusión: priorizar MFA phishing-resistant para cuentas privilegiadas.

---

### Sesión 14 — 3.4. Cumplimiento y Auditoría de Identidades

**Tiempo total:** 2 h (1 h teoría / 1 h práctica)

**Objetivos de aprendizaje:**
- Comprender el marco de cumplimiento ISO 27001:2022 aplicado a controles de acceso.
- Diseñar un plan de remediación para hallazgos de auditoría.
- Evaluar la madurez de un programa de identidades.

**Guión de clase:**
1. Activación (10 min): solicite ejemplos de hallazgos comunes en auditorías de identidad.
2. Exposición teórica (30 min): ISO 27001:2022 controles de acceso, hardening, auditoría.
3. Demostración (10 min): análisis de un reporte de auditoría anonimizado.
4. Transición (10 min): asigne diseño de plan de remediación.

**Preguntas de reflexión:**
- ¿Cómo se relaciona la auditoría de identidades con la detección de amenazas internas?
- ¿Por qué la remediación debe ser priorizada por riesgo y no por orden de aparición?

**Material didáctico:**
- Diapositiva 1: ISO 27001:2022 - Control de acceso.
- Diapositiva 2: Ejemplo de plan de remediación.
- Reporte de auditoría anonimizado.

**Solución modelo (práctica):**
- Hallazgo: cuentas privilegiadas sin MFA. Riesgo: Alto. Remediac
