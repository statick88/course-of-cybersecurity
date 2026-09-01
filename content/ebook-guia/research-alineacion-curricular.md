# SDD Research: Alineación Curricular del Ebook Guía
## Mapeo de Módulos con NIST CSF 2.0, ISO 31000 y Temario Abacom

**Fecha:** 2026-09-01
**Investigador:** SDD Research Agent
**Fuente:** NIST CSF 2.0 (NIST CSWP 29, Feb 2024), ISO 31000:2018, documentación de referencia

---

## 1. Resumen Ejecutivo

El Ebook Guía actual cubre 6 módulos técnicos (Linux, Kali, Git, Docker, Bandit 0-5, Bandit 6-10) que se alinean parcialmente con los marcos NIST CSF 2.0 e ISO 31000. Este documento propone un mapeo explícito para fortalecer la coherencia pedagógica y la justificación curricular ante estudiantes y stakeholders de Abacom.

**Hallazgo principal:** Los módulos actuales cubren principalmente las funciones PROTECT e IDENTIFY de NIST CSF 2.0, con brechas en GOVERN, DETECT, RESPOND y RECOVER que podrían abordarse con extensiones menores al contenido existente.

---

## 2. Mapeo de Módulos del Ebook con NIST CSF 2.0

### 2.1 Estructura NIST CSF 2.0 (Referencia)

| Función | Identificador | Descripción |
|---------|---------------|-------------|
| **GOVERN** | GV | Gobernanza del riesgo de ciberseguridad (NUEVO en 2.0) |
| **IDENTIFY** | ID | Identificación de activos, riesgos y amenazas |
| **PROTECT** | PR | Implementación de salvaguardas |
| **DETECT** | DE | Detección continua de eventos de seguridad |
| **RESPOND** | RS | Respuesta a incidentes detectados |
| **RECOVER** | RC | Recuperación post-incidente |

### 2.2 Mapeo Propuesto

| Módulo Ebook | NIST CSF 2.0 Función | Categorías Específicas | Justificación |
|--------------|---------------------|------------------------|---------------|
| **Módulo 1: Linux y Consola** | PROTECT (PR.AC, PR.PT) | Identity Management, Access Control, Protective Technology | Permisos de archivos, usuarios, sudo = control de acceso |
| **Módulo 2: Kali Linux** | IDENTIFY (ID.RA, ID.SC) | Risk Assessment, Supply Chain Risk | Herramientas de reconocimiento y análisis de vulnerabilidades |
| **Módulo 3: Git** | PROTECT (PR.DS, PR.IP) | Data Security, Information Protection | Versionado, .gitignore para secretos, integridad del código |
| **Módulo 4: Docker** | PROTECT (PR.PT, PR.AC) | Protective Technology, Access Control | Aislamiento de contenedores, gestión de imágenes |
| **Módulo 5: Bandit (0-5)** | IDENTIFY (ID.AM, ID.RA) | Asset Management, Risk Assessment | Reconocimiento de sistema, identificación de archivos sensibles |
| **Módulo 6: Bandit (6-10)** | DETECT (DE.CM, DE.AE) | Continuous Monitoring, Adverse Event Analysis | Búsqueda de archivos, filtrado de logs, análisis de binarios |

### 2.3 Brechas Identificadas

| Función NIST CSF 2.0 | Estado en Ebook | Recomendación |
|---------------------|-----------------|---------------|
| **GOVERN** | ❌ No cubierto | Agregar sección de gobernanza en Módulo 1 o introducción |
| **IDENTIFY** | ✅ Parcialmente cubierto | Módulos 2 y 5 cubren ID.RA y ID.AM |
| **PROTECT** | ✅ Bien cubierto | Módulos 1, 3, 4 cubren PR.AC, PR.DS, PR.PT |
| **DETECT** | ✅ Parcialmente cubierto | Módulo 6 introduce DE.CM |
| **RESPOND** | ❌ No cubierto | Opcional: agregar sección de respuesta en Módulo 6 |
| **RECOVER** | ❌ No cubierto | Opcional: agregar sección de recuperación en Módulo 4 (Docker) |

---

## 3. Mapeo con ISO 31000

### 3.1 Proceso ISO 31000 (Referencia)

1. Establecer el contexto
2. Identificación del riesgo
3. Análisis del riesgo
4. Evaluación del riesgo
5. Tratamiento del riesgo
6. Monitoreo y revisión
7. Registro y reporte

### 3.2 Mapeo Propuesto

| Módulo Ebook | Fase ISO 31000 | Actividad Específica |
|--------------|----------------|---------------------|
| **Módulo 1** | Establecer el contexto | Definir usuarios, permisos, superficie de ataque del sistema |
| **Módulo 2** | Identificación del riesgo | Reconocimiento con nmap, identificación de vulnerabilidades |
| **Módulo 3** | Tratamiento del riesgo | Protección de código fuente, control de versiones como mitigación |
| **Módulo 4** | Tratamiento del riesgo | Aislamiento de aplicaciones, reducción de superficie de ataque |
| **Módulo 5** | Identificación + Evaluación | Descubrimiento de archivos sensibles, evaluación de exposición |
| **Módulo 6** | Monitoreo y revisión | Búsqueda proactiva de indicadores, análisis de logs |

---

## 4. Alineación con Unidades del Temario Abacom

### 4.1 Mapeo Directo (Basado en estructura típica de cursos Abacom)

