# Estructura de Módulos - Fundamentos de Ciberseguridad 2026

**Curso para ABACOM - Propuesta de Implementación**
**Alineado a Brochure Oficial - 5 Unidades / 18 Subtemas**
**Versión:** 3.0 (Refactorizada - Opción A)
**Fecha:** Agosto 2026

---

## Distribución General

| Módulo | Nombre | Horas | Labs | Evaluación |
|--------|--------|-------|------|-------------|
| 1 | Principios de Ciberseguridad y Gestión de Riesgo | 5 | 1 | Quiz + Lab |
| 2 | Seguridad en Redes y Controles Perimetrales | 5 | 1 | Quiz + Lab |
| 3 | Hardening de Sistemas e Identidades (IAM/MFA) | 5 | 1 | Quiz + Lab |
| 4 | Amenazas, Criptografía Aplicada y Análisis de Vulnerabilidades | 5 | 1 | Quiz + Lab |
| 5 | Logging, SIEM, Respuesta a Incidentes y Continuidad | 7 | 1 | Quiz + Lab |
| — | Evaluaciones y Cierre | 3 | — | Examen Final |
| **TOTAL** | | **30** | **5** | **5 Quizzes + 5 Labs + Examen** |

> **Nota:** La estructura se alinea al brochure oficial de Abacom (5 unidades, 18 subtemas). 
> Los temas de IA Security, PQC y Gestión de Vulnerabilidades se integran como **contenido transversal** 
> en los módulos correspondientes para enriquecer el perfil operativo sin romper la acreditación.

---

## Módulo 1: Principios de Ciberseguridad y Gestión de Riesgo

**Duración:** 5 horas (3 teoría + 2 laboratorio)

### Objetivos de Aprendizaje

1. **Comprender** la Tríada CIA y su impacto en el negocio
2. **Aplicar** ISO 31000 y NIST SP 800-30 para evaluación de riesgos
3. **Clasificar** activos y datos según criticidad
4. **Mapear** controles al NIST CSF 2.0

### Contenido Teórico (3 horas)

#### 1.1 Tríada de la Seguridad de la Información (30 min)
- Confidencialidad, Integridad, Disponibilidad
- Impacto en el negocio por pilar
- Relación con escenarios organizacionales

#### 1.2 Gestión de Riesgo según ISO 31000 / NIST SP 800-30 (45 min)
- Riesgo inherente vs riesgo residual
- Fórmula de riesgo y matrices de probabilidad/impacto
- Opciones de tratamiento: aceptar, mitigar, transferir, evitar

#### 1.3 Clasificación de Activos y Datos (45 min)
- Tipos de activos: información, software, hardware, personal
- Criterios de clasificación: criticidad, sensibilidad, valor
- Alineación con NIST CSF 2.0

#### 1.4 Marco NIST Cybersecurity Framework (CSF) 2.0 (60 min)
- Las 6 funciones: Govern, Identify, Protect, Detect, Respond, Recover
- Categorías y subcategorías
- Perfiles y personalización organizacional

### Laboratorio (2 horas)

**Lab 1: Análisis de Incidentes y Mapeo NIST CSF**

- **Objetivo**: Analizar incidentes reales y mapear controles al NIST CSF 2.0
- **Actividad**: Given 3 informes de incidentes anonimizados, identificar controles aplicables
- **Entregable**: Informe de análisis con mapeo a funciones CSF y brechas identificadas
- **Herramientas**: Plantilla de análisis, NIST CSF 2.0 Quick Start Guide

### Evaluación
- Quiz: 10 preguntas
- Lab: rúbrica aplicada
- Peso: 20% de la nota final

---

## Módulo 2: Seguridad en Redes y Controles Perimetrales

**Duración:** 5 horas (3 teoría + 2 laboratorio)

### Objetivos de Aprendizaje

1. **Analizar** tráfico de red para detectar anomalías
2. **Diseñar** reglas de firewall aplicando menor privilegio
3. **Configurar** sistemas IDS/IPS para detección de intrusiones
4. **Diseñar** arquitectura de defensa perimetral con segmentación

### Contenido Teórico (3 horas)

#### 2.1 Modelo OSI y TCP-IP Aplicado a la Seguridad (45 min)
- Capas del modelo OSI y puntos de control
- Protocolos clave: HTTP, DNS, TCP, SSH
- Implicancias de seguridad por capa

#### 2.2 Firewalls: Conceptos y Clasificación (45 min)
- Tipos: packet filter, stateful, application layer, NGFW
- Reglas de filtrado: deny-all, allow-list
- Principio de menor privilegio

#### 2.3 Sistemas de Detección y Prevención de Intrusos (IDS / IPS) (60 min)
- Modos de operación: inline vs passive
- Reglas de detección: firmas, anomalías, comportamiento
- Suricata / Snort: configuración básica
- Análisis de alertas: verdaderos positivos vs falsos positivos

