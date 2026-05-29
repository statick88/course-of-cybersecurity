# ──────────────────────────────────────────────────────────
# Makefile — Curso Fundamentos de Ciberseguridad
# Automatización de build, validación y herramientas
# ──────────────────────────────────────────────────────────

.PHONY: build build-pdf serve clean validate validate-frontmatter \
        validate-links validate-spelling help stats stage-all

# ─── Build ────────────────────────────────────────────────

build:
	quarto render --to html

build-pdf:
	quarto render --to pdf

serve:
	quarto preview

clean:
	rm -rf _site _freeze _book

rebuild: clean build

# ─── Validación ───────────────────────────────────────────

validate: validate-frontmatter validate-links validate-spelling

validate-frontmatter:
	@echo "🔍 Verificando frontmatter de todos los .qmd..."
	@errors=0; \
	for f in $$(find . -name "*.qmd" -not -path "./_*" -not -path "./.git/*"); do \
		title=$$(head -20 "$$f" | grep -E '^title:' | head -1); \
		if [ -z "$$title" ]; then \
			echo "  ❌ $$f — sin title en frontmatter"; \
			errors=$$((errors + 1)); \
		fi; \
	done; \
	if [ $$errors -eq 0 ]; then echo "  ✅ Todos los archivos tienen frontmatter válido"; fi

validate-links:
	@echo "🔍 Verificando referencias a imágenes existentes..."
	@errors=0; \
	while IFS= read -r line; do \
		img=$$(echo "$$line" | sed -n 's/.*!\[.*\](\([^)]*\)).*/\1/p'); \
		if [ -n "$$img" ] && [ ! -f "$$img" ]; then \
			echo "  ❌ Imagen faltante: $$img"; \
			errors=$$((errors + 1)); \
		fi; \
	done < <(find . -name "*.qmd" -not -path "./_*" -not -path "./.git/*" -exec grep -l '!\[\](.*\.\(png\|jpg\|svg\))' {} \;); \
	if [ $$errors -eq 0 ]; then echo "  ✅ Todas las imágenes existen"; fi

validate-spelling:
	@echo "🔍 Verificando ortografía básica (si aspell está disponible)..."
	@if command -v aspell >/dev/null 2>&1; then \
		errors=0; \
		for f in $$(find . -name "*.qmd" -not -path "./_*" -not -path "./.git/*" -not -path "./minicursos/*"); do \
			misspelled=$$(aspell -d spanish list < "$$f" 2>/dev/null | sort -u | head -20); \
			if [ -n "$$misspelled" ]; then \
				echo "  ⚠️  $$f — posibles errores:"; \
				echo "$$misspelled" | sed 's/^/       /'; \
				errors=$$((errors + 1)); \
			fi; \
		done; \
		if [ $$errors -eq 0 ]; then echo "  ✅ Sin errores ortográficos"; fi \
	else \
		echo "  ⚠️  aspell no instalado — salteando validación ortográfica"; \
	fi

# ─── Estadísticas ─────────────────────────────────────────

stats:
	@echo "📊 Estadísticas del Curso"
	@echo "─────────────────────────"
	@echo ""
	@echo "Archivos por tipo:"
	@echo "  Módulos:    $$(find content/modulo-* -name '*.qmd' | wc -l | tr -d ' ')"
	@echo "  Labs:       $$(find labs -name '*.qmd' | wc -l | tr -d ' ')"
	@echo "  Minicursos: $$(find minicursos -name '*.qmd' | wc -l | tr -d ' ')"
	@echo "  Quizzes:    $$(find quizzes -name '*.qmd' | wc -l | tr -d ' ')"
	@echo "  Simplified: $$(find content-simplified -name '*.qmd' | wc -l | tr -d ' ')"
	@echo ""
	@echo "Total líneas de contenido:"
	@find . -name "*.qmd" -not -path "./_*" -not -path "./.git/*" -exec cat {} + | wc -l | tr -d ' ' | xargs echo "  ~"
	@echo ""
	@echo "Distribución por tipo (.qmd):"
	@find . -name "*.qmd" -not -path "./_*" -not -path "./.git/*" -exec wc -l {} + | sort -rn | head -15

# ─── Git y staging ───────────────────────────────────────

stage-all:
	git add -A

# ─── Ayuda ────────────────────────────────────────────────

help:
	@echo "Comandos disponibles:"
	@echo ""
	@echo "  make build         — Renderizar sitio HTML completo"
	@echo "  make build-pdf     — Renderizar PDF"
	@echo "  make serve         — Preview local (quarto preview)"
	@echo "  make clean         — Limpiar _site, _freeze, _book"
	@echo "  make rebuild       — clean + build"
	@echo "  make validate      — Validar frontmatter + imágenes + ortografía"
	@echo "  make stats         — Estadísticas del curso"
	@echo "  make help          — Esta ayuda"
