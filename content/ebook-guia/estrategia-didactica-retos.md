---
title: "Estrategia Didáctica Integradora — Retos, Insignias y Evaluación Formativa"
module: "ebook-guia-estrategia"
type: "pedagogia"
description: "Sistema de didáctica activa y evaluación formativa para el Ebook Guía, alineado con NIST CSF 2.0 y requisitos SETEC/Abacom"
author: "Diego Saavedra — Abacom"
fecha: "2026-09-01"
---

# Estrategia Didáctica Integradora: Retos, Insignias y Evaluación Formativa

## Resumen Ejecutivo

Esta propuesta pedagógica transforma el Ebook Guía de un documento pasivo de consulta en un **ecosistema de aprendizaje activo** basado en andragogía, gamificación ética y evaluación formativa continua. Está diseñada para adultos con experiencia técnica limitada (diagnóstico promedio: 51.4/100) que necesitan construir competencias técnicas y confianza antes del curso principal.

**Principios fundamentales:**
1. **Andragogía**: El adulto aprende cuando ve relevancia inmediata y tiene autonomía
2. **Andamiaje progresivo**: De "ver y copiar" → "practicar guiado" → "resolver independientemente"
3. **Gamificación ética**: Logros que validan competencias reales, no solo participación
4. **Evaluación formativa**: Feedback continuo que permite corregir antes de la evaluación sumativa

---

## Componente 1: Metodología de Retos de Mini-Escenario

### Filosofía

Cada módulo culmina con un **Mini-Escenario de 10 minutos** que simula una situación real de ciberseguridad donde el estudiante debe aplicar los comandos aprendidos bajo presión de tiempo controlada. Estos retos conectan la técnica con el contexto profesional.

### Estructura del Mini-Escenario

| Elemento | Descripción |
|----------|-------------|
| **Duración** | 10 minutos exactos (cronómetro visible) |
| **Premisa** | Situación realista de negocio/incidente |
| **Entregable** | Comando(s) ejecutado(s) + evidencia (screenshot o texto) |
| **Evaluación** | Autoevaluación con verificación de checklist |
| **Feedback** | Solución modelo disponible después del intento |

### Retos por Módulo

#### Módulo 1: Linux y Consola — "El Servidor a Medianoche"

```
┌─────────────────────────────────────────────────────────────────┐
│ 🚨 MINI-ESCENARIO 1: "El Servidor a Medianoche"                │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│ PREMISA: Son las 2 AM. El sistema de facturación dejó de        │
│ funcionar. El administrador anterior configuró mal los         │
│ permisos del script de arranque. Debes diagnosticar y           │
│ corregir en 10 minutos.                                         │
│                                                                 │
│ TU MISIÓN:                                                      │
│ 1. Verifica en qué directorio estás (pwd)                       │
│ 2. Lista los archivos de /opt/facturacion/ (ls -la)             │
│ 3. Identifica qué script tiene permisos incorrectos             │
│ 4. Corrige los permisos a 755 (chmod 755)                       │
│ 5. Verifica que el propietario es correcto (chown)              │
│                                                                 │
│ ENTREGABLE: Captura de pantalla de ls -la antes y después       │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

#### Módulo 2: Kali Linux — "Auditoría Express"

```
┌─────────────────────────────────────────────────────────────────┐
│ 🔍 MINI-ESCENARIO 2: "Auditoría Express"                       │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│ PREMISA: Un cliente te pide verificar qué puertos están         │
│ abiertos en su servidor web (192.168.1.100) antes de la         │
│ auditoría formal de mañana. Tienes 10 minutos.                  │
│                                                                 │
│ TU MISIÓN:                                                      │
│ 1. Escanea puertos comunes con nmap en 192.168.1.100            │
│ 2. Identifica qué servicios están corriendo                     │
│ 3. Documenta los puertos abiertos en un archivo .txt            │
│ 4. Verifica que nmap y msfconsole están instalados              │
│                                                                 │
│ ENTREGABLE: Archivo auditoria-puertos.txt con el resultado      │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

#### Módulo 3: Git — "Colaboración bajo Presión"