#### 2.4 Arquitectura de Defensa Perimetral (30 min)
- Segmentación de red: zonas, VLANs, DMZ
- Principios de diseño: defensa en profundidad
- Topologías comunes

### Laboratorio (2 horas)

**Lab 2: Diseño de Arquitectura de Defensa Perimetral**

- **Objetivo**: Diseñar una arquitectura de red con segmentación y reglas de firewall
- **Actividad**: Given una empresa con servidores web, base de datos y red interna, diseñar arquitectura completa
- **Entregable**: Diagrama de arquitectura + 10 reglas de firewall por zona + justificación
- **Herramientas**: Draw.io / diagrams.net

### Evaluación
- Quiz: 10 preguntas
- Lab: rúbrica aplicada
- Peso: 20% de la nota final

---

## Módulo 3: Hardening de Sistemas e Identidades (IAM/MFA)

**Duración:** 5 horas (3 teoría + 2 laboratorio)

### Objetivos de Aprendizaje

1. **Aplicar** controles de hardening de CIS Benchmarks
2. **Diseñar** modelos RBAC para gestión de accesos
3. **Implementar** MFA resistente a phishing
4. **Evaluar** políticas de seguridad y cumplimiento

### Contenido Teórico (3 horas)

#### 3.1 Hardening Básico de Sistemas Operativos (60 min)
- Principios: mínimo privilegio, superficie de ataque reducida
- CIS Benchmarks: controles críticos
- Servicios innecesarios, auditoría, passwords

#### 3.2 Gestión de Identidades y Accesos (IAM) (45 min)
- Componentes: IdP, SSO, federation
- RBAC: roles, permisos, herencia
- Privileged Access Management (PAM): JIT, vaults, session recording

#### 3.3 Autenticación Multifactor (MFA) Resistente a Phishing (45 min)
- Niveles de MFA: SMS, TOTP, push, FIDO2, passkeys
- Phishing-resistant authentication (FIDO2/WebAuthn)
- Passwordless authentication
- Políticas de passwords

#### 3.4 Cumplimiento y Auditoría (30 min)
- ISO 27001:2022 - controles de acceso y hardening
- Evaluación de cumplimiento
- Plan de remediación

### Laboratorio (2 horas)

**Lab 3: Hardening de Sistemas y Configuración IAM**

- **Objetivo**: Aplicar hardening e implementar modelo de accesos
- **Actividad**: 
  1. Aplicar 10 controles CIS en VM proporcionada
  2. Diseñar e implementar RBAC con 5 roles organizacionales
  3. Configurar MFA en servicio proporcionado
- **Entregable**: Informe de hardening + modelo RBAC documentado + política MFA
- **Herramientas**: VM Linux/Windows, CIS Benchmarks, servicio MFA

### Evaluación
- Quiz: 10 preguntas
- Lab: rúbrica aplicada
- Peso: 20% de la nota final

---

## Módulo 4: Amenazas, Criptografía Aplicada y Análisis de Vulnerabilidades

**Duración:** 5 horas (3 teoría + 2 laboratorio)

### Objetivos de Aprendizaje

1. **Identificar** vectores de ataque y superficie de ataque
2. **Clasificar** malware y sus técnicas de persistencia
3. **Aplicar** criptografía simétrica, asimétrica y funciones hash
4. **Priorizar** vulnerabilidades usando CVSS

### Contenido Teórico (3 horas)

#### 4.1 Vectores de Ataque y Superficie de Ataque (45 min)
- Tipos de vectores: phishing, malware, ingeniería social, física
- Superficie de ataque: identificación y reducción
- Contexto de amenazas 2026

#### 4.2 Clasificación de Malware (45 min)
- Familias: virus, worm, trojan, ransomware, spyware
- Técnicas de evasión y persistencia
- Análisis de comportamiento en sandbox
- **Contenido transversal IA Security**: AI-generated malware y deepfakes como vector de ataque

#### 4.3 Criptografía Aplicada (45 min)
- Cifrado simétrico: AES-256
- Cifrado asimétrico: RSA-2048, ECC
- Funciones hash: SHA-256, SHA-3
- Gestión de claves y mejores prácticas
- **Contenido transversal PQC**: amenaza cuántica, estándares NIST (ML-KEM, ML-DSA), estrategias de migración

#### 4.4 Puntuación CVSS y Gestión de Parches (45 min)
- CVSS v3.1: métricas base, temporal, ambiental
- Limitaciones de CVSS y uso apropiado
- Prioritización: CVSS + contexto organizacional
- Gestión de parches y vulnerabilidades
- **Contenido transversal Gestión de Vulnerabilidades**: EPSS, continuous VM, threat intelligence integration

