# Estructura de Módulos - Fundamentos de Ciberseguridad 2026

**Curso para ABACOM - Propuesta de Implementación**

---

## Distribución General

| Módulo | Nombre | Horas | Labs | Evaluación |
|--------|--------|-------|------|-------------|
| 1 | Fundamentos y Marco NIST CSF 2.0 | 6 | 1 | Quiz + Lab |
| 2 | Gestión de Identidad y Acceso | 6 | 1 | Quiz + Lab |
| 3 | Arquitectura Zero Trust | 8 | 2 | Quiz + 2 Labs |
| 4 | Inteligencia Artificial en Seguridad | 6 | 1 | Quiz + Lab |
| 5 | Gestión de Vulnerabilidades | 5 | 1 | Quiz + Lab |
| 6 | Criptografía Post-Cuántica | 5 | 1 | Quiz + Lab |
| 7 | Respuesta a Incidentes | 4 | 1 | Quiz + Lab |
| **TOTAL** | | **40** | **8** | **7 Quizzes + 8 Labs** |

---

## Módulo 1: Fundamentos y Marco NIST CSF 2.0

**Duración:** 6 horas (4 teoría + 2 laboratorio)

### Objetivos de Aprendizaje

Al finalizar este módulo, el estudiante podrá:

1. **Comprender** la estructura y funciones del NIST Cybersecurity Framework 2.0
2. **Identificar** las 6 funciones del framework y sus relaciones
3. **Mapear** controles de seguridad a categorías específicas del framework
4. **Evaluar** el nivel de madurez de seguridad de una organización usando el CSF

### Contenido Teórico (4 horas)

#### 1.1 Evolución de la ciberseguridad (30 min)

- De la seguridad perimetral al modelo de confianza cero
- Contexto histórico del NIST CSF
- Migración de CSF 1.1 a CSF 2.0

#### 1.2 Las 6 funciones del NIST CSF 2.0 (90 min)

- **GOVERN**: Estrategia, políticas, gestión de riesgos
- **IDENTIFY**: Gestión de activos, governance
- **PROTECT**: Controles de protección, acceso, datos
- **DETECT**: Detección de amenazas y eventos
- **RESPOND**: Respuesta a incidentes
- **RECOVER**: Recuperación y continuidad

#### 1.3 Categorías y subcategorías (60 min)

- Estructura jerárquica del framework
- 108 subcategorías del CSF 2.0
- Perfiles y personalización

#### 1.4 Evaluación de madurez (30 min)

- Niveles de madurez (Partial, Risk Informed, Repeatable, Adaptive)
- Herramientas de evaluación
- Priorización de mejoras

### Laboratorio (2 horas)

**Lab 1: Mapeo de Controles NIST CSF**

- **Objetivo**: Realizar un mapeo completo de controles de seguridad de una organización simulada al NIST CSF 2.0
- **Actividad**: Usando un escenario de una empresa mediana (100 empleados), identificar controles existentes y mapearlos a las funciones del CSF
- **Entregable**: Documento de mapeo con brechas identificadas y plan de remediación
- **Duración**: 2 horas
- **Herramientas**: Plantilla de mapeo proporcionada,NIST CSF 2.0 Quick Start Guide

### Evaluación

- Quiz de conocimientos (20 preguntas, 30 minutos)
- Lab evaluado con rúbrica (ver abajo)
- Peso: 15% de la nota final

---

## Módulo 2: Gestión de Identidad y Acceso (IAM)

**Duración:** 6 horas (4 teoría + 2 laboratorio)

### Objetivos de Aprendizaje

1. **Implementar** autenticación multifactor phishing-resistant
2. **Configurar** políticas de acceso condicional basadas en riesgo
3. **Diseñar** arquitectura de Privileged Access Management (PAM)
4. **Detectar** amenazas de identidad en tiempo real

### Contenido Teórico (4 horas)

#### 2.1 Fundamentos de IAM (60 min)

