# 🛡️ Fundamentos de Ciberseguridad

**Curso profesional basado en NIST CSF 2.0 y tendencias 2026**

## Resultado

Repositorio del curso separado en dos componentes:
- **Contenido educativo**: este repo (`course-of-cybersecurity`), enfocado en libros Quarto, quizzes, guías y anexos.
- **Motor de laboratorios**: submódulo en `labs/core-engine` (`abc-cyb-101-labs`), con Docker, validadores HMAC y stack SIEM.

## Inicio rápido

```bash
# Clonar curso + submódulo
git clone https://github.com/statick88/course-of-cybersecurity.git
cd course-of-cybersecurity
git submodule update --init --recursive

# Construir y ejecutar labs
cd labs/core-engine
docker compose up -d
```

## Estructura

```
course-of-cybersecurity/
├── index.qmd
├── content/                  # Contenido teórico por módulos
├── labs/
│   ├── core-engine/          # Submódulo: infraestructura Docker + validadores
│   ├── lab01-nist-mapping.qmd
│   ├── lab02-mfa-setup.qmd
│   └── manual-despliegue-docker.qmd
├── quizzes/
├── instructor/
└── images/
```

## Referencias

| Recurso | Repositorio | Rama |
|---------|-------------|------|
| Curso / Ebook | `statick88/course-of-cybersecurity` | `main` |
| Labs engine | `statick88/abc-cyb-101-labs` | `main` |

## Licencia

**Creative Commons Compartir Igual 4.0 (CC BY-SA 4.0)**
