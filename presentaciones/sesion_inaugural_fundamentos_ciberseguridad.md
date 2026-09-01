---
marp: true
theme: default
paginate: true
size: 16:9
header: 'Fundamentos de Ciberseguridad — Agosto 2026'
footer: 'Abacom — Sesión Inaugural'
style: |
  section {
    font-family: 'Segoe UI', -apple-system, BlinkMacSystemFont, sans-serif;
    background: #0f172a;
    color: #e2e8f0;
    padding: 25px 40px;
    font-size: 20px;
  }
  h1 {
    color: #38bdf8;
    border-bottom: 2px solid #38bdf8;
    padding-bottom: 0.1em;
    font-size: 1.8em;
    margin-bottom: 0.3em;
  }
  h2 {
    color: #818cf8;
    font-size: 1.3em;
    margin-top: 0;
  }
  p, ul, ol {
    margin-block-start: 0.4em;
    margin-block-end: 0.4em;
  }
  strong {
    color: #fbbf24;
  }
  code {
    background: #1e293b;
    color: #38bdf8;
    padding: 0.15em 0.4em;
    border-radius: 4px;
    font-size: 0.95em;
  }
  blockquote {
    border-left: 4px solid #fbbf24;
    background: #1e293b;
    padding: 0.6em 1em;
    color: #cbd5e1;
    border-radius: 0 6px 6px 0;
    margin: 0.6em 0;
  }
  table {
    border-collapse: collapse;
    width: 100%;
    margin: 0.6em 0;
    background: #1e293b;
    border-radius: 6px;
    overflow: hidden;
  }
  th {
    background: #334155;
    color: #38bdf8;
    padding: 0.5em 0.8em;
    text-align: left;
  }
  td {
    padding: 0.5em 0.8em;
    border-bottom: 1px solid #334155;
  }
  .card {
    background: #1e293b;
    border: 1px solid #334155;
    border-radius: 8px;
    padding: 10px 15px;
    margin-bottom: 8px;
  }
  .warning-card {
    background: #451a03;
    border: 1px solid #b45309;
    border-left: 5px solid #f59e0b;
    border-radius: 6px;
    padding: 8px 12px;
    margin: 6px 0;
    color: #fef3c7;
  }
  .grid-2 {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 20px;
  }
  [data-marpit-fragment] {
    opacity: 0;
    transition: opacity 0.4s ease;
  }
  [data-marpit-fragment].current-fragment,
  [data-marpit-fragment]:last-child {
    opacity: 1;
  }
---

<!-- _class: lead -->

# Bienvenida al Curso

## Fundamentos de Ciberseguridad

### Sesión Inaugural — Agosto 2026

---

# Bienvenida y Saludo Inicial

## ¡Bienvenidos!

<!-- _fragment -->
Es un gusto darles la más cordial bienvenida a **Fundamentos de Ciberseguridad**. Este espacio académico está diseñado para construir una base sólida en los principios, técnicas y mentalidad que rigen la protección de sistemas, redes y datos en el panorama digital actual.

<div class="card">

## 📌 Normas del espacio académico

<!-- _fragment -->
- **Grupo de WhatsApp:** Exclusivo y estrictamente para temas académicos (anuncios, dudas técnicas y recursos).

<!-- _fragment -->
- **Trato respetuoso y profesional** en todo momento entre los participantes.

<!-- _fragment -->
- **Equipos listos:** Hardware y software preparado para las sesiones prácticas.

<!-- _fragment -->
- **Predisposición:** El ingrediente más valioso para aprovechar el curso.

</div>

<!-- _fragment -->
> "La ciberseguridad no es un destino, es una disciplina de mejora continua."

---

<!-- _class: lead -->

# Presentación del Facilitador

## Diego Medardo Saavedra García

---

# Facilitador

## Diego Medardo Saavedra García

<div class="grid-2">
  <div class="card">
    <h3>🎓 Perfil Académico</h3>
    <!-- _fragment -->
    <ul>
      <li><strong>Magíster</strong> en Ciencias y Tecnologías de la Computación</li>
      <li><strong>Licenciado</strong> en Ciencias de la Educación, mención Informática Educativa</li>
    </ul>
  </div>
  <div class="card">
    <h3>💼 Perfil Profesional</h3>
    <!-- _fragment -->
    <ul>
      <li>Servicios tecnológicos para <strong>Abacom</strong></li>
      <li>Instructor universitario (Ing. de Software y Seguridad)</li>
    </ul>
  </div>
</div>

<!-- _fragment -->
> **Enfoque pedagógico:** Conceptos primero, código después. Construimos fundamentos sólidos antes de operar herramientas.

---

<!-- _class: lead -->

# Recorrido por la Plataforma Virtual

## LMS — Entorno de Aprendizaje

---

# Plataforma Virtual (LMS)

## Navegación e Interfaz

<div class="grid-2">
  <div class="card">
    <h3>📢 Canales y Control</h3>
    <!-- _fragment -->
    <ul>
      <li><strong>Visualización de anuncios:</strong> Revisen avisos del curso periódicamente.</li>
      <li><strong>Control de asistencia:</strong> Registro automático de participación.</li>
    </ul>
  </div>
  <div class="card">
    <h3>📚 Recursos Disponibles</h3>
    <!-- _fragment -->
    <ul>
      <li>Ebook guía del curso y laboratorios base.</li>
      <li>Material complementario (artículos, bibliografía y quizzes).</li>
    </ul>
  </div>