- Evolución del IAM al modelo Zero Trust
- Componentes: IdP, MFA, SSO, federation
- Identity as the new perimeter

#### 2.2 Autenticación Multifactor (90 min)

- Niveles de MFA: SMS, TOTP, push, FIDO2, passkeys
- Autenticación phishing-resistant (FIDO2/WebAuthn)
- Passwordless authentication
- Implementación de number matching

#### 2.3 Acceso Condicional (60 min)

- Políticas basadas en: identidad, dispositivo, ubicación, riesgo
- Conditional Access en Azure AD/Entra ID
- Integración con device posture

#### 2.4 Gestión de Acceso Privilegiado (60 min)

- Just-in-Time (JIT) access
- Vault y session recording
- PAM vs IAM
- Service accounts y workload identity

### Laboratorio (2 horas)

**Lab 2: Configuración de MFA Phishing-Resistant y Políticas de Acceso**

- **Objetivo**: Configurar un sistema de autenticación segura con MFA phishing-resistant y políticas de acceso condicional
- **Actividad**: Usando un entorno de laboratorio (puede ser Azure AD trial o similar), implementar políticas de acceso
- **Entregable**: Documentación de políticas implementadas con justificaciones de seguridad
- **Duración**: 2 horas
- **Herramientas**: Azure AD/Entra ID (trial), FIDO2 key simulator

### Evaluación

- Quiz de conocimientos (15 preguntas)
- Lab evaluado con rúbrica
- Peso: 15% de la nota final

---

## Módulo 3: Arquitectura Zero Trust

**Duración:** 8 horas (4 teoría + 4 laboratorio)

### Objetivos de Aprendizaje

1. **Comprender** los principios fundamentales de Zero Trust Architecture
2. **Diseñar** una arquitectura Zero Trust según NIST SP 800-207
3. **Implementar** microsegmentación en un entorno simulado
4. **Configurar** Zero Trust Network Access (ZTNA)

### Contenido Teórico (4 horas)

#### 3.1 Principios de Zero Trust (60 min)

- Never trust, always verify
- Explicit verification
- Least privilege access
- Assume breach

#### 3.2 Marco NIST SP 800-207 (90 min)

- Modelos de implementación (full, incremental)
- Componentes: PEP, PDP, PA, PL
- ZTA para enterprise

#### 3.3 Microsegmentación (60 min)

- Macro-segmentation vs micro-segmentation
- Técnicas: network groups, software-defined firewalls
- Kubernetes network policies

#### 3.4 ZTNA vs VPN (30 min)

- Ventajas de ZTNA
- Soluciones comerciales: Zscaler, Cloudflare, Azure
- Casos de uso

### Laboratorios (4 horas)

**Lab 3a: Diseño de Arquitectura Zero Trust (2 horas)**

- **Objetivo**: Diseñar una arquitectura Zero Trust para una organizacióngiven
- **Actividad**: Given una empresa con múltiples ubicaciones y servicios cloud, diseñar la arquitectura ZTA
- **Entregable**: Diagrama de arquitectura y documento de justificación
- **Herramientas**: draw.io, plantillas de NIST SP 1800-35

**Lab 3b: Implementación de Microsegmentación (2 horas)**

- **Objetivo**: Implementar políticas de microsegmentación en un entorno de laboratorio
- **Actividad**: Usando un entorno de contenedores (Docker/Kubernetes simulado), implementar network policies
- **Entregable**: Configuración de políticas y resultados de testing
- **Herramientas**: Minikube, Kubernetes network policies

### Evaluación

- Quiz de conocimientos (20 preguntas)
- 2 Labs evaluados
- Peso: 20% de la nota final

---

## Módulo 4: Inteligencia Artificial en Seguridad

**Duración:** 6 horas (4 teoría + 2 laboratorio)

### Objetivos de Aprendizaje