```
┌─────────────────────────────────────────────────────────────────┐
│ 📦 MINI-ESCENARIO 3: "Colaboración bajo Presión"               │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│ PREMISA: Tu compañero subió un script con contraseñas en        │
│ texto plano por accidente. Debes crear un repositorio,         │
│ documentar el incidente y proteger el código en 10 minutos.     │
│                                                                 │
│ TU MISIÓN:                                                      │
│ 1. Crea un repositorio llamado "incidente-seguridad"            │
│ 2. Agrega un README.md con la descripción del incidente         │
│ 3. Crea un .gitignore que excluya archivos .env y .key          │
│ 4. Haz commit con mensaje descriptivo                           │
│ 5. Verifica el historial con git log                            │
│                                                                 │
│ ENTREGABLE: git log --oneline + contenido de .gitignore         │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

#### Módulo 4: Docker — "Despliegue de Emergencia"

```
┌─────────────────────────────────────────────────────────────────┐
│ 🐳 MINI-ESCENARIO 4: "Despliegue de Emergencia"                │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│ PREMISA: El servidor de producción se cayó. Debes               │
│ desplegar un servidor web alternativo en Docker en              │
│ 10 minutos mientras el equipo resuelve el problema real.        │
│                                                                 │
│ TU MISIÓN:                                                      │
│ 1. Verifica que Docker está corriendo (docker info)             │
│ 2. Descarga la imagen de nginx (docker pull nginx)              │
│ 3. Ejecuta un contenedor en puerto 8080 (docker run -d -p)      │
│ 4. Verifica que está activo (docker ps)                         │
│ 5. Prueba que responde (curl http://localhost:8080)             │
│                                                                 │
│ ENTREGABLE: docker ps + resultado de curl                       │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

#### Módulo 5: Bandit (0-5) — "Cadena de Custodia Digital"

```
┌─────────────────────────────────────────────────────────────────┐
│ 🔐 MINI-ESCENARIO 5: "Cadena de Custodia Digital"              │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│ PREMISA: Eres el primer respondedor a un incidente.             │
│ Debes recopilar evidencia digital del servidor comprometido     │
│ y documentar cada paso para el informe forense.                 │
│                                                                 │
│ TU MISIÓN (en Bandit nivel 2):                                  │
│ 1. Conectate a bandit2@bandit.labs.overthewire.org -p 2220      │
│ 2. Encuentra el archivo con espacios en el nombre               │
│ 3. Documenta el comando que usaste en tu diario                 │
│ 4. Verifica el tipo de archivo con file                         │
│ 5. Lee el contenido y guárdalo en tu diario de wargames         │
│                                                                 │
│ ENTREGABLE: Entrada en diario de wargames con comando usado     │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

#### Módulo 6: Bandit (6-10) — "Cazador de Indicios"

```
┌─────────────────────────────────────────────────────────────────┐
│ 🎯 MINI-ESCENARIO 6: "Cazador de Indicios"                     │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│ PREMISA: Un auditor te pide encontrar un archivo específico     │
│ en un servidor con miles de archivos. Solo tienes estas        │
│ pistas: pertenece al usuario X, grupo Y, tamaño Z bytes.        │
│                                                                 │
│ TU MISIÓN (en Bandit nivel 6):                                  │
│ 1. Conectate a bandit6@bandit.labs.overthewire.org -p 2220      │
│ 2. Usa find con criterios múltiples (-user, -group, -size)      │
│ 3. Redirige errores a /dev/null (2>/dev/null)                   │
│ 4. Documenta el comando exacto que usaste                       │
│ 5. Lee la contraseña y registra en tu diario                    │
│                                                                 │
│ ENTREGABLE: Comando find completo + captura de la ruta hallada  │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

## Componente 2: Sistema de Insignias y Logros

### Filosofía

Las insignias validan **competencias demostradas**, no solo tiempo de estudio. Cada insignia requiere evidencia tangible (checklist completado + diario de wargames + mini-escenario resuelto). Esto alinea la gamificación con los estándares SETEC de evaluación por competencias.

### Arquitectura del Sistema

| Componente | Descripción |
|------------|-------------|
| **6 Insignias de Módulo** | Una por cada módulo completado |
| **1 Insignia Integradora** | "Fundamentos Listo" al completar todos los módulos |
| **Validación** | Triple verificación: checklist + diario + mini-escenario |
| **Registro** | Diario de wargames en Git como portafolio de evidencias |

### Insignias por Módulo

#### 🛡️ Insignia 1: "Guardián de Permisos" (Módulo 1)

| Criterio | Evidencia Requerida |
|----------|---------------------|
| Comprende permisos rwx | Checklist marcado: "Entiendo permisos rwx" |
| Usa chmod correctamente | Captura de pantalla de ejercicio 2 |
| Aplica principio de menor privilegio | Mini-escenario completado |
| Resuelve errores comunes | Checklist: "Resuelvo Permission denied" |

**Desbloqueo:** Completar checklist + entregar mini-escenario + 3 ejercicios prácticos

---

#### 🔍 Insignia 2: "Centinela de Reconocimiento" (Módulo 2)

| Criterio | Evidencia Requerida |
|----------|---------------------|
| Conoce herramientas de Kali | Checklist: "Navego por menú de herramientas" |
| Ejecuta nmap básico | Captura de nmap -sV localhost |
| Verifica instalación de herramientas | Captura de which nmap msfconsole |
| Entiende uso ético | Checklist: "Entiendo uso legal de Kali" |

**Desbloqueo:** Completar checklist + entregar mini-escenario + primer escaneo documentado

---

#### 📦 Insignia 3: "Guardián de Versiones" (Módulo 3)

| Criterio | Evidencia Requerida |
|----------|---------------------|
| Crea repositorio local | Captura de git init |
| Hace commits con mensajes claros | git log --oneline con 2+ commits |
| Usa .gitignore correctamente | Archivo .gitignore con reglas de seguridad |
| Comprende flujo add-commit-push | Checklist completo |

**Desbloqueo:** Completar checklist + entregar mini-escenario + repositorio creado con .gitignore

---

#### 🐳 Insignia 4: "Centinela de Contenedores" (Módulo 4)

| Criterio | Evidencia Requerida |
|----------|---------------------|
| Comprende diferencia VM/Container | Checklist: "Explico diferencia" |
| Ejecuta docker ps y docker exec | Captura de contenedores activos |
| Gestiona ciclo de vida | Captura de docker start/stop |
| Aplica buenas prácticas | Checklist: "Aplico buenas prácticas" |

**Desbloqueo:** Completar checklist + entregar mini-escenario + contenedor nginx funcionando

---

#### 🔐 Insignia 5: "Cazador de Hashes" (Módulo 5)

| Criterio | Evidencia Requerida |
|----------|---------------------|
| Conecta por SSH a Bandit | Captura de conexión exitosa |
| Resuelve niveles 0-3 | Diario de wargames con 3 entradas |
| Usa file y find correctamente | Comandos documentados en diario |
| Documenta cada paso | Diario con comandos y aprendizajes |

**Desbloqueo:** Completar checklist + entregar mini-escenario + nivel 3 de Bandit resuelto

---

#### 🎯 Insignia 6: "Analista de Indicios" (Módulo 6)

| Criterio | Evidencia Requerida |
|----------|---------------------|
| Usa find con criterios múltiples | Captura del comando find completo |
| Combina sort + uniq + strings | Comandos documentados |
| Filtra con grep | Captura de grep en acción |
| Resuelve niveles 6-8 | Diario actualizado con 3 entradas |

**Desbloqueo:** Completar checklist + entregar mini-escenario + nivel 8 de Bandit resuelto

---

### 🏆 Insignia Integradora: "Fundamentos Listo"

| Criterio | Evidencia Requerida |
|----------|---------------------|
| Todas las 6 insignias de módulo | Checklists completados |
| Diario de wargames completo | 6+ entradas documentadas |
| Portafolio Git actualizado | Repositorio con evidencias |
| Mini-escenarios completados | 6 entregables presentados |

**Desbloqueo:** Completar todas las insignias anteriores + portafolio integrador

---

### Mecánica de Validación

```
┌─────────────────────────────────────────────────────────────────┐
│              VALIDACIÓN DE INSIGNIAS                            │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  NIVEL 1: Autoevaluación                                       │
│  • Estudiante completa checklist                                │
│  • Sube evidencia a su repositorio Git                          │
│                                                                 │
│  NIVEL 2: Revisión Cruzada (Peer Review)                       │
│  • Otro estudiante verifica la evidencia                        │
│  • Confirma que los comandos funcionan                          │
│                                                                 │
│  NIVEL 3: Validación del Facilitador                           │
│  • Revisión aleatoria del 20% de evidencias                     │
│  • Feedback cualitativo en el diario                            │
│                                                                 │
│  NOTA: Las insignias se "desbloquean" al cumplir los           │
│  criterios, pero el facilitador puede revocarlas si             │
│  detecta copia sin comprensión.                                 │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

## Componente 3: Estrategia de Andragogía para Adultes

### Fundamentos Andragógicos

Basado en los principios de **Malcolm Knowles** (andragogía) y la experiencia de Abacom con adultos profesionales:

| Principio | Aplicación en este Ebook |
|-----------|--------------------------|
| **Autonomía** | El estudiante elige su ritmo dentro de cada módulo |
| **Experiencia previa** | Se valida lo que sabe (diagnóstico) y se construye sobre ello |
| **Relevancia inmediata** | Cada comando se explica con casos de uso reales |
| **Centrado en problemas** | Mini-escenarios simulan situaciones profesionales |
| **Motivación interna** | Insignias validan competencias, no solo asistencia |

### Gestión del Síndrome del Impostor

**Problema identificado:** Estudiantes adultos sin experiencia en consola frecuentemente sienten que "no son para esto" o "otros saben más".

**Estrategias de intervención:**

#### 1. Normalización de la Curva de Aprendizaje

```
┌─────────────────────────────────────────────────────────────────┐
│         CURVA DE APRENDIZAJE ESPERADA (y Normal)                │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  Semana 1: 😰 "No sé nada" (normal)                             │
│  Semana 2: 😕 "Esto es confuso" (normal)                        │
│  Semana 3: 🤔 "Empiezo a entender" (progreso real)              │
│  Semana 4: 💪 "Puedo hacer cosas" (competencia emergente)       │
│                                                                 │
│  NOTA: La frustración en semana 1-2 es una PREDICCIÓN            │
│  del aprendizaje, no una señal de incapacidad.                  │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

#### 2. Técnica Pomodoro Adaptada para Adultos

| Fase | Duración | Actividad |
|------|----------|-----------|
| **Calentamiento** | 5 min | Repasar notas del módulo anterior |
| **Estudio activo** | 25 min | Leer teoría + practicar comandos |
| **Micro-reto** | 10 min | Mini-escenario del módulo |
| **Reflexión** | 5 min | Escribir en diario: "¿Qué aprendí?" |
| **Descanso** | 5 min | Levantarse, hidratarse, descansar ojos |

#### 3. Andamiaje Progresivo (Scaffolding)

| Nivel | Descripción | Cuándo |
|-------|-------------|--------|
| **Nivel 1: Ver y Copiar** | Estudiante replica exactamente los ejemplos del módulo | Primeras 2 horas |
| **Nivel 2: Practicar Guiado** | Estudiante modifica parámetros con guía (ej: cambiar permisos) | Horas 2-4 |
| **Nivel 3: Resolver Semi-Guiado** | Estudiante resuelve ejercicios con pistas disponibles | Horas 4-6 |
| **Nivel 4: Resolver Independiente** | Estudiante enfrenta mini-escenarios sin guía | Al finalizar módulo |

#### 4. Frases de Apoyo para el Facilitador

| Situación | Frase Sugerida |
|-----------|----------------|
| "Esto es muy difícil" | "Es normal sentirse así. Tu cerebro está construyendo nuevas conexiones. Dale tiempo." |
| "Los demás saben más" | "Cada uno tiene su ritmo. Lo importante no es compararte, sino avanzar desde donde estás." |
| "No soy técnico/a" | "No naciste sabiendo caminar. Esto es una habilidad que se aprende, no un talento innato." |
| "Me equivoqué" | "Error = aprendizaje en progreso. Los profesionales se equivocan diario. Lo importante es documentar y corregir." |
| "No entiendo para qué sirve" | "Imagina que eres el administrador de un servidor a las 2 AM. Este comando es tu herramienta para resolver." |

### Protocolo de Frustración

Cuando un estudiante muestra signos de frustración (bloqueo, enojo, abandono):

1. **PAUSA**: Detener el estudio inmediato
2. **RESPIRAR**: 5 respiraciones profundas
3. **REFORMULAR**: "¿Qué SÍ entiendes de esto?" (enfocar en logros)
4. **REDUCIR**: Volver al último paso que sí funcionó
5. **REGISTRAR**: Anotar en el diario qué causó la frustración
6. **RETOMAR**: Al día siguiente, no el mismo día

---

## Componente 4: Rúbrica de Evaluación Formativa por Competencias

### Alineación Normativa

Esta rúbrica cumple con:
- **Requisitos de Abacom**: Evaluación por competencias técnicas
- **Normativa SETEC**: Evaluación formativa continua con evidencias
- **NIST CSF 2.0**: Competencias alineadas a funciones del marco

### Estructura de Evaluación

| Criterio | Peso | Descripción |
|----------|------|-------------|
| **Dominio Técnico** | 40% | Ejecución correcta de comandos y resolución de problemas |
| **Rigor Documental en Git** | 30% | Calidad de commits, .gitignore, README, diario de wargames |
| **Buenas Prácticas de Seguridad/NIST** | 30% | Aplicación de principios de seguridad y alineación con NIST CSF 2.0 |

### Rúbrica Detallada

#### A. Dominio Técnico (40 puntos)

| Puntuación | Nivel | Descripción | Evidencia |
|------------|-------|-------------|-----------|
| **36-40** | **Excelente** | Ejecuta todos los comandos sin asistencia, resuelve errores de forma independiente, optimiza soluciones | Mini-escenarios resueltos en tiempo + ejercicios extra |
| **28-35** | **Satisfactorio** | Ejecuta comandos con mínima asistencia, resuelve errores comunes | Mini-escenarios completados + ejercicios prácticos |
| **20-27** | **En Desarrollo** | Ejecuta comandos con guía, necesita asistencia para resolver errores | Ejercicios prácticos con ayuda + mini-escenario parcial |
| **0-19** | **Inicial** | No ejecuta comandos de forma independiente, requiere guía constante | Ejercicios incompletos o sin evidencia |

**Sub-criterios:**
- Navegación y permisos Linux (10 pts)
- Uso de herramientas Kali (8 pts)
- Flujo Git completo (8 pts)
- Gestión de contenedores Docker (7 pts)
- Resolución de Bandit (7 pts)

---

#### B. Rigor Documental en Git (30 puntos)

| Puntuación | Nivel | Descripción | Evidencia |
|------------|-------|-------------|-----------|
| **27-30** | **Excelente** | Commits atómicos con mensajes descriptivos, .gitignore completo, README profesional, diario de wargames detallado | git log muestra historia clara + diario con 6+ entradas |
| **21-26** | **Satisfactorio** | Commits regulares con mensajes aceptables, .gitignore funcional, README presente, diario actualizado | git log con 4+ commits + diario con 4+ entradas |
| **15-20** | **En Desarrollo** | Commits irregulares, mensajes vagos, .gitignore incompleto, diario parcial | git log con 2+ commits + diario con 2+ entradas |
| **0-14** | **Inicial** | No usa Git o lo usa incorrectamente, sin documentación | Sin repositorio o sin commits |

**Sub-criterios:**
- Calidad de commits (mensajes, atomicidad) (10 pts)
- .gitignore para seguridad (6 pts)
- README.md del proyecto (6 pts)
- Diario de wargames (documentación de aprendizaje) (8 pts)

---

#### C. Buenas Prácticas de Seguridad/NIST (30 puntos)

| Puntuación | Nivel | Descripción | Evidencia |
|------------|-------|-------------|-----------|
| **27-30** | **Excelente** | Aplica principios de seguridad en todos los ejercicios, justifica decisiones con NIST CSF 2.0, identifica riesgos proactivamente | Mini-escenarios con justificación NIST + reflexiones en diario |
| **21-26** | **Satisfactorio** | Aplica principios de seguridad, menciona NIST en contexto, sigue buenas prácticas | Mini-escenarios completados + menciones NIST en diario |
| **15-20** | **En Desarrollo** | Aplica seguridad de forma inconsistente, menciona NIST superficialmente | Algunos ejercicios con enfoque de seguridad |
| **0-14** | **Inicial** | No aplica principios de seguridad, no conecta con NIST | Sin evidencia de prácticas de seguridad |

**Sub-criterios:**
- Principio de menor privilegio (8 pts)
- Protección de datos sensibles (8 pts)
- Conexión con NIST CSF 2.0 (7 pts)
- Ética profesional y uso legal (7 pts)

---

### Tabla Resumen de Puntuación

| Criterio | Excelente (90-100%) | Satisfactorio (70-89%) | En Desarrollo (50-69%) | Inicial (0-49%) |
|----------|---------------------|------------------------|------------------------|-----------------|
| **Dominio Técnico (40%)** | 36-40 pts | 28-35 pts | 20-27 pts | 0-19 pts |
| **Rigor Documental (30%)** | 27-30 pts | 21-26 pts | 15-20 pts | 0-14 pts |
| **Seguridad/NIST (30%)** | 27-30 pts | 21-26 pts | 15-20 pts | 0-14 pts |
| **TOTAL** | **90-100** | **70-89** | **50-69** | **0-49** |

### Escala de Certificación Abacom

| Rango | Estado | Acción |
|-------|--------|--------|
| **90-100** | 🏆 **Aprobado con Distinción** | Insignia "Fundamentos Listo" + mención en feedback |
| **70-89** | ✅ **Aprobado** | Insignia "Fundamentos Listo" |
| **50-69** | ⚠️ **En Desarrollo** | Plan de refuerzo + re-evaluación en 1 semana |
| **0-49** | ❌ **No Aprobado** | Recomendación de repetir módulos + tutoría |

---

## Implementación Operativa

### Flujo de Trabajo del Estudiante

```
┌─────────────────────────────────────────────────────────────────┐
│              FLUJO DE APRENDIZAJE POR MÓDULO                    │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  1. LEER módulo (25 min) → Pomodoro 1                          │
│  2. PRACTICAR ejercicios (25 min) → Pomodoro 2                 │
│  3. COMPLETAR mini-escenario (10 min)                          │
│  4. DOCUMENTAR en diario de wargames (5 min)                   │
│  5. SUBIR evidencia a Git (5 min)                              │
│  6. MARCAR checklist de autoevaluación                         │
│  7. SOLICITAR revisión cruzada (peer review)                   │
│  8. RECIBIR insignia al validar los 3 criterios                │
│                                                                 │
│  TIEMPO TOTAL ESTIMADO: 2 horas por módulo                     │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

### Responsabilidades del Facilitador

| Actividad | Frecuencia | Tiempo |
|-----------|------------|--------|
| Revisar diarios de wargames (muestra 20%) | Semanal | 30 min |
| Dar feedback cualitativo en Git | Semanal | 20 min |
| Validar insignias desbloqueadas | Semanal | 15 min |
| Intervenir en casos de frustración | Según necesidad | 10 min/estudiante |
| Evaluar con rúbrica formativa | Al finalizar cada módulo | 15 min/estudiante |

---

## Conclusión

Esta estrategia didáctica transforma el Ebook Guía en un **ecosistema de aprendizaje activo** que:

1. **Respeta la andragogía**: Autonomía, relevancia inmediata, centrado en problemas
2. **Mitiga el síndrome del impostor**: Normalización, andamiaje progresivo, frases de apoyo
3. **Gamifica éticamente**: Insignias que validan competencias reales, no solo participación
4. **Evalúa formativamente**: Feedback continuo con rúbrica alineada a Abacom y SETEC
5. **Conecta con NIST CSF 2.0**: Cada actividad refuerza el marco teórico del curso principal

El resultado: estudiantes que no solo aprenden comandos, sino que desarrollan **confianza técnica** y **competencias profesionales** antes de iniciar el curso principal.

---

> **"El adulto no aprende para la escuela, aprende para la vida. Cada comando que dominas es una herramienta para resolver problemas reales."**

---

## Anexos

### Anexo A: Plantilla de Diario de Wargames

```markdown
# Diario de Wargames — [Nombre del Estudiante]

## Módulo [X]: [Nombre del Módulo]
**Fecha:** [fecha]
**Tiempo de estudio:** [minutos]
**Insignia objetivo:** [nombre de la insignia]

### ¿Qué aprendí hoy?
[Reflexión personal]

### Comandos nuevos que domino:
- `comando`: [explicación breve]

### Errores que cometí (y cómo los resolví):
- **Error:** [descripción]
- **Solución:** [qué hice]

### Conexión con NIST CSF 2.0:
- **Función:** [PROTECT/IDENTIFY/DETECT]
- **Categoría:** [código NIST]
- **Aplicación:** [cómo se conecta]

### Autoevaluación:
- [ ] Checklist completado
- [ ] Ejercicios prácticos terminados
- [ ] Mini-escenario resuelto
- [ ] Evidencia subida a Git

### ¿Qué me costó más trabajo?
[Área de mejora para siguiente sesión]

### ¿Qué quiero aprender próximo?
[Objetivo para siguiente módulo]
```

### Anexo B: Plantilla de Revisión Cruzada (Peer Review)

```markdown
# Revisión Cruzada — Peer Review

**Revisor:** [nombre]
**Autor revisado:** [nombre]
**Módulo evaluado:** [X]

## Criterios de Verificación

| Criterio | ¿Cumple? | Evidencia |
|----------|----------|-----------|
| Checklist completo | Sí / No | |
| Ejercicios prácticos | Sí / No | |
| Mini-escenario resuelto | Sí / No | |
| Commits en Git | Sí / No | |
| Diario de wargames | Sí / No | |

## Observaciones:
[Feedback constructivo]

## Veredicto:
- [ ] Insignia aprobada
- [ ] Necesita ajustes: [descripción]
```

---

*Documento generado para el curso Fundamentos de Ciberseguridad — Agosto 2026 — Abacom*