</div>

<!-- _fragment -->
> Accedan a la plataforma de forma recurrente. No esperen al último día para explorar cada sección.

---

<!-- _class: lead -->

# Metodología de Trabajo y Recursos

## Cómo vamos a aprender

---

# Metodología y Recursos

<div class="grid-2">
  <div>
    <h3>📖 Recursos Principales</h3>
    <!-- _fragment -->
    <ul>
      <li><strong>Ebook guía:</strong> Material rector del curso.</li>
      <li><strong>Laboratorios base:</strong> Prácticas en entornos controlados y reproducibles.</li>
    </ul>
  </div>
  <div>
    <h3>⏱️ Técnica Pomodoro</h3>
    <!-- _fragment -->
    <table>
      <tr><th>Ciclo</th><th>Trabajo</th><th>Descanso</th></tr>
      <tr><td>1 - 4</td><td>25 min</td><td>5 min</td></tr>
      <tr><td>Ciclos 4+</td><td>—</td><td>15-20 min</td></tr>
    </table>
  </div>
</div>

<!-- _fragment -->
> **¿Por qué Pomodoro?** Mantiene la concentración máxima, reduce la fatiga cognitiva y fomenta la disciplina de pausa activa en consola.

---

<!-- _class: lead -->

# Dinámica de Presentación

## Conozcámonos

---

# Presentación de los Participantes

## Su turno (4 elementos clave)

<div class="grid-2">
  <div class="card">
    <!-- _fragment -->
    <p><strong>1. Nombre completo</strong></p>
    <!-- _fragment -->
    <p><strong>2. Ciudad de origen</strong> (¿De dónde viene?)</p>
  </div>
  <div class="card">
    <!-- _fragment -->
    <p><strong>3. Actividad actual</strong> (Profesional o académica)</p>
    <!-- _fragment -->
    <p><strong>4. Motivación principal</strong> (Objetivo en el curso)</p>
  </div>
</div>

<!-- _fragment -->
### Pautas de participación
- Brevedad: máximo **1-2 minutos** por persona.
- Autenticidad y respeto activo hacia los compañeros.

<!-- _fragment -->
> En ciberseguridad, el trabajo en equipo y la comunicación clara son tan críticos como la técnica.

---

<!-- _class: lead -->

# Evaluación de Diagnóstico

## Midamos el punto de partida

---

# Evaluación de Diagnóstico

## Características de la prueba y Advertencia

<div class="grid-2">
  <div class="card">
    <h3>📊 Estructura</h3>
    <!-- _fragment -->
    <ul>
      <li><strong>10 preguntas</strong> de opción múltiple.</li>
      <li><strong>10 puntos</strong> c/u (100 pts totales).</li>
      <li>Aplicación directa en el <strong>LMS</strong>.</li>
    </ul>
  </div>
  <div class="warning-card">
    <h3>⚠️ Integridad Académica</h3>
    <!-- _fragment -->
    <p>El uso acrítico de <strong>Inteligencia Artificial</strong> anula el diagnóstico. Cuidado con los <strong>canarios técnicos</strong> incrustados en los reactivos.</p>
  </div>
</div>

<!-- _fragment -->
> La honestidad intelectual es el primer pilar de un profesional de ciberseguridad confiable.

---

<!-- _class: lead -->

# Actividad Práctica Sorpresa

## Wargames de Seguridad

---

# Wargames de Seguridad en Linux

## Introducción a la práctica interactiva

<!-- _fragment -->
Entornos controlados para aplicar comandos en consola, técnicas de exploración y resolución de retos de seguridad progresivos.

<div class="card">
  <h3>🎯 Primer reto: OverTheWire — Bandit</h3>
  <!-- _fragment -->
  <p><strong>Plataforma:</strong> <a href="https://overthewire.org/wargames/bandit/bandit0.html" target="_blank">bandit0.html</a></p>
  <!-- _fragment -->
  <ul>
    <li>Inicio en el <strong>Nivel 0 (Bandit0)</strong> mediante conexión <strong>SSH</strong>.</li>
    <li>Descubrir contraseñas sucesivas documentando cada comando ejecutado.</li>
  </ul>
</div>

<!-- _fragment -->
> No teman al terminal. Cada error es información.

---

<!-- _class: lead -->

# Cierre y Contacto

## Lo que sigue

---

# Cierre y Datos de Contacto

<div class="grid-2">
  <div class="card">
    <h3>🚀 Próximos Pasos</h3>
    <!-- _fragment -->
    <ul>
      <li>Completar la evaluación de diagnóstico en la plataforma.</li>
      <li>Explorar el <strong>Bandit Nivel 0</strong>.</li>
      <li>Revisar el <strong>Ebook Unidad 1</strong>.</li>
      <li>Atentos a los anuncios del LMS y WhatsApp.</li>
    </ul>
  </div>
  <div class="card">
    <h3>✉️ Contacto</h3>
    <!-- _fragment -->
    <p><strong>Atentamente,</strong><br>Diego Saavedra<br><em>Facilitador de Abacom</em></p>
  </div>
</div>

<!-- _fragment -->
> Estoy para acompañar su aprendizaje dentro de los canales oficiales del curso.

---

<!-- _class: lead -->

# ¡Manos a la obra!

## Bienvenidos a Fundamentos de Ciberseguridad

### Sesión Inaugural — Agosto