### Laboratorio (2 horas)

**Lab 4: Análisis de Malware y Criptografía Aplicada**

- **Objetivo**: Analizar malware en sandbox y aplicar criptografía
- **Actividad**: 
  1. Analizar muestra de malware educativo en sandbox
  2. Implementar cifrado simétrico y asimétrico con OpenSSL
  3. Calcular CVSS de vulnerabilidad proporcionada
- **Entregable**: Informe de análisis de malware + secuencia OpenSSL + cálculo CVSS
- **Herramientas**: Sandbox educativa, OpenSSL, calculadora CVSS

### Evaluación
- Quiz: 10 preguntas
- Lab: rúbrica aplicada
- Peso: 20% de la nota final

---

## Módulo 5: Logging, SIEM, Respuesta a Incidentes y Continuidad

**Duración:** 7 horas (4 teoría + 3 laboratorio)

### Objetivos de Aprendizaje

1. **Implementar** estrategias de logging y monitoreo
2. **Comprender** arquitectura SOC y SIEM
3. **Aplicar** NIST SP 800-61 para respuesta a incidentes
4. **Diseñar** planes de continuidad del negocio (BCP/DRP)

### Contenido Teórico (4 horas)

#### 5.1 Monitoreo y Logging (60 min)
- Tipos de logs: sistema, aplicación, red, seguridad
- Estrategias de logging: centralized logging, log rotation
- Protección de logs: integridad, confidencialidad

#### 5.2 Fundamentos de SOC / SIEM (60 min)
- Arquitectura SOC: tiers, roles, procesos
- SIEM: colección, correlación, alertas
- Casos de uso: detección, investigación, cumplimiento

#### 5.3 Ciclo de Vida de Respuesta a Incidentes (60 min)
- NIST SP 800-61 r2/r3: Preparación, Detección, Contención, Erradicación, Recuperación, Lecciones Aprendidas
- Roles y responsabilidades
- Playbooks: ransomware, cloud compromise, supply chain
- Métricas: MTTD, MTTR, coverage

#### 5.4 Respaldos y Continuidad del Negocio (60 min)
- BCP: Business Continuity Planning
- DRP: Disaster Recovery Planning
- Estrategias de backup: 3-2-1-1-0
- Pruebas de recuperación

### Laboratorio (3 horas)

**Lab 5: Respuesta a Incidentes Simulados**

- **Objetivo**: Aplicar NIST SP 800-61 en escenario completo
- **Actividad**: 
  1. Revisar logs de sistema y red de incidente simulado
  2. Aplicar fases de NIST SP 800-61
  3. Elaborar informe forense con timeline
  4. Proponer controles correctivos y preventivos
- **Entregable**: Informe forense completo + plan de continuidad
- **Herramientas**: Plantilla NIST SP 800-61, logs proporcionados, draw.io

### Evaluación
- Quiz: 15 preguntas
- Lab: rúbrica aplicada
- Peso: 25% de la nota final

---

## Evaluaciones y Cierre

**Duración:** 3 horas

### Examen Final
- Duración: 2 horas
- Formato: 40 preguntas (opción múltiple, respuesta corta, casos prácticos)
- Cobertura: todos los módulos
- Peso: 25% de la nota final

### Cierre y Retrospectiva
- Presentación de proyectos integradores (1 hora)
- Lecciones aprendidas y próximos pasos en carrera profesional

---

## Distribución de Peso de Evaluación

| Componente | Peso |
|------------|------|
| Quizzes (5) | 25% |
| Labs (5) | 25% |
| Examen Final | 25% |
| Participación | 10% |
| Proyecto Integrador | 15% |
| **Total** | **100%** |

---

## Requisitos de Aprobación

- Mínimo 70% en componente práctico (labs)
- Mínimo 70% en componente teórico (quizzes + examen)
- Asistencia mínima: 80%

---

## Integración de Contenido Transversal

Los temas modernos se integran en los módulos existentes sin modificar la estructura acreditada:

| Tema Moderno | Módulo de Integración | Enfoque |
|--------------|----------------------|---------|
| IA Security (Prompt Injection, AI-enabled attacks) | Módulo 4 - 4.2 Clasificación de Malware | Como vector de ataque emergente |
| Criptografía Post-Cuántica (PQC) | Módulo 4 - 4.3 Criptografía Aplicada | Como evolución de la criptografía actual |
| Gestión de Vulnerabilidades (EPSS, Continuous VM) | Módulo 4 - 4.4 CVSS y Gestión de Parches | Como complemento a CVSS tradicional |

---

*Estructura alineada a brochure oficial Abacom - 5 Unidades / 18 Subtemas*
*Versión: 3.0 - Agosto 2026*