| Unidad Curso Abacom | Módulo(s) Ebook Relacionado(s) | Tipo de Alineación |
|---------------------|-------------------------------|-------------------|
| **Unidad I: Gestión de Riesgo** | Módulo 1 (permisos), Módulo 2 (reconocimiento) | Preparación: fundamentos técnicos para entender riesgo |
| **Unidad II: Marco NIST CSF 2.0** | Todos los módulos (ver mapeo sección 2) | Fundamento práctico para entender el marco teórico |
| **Unidad III: Hardening de Sistemas e Identidades** | Módulo 1 (Linux), Módulo 2 (Kali), Módulo 4 (Docker) | **Alineación directa**: comandos y técnicas de hardening |
| **Unidad IV: Vectores de Ataque y Superficie de Ataque** | Módulo 5 y 6 (Bandit) | **Alineación directa**: laboratorios prácticos de explotación controlada |
| **Unidad V: Respuesta a Incidentes** | Módulo 6 (parcialmente) | Preparación: fundamentos de detección |

### 4.2 Justificación Pedagógica

El Ebook Guía funciona como **pre-técnico** que nivelará a los estudiantes (diagnóstico promedio: 51.4/100) antes de enfrentar las unidades oficiales:

- **Estudiantes sin experiencia en consola** → Módulos 1-2 les dan la base
- **Estudiantes sin control de versiones** → Módulo 3 les prepara para laboratorios colaborativos
- **Estudiantes sin entornos de práctica** → Módulo 4 les da Docker como laboratorio portátil
- **Estudiantes que necesitan práctica aplicada** → Módulos 5-6 consolidan todo en retos gamificados

---

## 5. Análisis de Brechas y Recomendaciones

### 5.1 Brechas Detectadas

| Brecha | Impacto | Prioridad |
|--------|---------|-----------|
| Falta referencia explícita a NIST CSF en los módulos | Medio: estudiantes no conectan práctica con teoría | Agregar "¿Por qué es importante?" en cada módulo |
| Falta referencia explícita a ISO 31000 | Bajo: es un marco más empresarial | Mencionar en introducción del ebook |
| No hay sección de "Gobernanza" (GOVERN) | Alto: es la función nueva de CSF 2.0 | Agregar sección breve en Módulo 1 o introducción |
| No hay sección de "Respuesta a Incidentes" | Medio: importante para el curso completo | Extender Módulo 6 con ejemplo de respuesta |
| No hay sección de "Recuperación" | Bajo: se cubre en el curso principal | Mencionar en conclusión del ebook |

### 5.2 Recomendaciones de Mejora

#### Corto plazo (inmediato)
1. Agregar en cada módulo un recuadro "**Conexión con NIST CSF 2.0**" que indique qué función se está desarrollando
2. Agregar en la introducción del ebook un mapeo visual de los 6 módulos con las funciones NIST
3. Incluir en el Módulo 1 una sección breve sobre "Gobernanza de usuarios y permisos" (GOVERN)

#### Medio plazo (próxima iteración)
4. Extender el Módulo 6 con un escenario de "Detección y Respuesta" usando Bandit como caso de estudio
5. Agregar un módulo opcional de "Respuesta a Incidentes Básica" que conecte con la Unidad V del curso
6. Crear un glosario de términos alineado con NIST CSF 2.0 e ISO 31000

#### Largo plazo (futuras cohortes)
7. Desarrollar evaluaciones por competencia alineadas a categorías NIST
8. Crear rutas de aprendizaje diferenciadas según diagnóstico inicial
9. Integrar los validadores automáticos con feedback basado en competencias NIST

---

## 6. Validación de Datos Técnicos

### 6.1 Verificación de Comandos

Todos los comandos revisados en los módulos 1-6 son técnicamente correctos y están actualizados:

| Comando | Módulo | Estado |
|---------|--------|--------|
| `chmod`, `chown`, `sudo` | 1 | ✅ Correcto |
| `docker exec`, `docker ps`, `docker run` | 2, 4 | ✅ Correcto |
| `git init`, `git add`, `git commit`, `git push` | 3 | ✅ Correcto |
| `ssh banditX@bandit.labs.overthewire.org -p 2220` | 5, 6 | ✅ Correcto |
| `find`, `grep`, `sort`, `uniq`, `strings` | 5, 6 | ✅ Correcto |

### 6.2 Verificación de Referencias

- **OverTheWire Bandit:** https://overthewire.org/wargames/bandit/ (activo, niveles 0-34 disponibles)
- **Kali Linux:** https://www.kali.org/ (documentación oficial referenciada correctamente)
- **Docker Docs:** https://docs.docker.com/ (comandos verificados contra documentación oficial)
- **NIST CSF 2.0:** https://www.nist.gov/cyberframework (marco actualizado Feb 2024)

---

## 7. Conclusión

El Ebook Guía tiene una **alineación sólida** con los marcos NIST CSF 2.0 e ISO 31000, cubriendo principalmente las funciones PROTECT e IDENTIFY. Las brechas identificadas (GOVERN, RESPOND, RECOVER) son esperables dado que el ebook es material **preparatorio** y no el curso completo.

**Recomendación principal:** Agregar referencias explícitas a NIST CSF 2.0 en cada módulo para que los estudiantes conecten la práctica técnica con el marco teórico que estudiarán en las unidades oficiales de Abacom.

---

## Referencias

1. NIST CSWP 29 - The NIST Cybersecurity Framework (CSF) 2.0 (February 26, 2024)
2. ISO 31000:2018 - Risk management — Guidelines
3. NIST SP 800-53 Rev. 5 - Security and Privacy Controls
4. OverTheWire - Bandit Wargame: https://overthewire.org/wargames/bandit/
5. Kali Linux Documentation: https://www.kali.org/docs/
6. Docker Documentation: https://docs.docker.com/