1. **Identificar** amenazas específicas de sistemas AI
2. **Realizar** evaluación básica de seguridad en sistemas AI
3. **Implementar** defensas contra prompt injection
4. **Comprender** el ciclo de vida de seguridad AI

### Contenido Teórico (4 horas)

#### 4.1 AI Threat Landscape 2026 (60 min)

- AI como vector de ataque y como objetivo
- Estadísticas: 89% crecimiento de ataques AI-enabled
- Tiempo de brecha: 29 minutos promedio

#### 4.2 Ataques a Sistemas AI (90 min)

- Prompt injection: direct, indirect, jailbreak
- Model Context Protocol (MCP) vulnerabilities
- AI supply chain attacks
- Data poisoning

#### 4.3 AI-Enabled Attacks (60 min)

- Deepfakes para social engineering
- AI-generated phishing
- Autonomous attack agents
- Credential theft automation

#### 4.4 Defensas AI Security (60 min)

- AI red teaming
- Adversarial training
- Content filtering
- MCP security best practices

### Laboratorio (2 horas)

**Lab 4: Ejercicios de Prompt Injection y Seguridad MCP**

- **Objetivo**: Identificar y explotar vulnerabilidades de prompt injection
- **Actividad**: En un entorno controlado con LLM local, ejecutar diversos tipos de prompt injection
- **Entregable**: Reporte de hallazgos y recomendaciones de hardening
- **Herramientas**: Ollama con modelo local, laboratorio de seguridad AI

### Evaluación

- Quiz de conocimientos (20 preguntas)
- Lab evaluado
- Peso: 15% de la nota final

---

## Módulo 5: Gestión de Vulnerabilidades

**Durée:** 5 horas (3 teoría + 2 laboratorio)

### Objetivos de Aprendizaje

1. **Aplicar** metodología de gestión de exposición continua
2. **Priorizar** vulnerabilidades usando múltiples factores de riesgo
3. **Integrar** threat intelligence en la gestión de vulnerabilidades
4. **Responder** a vulnerabilidades zero-day

### Contenido Teórico (3 horas)

#### 5.1 Evolución de la gestión de vulnerabilidades (30 min)

- De scanning a exposición management
- Contexto: 42% de vulnerabilidades explotadas antes de disclosure público

#### 5.2 Priorización de Vulnerabilidades (60 min)

- CVSS: limitaciones y uso apropiado
- EPSS (Exploit Prediction Scoring System)
- Factores organizacionales: activos críticos, contexto de negocio

#### 5.3 Continuous Vulnerability Management (60 min)

- Integración con CI/CD
- VM en entornos cloud-native
- Automated remediation

#### 5.4 Threat Intelligence Integration (30 min)

- Fuentes de inteligencia
- IOC y IOA
- Integración con SIEM/SOAR

### Laboratorio (2 horas)

**Lab 5: Vulnerability Assessment con Threat Intelligence**

- **Objetivo**: Realizar una evaluación de vulnerabilidades integrada con threat intelligence
- **Actividad**: Given un escaneo de vulnerabilidades, priorizar usando EPSS y contexto de negocio
- **Entregable**: Reporte de priorización con plan de remediación
- **Herramientas**: OpenVAS/Nessus trial, EPSS API

### Evaluación

- Quiz de conocimientos (15 preguntas)
- Lab evaluado
- Peso: 10% de la nota final

---

## Módulo 6: Criptografía Post-Cuántica

**Duración:** 5 horas (3 teoría + 2 laboratorio)

### Objetivos de Aprendizaje

1. **Comprender** la amenaza cuántica a la criptografía actual
2. **Identificar** sistemas que requieren migración a PQC
3. **Planificar** la transición a estándares post-cuánticos
4. **Aplicar** mejores prácticas de inventory criptográfico

### Contenido Teórico (3 horas)

#### 6.1 Computación Cuántica y Criptografía (45 min)

- Cómo las computadoras cuánticas rompen RSA/ECC
- Cronología: NIST 2035, críticas 2030
- Riesgo "harvest now, decrypt later"

