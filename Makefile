# Makefile for building watch zines with Typst

.PHONY: all clean help

# Configuration
FONT_PATH := $(HOME)/.local/share/fonts
TYPST := /snap/bin/typst compile --root . --font-path $(FONT_PATH) --input digital=false

# Source directories and files
SRC_LIB := $(wildcard src/*.typ)

# Target list
TARGETS := \
	HdR\ zines/SyS\ Caballero/caballero\ zine.pdf \
	HdR\ zines/RSWC\ Suite\ Iberia/iberia\ zine.pdf \
	HdR\ zines/RSWC\ Vainqueur/vainqueur\ zine.pdf \
	HdR\ zines/RSWC\ Vainqueur/vainqueur_de\ zine.pdf \
	HdR\ zines/RSWC\ Verne/verne\ zine.pdf \
	HdR\ zines/RSWF\ Ichi/ichi\ zine.pdf \
	HdR\ zines/RSWC\ Super\ Stellar\ Ala\ 14/ala14\ zine.pdf \
	HdR\ zines/RSWC\ Supersharkomatic/supersharkomatic\ zine.pdf \
	HdR\ zines/RSWC\ Super\ Stellar\ Typhoon/typhoon\ zine.pdf \
	HdR\ zines/SyS\ Roquina/roquina\ zine.pdf \
	HdR\ zines/SyS\ Digimático/digimatico\ zine.pdf \
	HdR\ zines/RSWC\ Forest\ Defender/forest_defender\ zine.pdf \
	HdR\ zines/RSWC\ Salto\ de\ Fe/salto_de_fe\ zine.pdf \
	HdR\ zines/Ferroviario/ferroviario\ zine.pdf \
	HdR\ zines/SyS\ Inmortal/inmortal\ zine.pdf \
	HdR\ zines/SyS\ Inmortal\ Reserva\ Especial/inmortal_reserva_especial\ zine.pdf \
	HdR\ zines/RSWC\ Bushido/bushido\ zine.pdf

all: $(TARGETS)

# Help target
help:
	@echo "Watch Zine Build System"
	@echo ""
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  all        Build all zines (default)"
	@echo "  clean      Remove all built PDFs"
	@echo "  help       Show this help message"

# Clean target
clean:
	rm -rf "HdR zines"

# Build rules  
HdR\ zines/SyS\ Caballero/caballero\ zine.pdf: $(wildcard caballero/*.typ caballero/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Caballero"
	$(TYPST) caballero/caballero.typ "$@"

HdR\ zines/RSWC\ Suite\ Iberia/iberia\ zine.pdf: $(wildcard iberia/*.typ iberia/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Suite Iberia"
	$(TYPST) iberia/iberia.typ "$@"

HdR\ zines/RSWC\ Vainqueur/vainqueur\ zine.pdf: $(wildcard vainqueur/*.typ vainqueur/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Vainqueur"
	$(TYPST) vainqueur/vainqueur.typ "$@"

HdR\ zines/RSWC\ Vainqueur/vainqueur_de\ zine.pdf: $(wildcard vainqueur/*.typ vainqueur/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Vainqueur"
	$(TYPST) vainqueur/vainqueur_de.typ "$@"

HdR\ zines/RSWC\ Verne/verne\ zine.pdf: $(wildcard verne/*.typ verne/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Verne"
	$(TYPST) verne/verne.typ "$@"

HdR\ zines/RSWF\ Ichi/ichi\ zine.pdf: $(wildcard ichi/*.typ ichi/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWF Ichi"
	$(TYPST) ichi/ichi.typ "$@"

HdR\ zines/RSWC\ Super\ Stellar\ Ala\ 14/ala14\ zine.pdf: $(wildcard ala14/*.typ ala14/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Super Stellar Ala 14"
	$(TYPST) ala14/ala14.typ "$@"

HdR\ zines/RSWC\ Supersharkomatic/supersharkomatic\ zine.pdf: $(wildcard supersharkomatic/*.typ supersharkomatic/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Supersharkomatic"
	$(TYPST) supersharkomatic/supersharkomatic.typ "$@"

HdR\ zines/RSWC\ Super\ Stellar\ Typhoon/typhoon\ zine.pdf: $(wildcard typhoon/*.typ typhoon/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Super Stellar Typhoon"
	$(TYPST) typhoon/typhoon.typ "$@"

HdR\ zines/SyS\ Roquina/roquina\ zine.pdf: $(wildcard roquina/*.typ roquina/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Roquina"
	$(TYPST) roquina/roquina.typ "$@"

HdR\ zines/SyS\ Digimático/digimatico\ zine.pdf: $(wildcard digimatico/*.typ digimatico/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Digimático"
	$(TYPST) digimatico/digimatico.typ "$@"

HdR\ zines/RSWC\ Forest\ Defender/forest_defender\ zine.pdf: $(wildcard forest_defender/*.typ forest_defender/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Forest Defender"
	$(TYPST) forest_defender/forest_defender.typ "$@"

HdR\ zines/RSWC\ Salto\ de\ Fe/salto_de_fe\ zine.pdf: $(wildcard salto_de_fe/*.typ salto_de_fe/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Salto de Fe"
	$(TYPST) salto_de_fe/salto_de_fe.typ "$@"

HdR\ zines/Ferroviario/ferroviario\ zine.pdf: $(wildcard ferroviario/*.typ ferroviario/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/Ferroviario"
	$(TYPST) ferroviario/ferroviario.typ "$@"

HdR\ zines/SyS\ Inmortal/inmortal\ zine.pdf: $(wildcard inmortal/*.typ inmortal/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Inmortal"
	$(TYPST) inmortal/inmortal.typ "$@"

HdR\ zines/SyS\ Inmortal\ Reserva\ Especial/inmortal_reserva_especial\ zine.pdf: $(wildcard inmortal_reserva_especial/*.typ inmortal_reserva_especial/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Inmortal Reserva Especial"
	$(TYPST) inmortal_reserva_especial/inmortal_reserva_especial.typ "$@"

HdR\ zines/RSWC\ Bushido/bushido\ zine.pdf: $(wildcard bushido/*.typ bushido/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Bushido"
	$(TYPST) bushido/bushido.typ "$@"

HdR\ zines/RSWC\ Midori/bushido_midori\ zine.pdf: $(wildcard bushido/*.typ bushido/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Midori"
	$(TYPST) bushido/bushido_midori.typ "$@"