#### 6.2 Estándares NIST PQC (75 min)

- FIPS 203: ML-KEM (Kyber) - key encapsulation
- FIPS 204: ML-DSA (Dilithium) - digital signatures
- FIPS 205: SLH-DSA (SPHINCS+) - hash-based signatures
- Algoritmos de respaldo: HQC, Classic McEliece

#### 6.3 Estrategias de Migración (60 min)

- Cryptographic inventory
- Priorización: información clasificada primero
- Quantum-safe migration planning
- Interoperabilidad y compatibilidad

### Laboratorio (2 horas)

**Lab 6: Desarrollo de Plan de Migración PQC**

- **Objetivo**: Crear un plan de migración a criptografía post-cuántica para una organización
- **Actividad**: Given una organización con infraestructura mixta, desarrollar plan de migración
- **Entregable**: Plan de migración con timeline, priorización, y recursos
- **Herramientas**: Plantilla de NIST NCCoE, herramientas de cryptographic inventory

### Evaluación

- Quiz de conocimientos (15 preguntas)
- Lab evaluado
- Peso: 10% de la nota final

---

## Módulo 7: Respuesta a Incidentes

**Duración:** 4 horas (2 teoría + 2 laboratorio)

### Objetivos de Aprendizaje

1. **Aplicar** metodología de respuesta a incidentes del NIST
2. **Coordinar** respuesta multi-equipo en escenarios simulados
3. **Documentar** incidentes para aprendizaje organizacional
4. **Utilizar** herramientas de automatización en IR

### Contenido Teórico (2 horas)

#### 7.1 Incident Response Lifecycle (45 min)

- NIST SP 800-61: preparación, detección, contención, erradicación, recuperación, lecciones aprendidas
- Roles y responsabilidades

#### 7.2 Playbooks para 2026 (45 min)

- Ransomware response
- AI-augmented attacks
- Cloud compromise
- Supply chain attacks

#### 7.3 Métricas y Reporting (30 min)

- KPIs de IR: MTTD, MTTR, coverage
- Post-incident reviews
- Metrics improvement

### Laboratorio (2 horas)

**Lab 7: Simulación de Incident Response**

- **Objetivo**: Responder a un escenario de incidente de seguridad complejo
- **Actividad**: Given un escenario de ransomware con componentes cloud y AI, ejecutar respuesta
- **Entregable**: Documentación de incidente, timeline, lecciones aprendidas
- **Herramientas**: Simulación de laboratorio, plantillas de IR

### Evaluación

- Quiz de conocimientos (15 preguntas)
- Lab evaluado
- Peso: 10% de la nota final

---

## Rúbrica General de Evaluación de Labs

| Criterio | Peso | Excelente (90-100%) | Bueno (70-89%) | Necesita Mejora (<70%) |
|----------|------|-------------------|----------------|----------------------|
| Completitud | 25% | 100% de requisitos cumplidos | 70-99% requisitos | <70% requisitos |
| Funcionalidad | 25% | Funciona perfectamente | Funciona con ajustes menores | No funcional |
| Documentación | 20% | Completa, clara, profesional | Parcialmente completa | Ausente o deficiente |
| Análisis | 20% | Profundo, justificado, con fuentes | Básico, limitado | Superficial |
| Time management | 10% | Entregado a tiempo | Entregado con delay menor | Entregado con delay |

---

## Distribución de Peso de Evaluación

| Componente | Peso |
|------------|------|
| Quizzes (7) | 30% |
| Labs (8) | 45% |
| Examen Final | 15% |
| Participación | 10% |
| **Total** | **100%** |

---

## Requisitos de Aprobación

- Mínimo 70% en componente práctico (labs)
- Mínimo 70% en componente teórico (quizzes + examen)
- Asistencia mínima: 80%

---

*Estructura basada en investigación de tendencias 2026 y frameworks NIST*
*Versión: Mayo 2026*