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
	HdR\ zines/RSWC\ Heian/heian\ zine.pdf \
	HdR\ zines/Ferroviario/ferroviario\ zine.pdf \
	HdR\ zines/SyS\ Inmortal/inmortal\ zine.pdf \
	HdR\ zines/SyS\ Inmortal\ Reserva\ Especial/inmortal_reserva_especial\ zine.pdf \
	HdR\ zines/RSWC\ Bushido/bushido\ zine.pdf \
	HdR\ zines/RSWC\ Skygraph/skygraph\ zine.pdf

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
HdR\ zines/SyS\ Caballero/caballero\ zine.pdf: $(wildcard hdr_zines_src/caballero/*.typ hdr_zines_src/caballero/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Caballero"
	$(TYPST) hdr_zines_src/caballero/caballero.typ "$@"

HdR\ zines/RSWC\ Suite\ Iberia/iberia\ zine.pdf: $(wildcard hdr_zines_src/iberia/*.typ hdr_zines_src/iberia/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Suite Iberia"
	$(TYPST) hdr_zines_src/iberia/iberia.typ "$@"

HdR\ zines/RSWC\ Vainqueur/vainqueur\ zine.pdf: $(wildcard hdr_zines_src/vainqueur/*.typ hdr_zines_src/vainqueur/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Vainqueur"
	$(TYPST) hdr_zines_src/vainqueur/vainqueur.typ "$@"

HdR\ zines/RSWC\ Vainqueur/vainqueur_de\ zine.pdf: $(wildcard hdr_zines_src/vainqueur/*.typ hdr_zines_src/vainqueur/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Vainqueur"
	$(TYPST) hdr_zines_src/vainqueur/vainqueur_de.typ "$@"

HdR\ zines/RSWC\ Verne/verne\ zine.pdf: $(wildcard hdr_zines_src/verne/*.typ hdr_zines_src/verne/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Verne"
	$(TYPST) hdr_zines_src/verne/verne.typ "$@"

HdR\ zines/RSWF\ Ichi/ichi\ zine.pdf: $(wildcard hdr_zines_src/ichi/*.typ hdr_zines_src/ichi/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWF Ichi"
	$(TYPST) hdr_zines_src/ichi/ichi.typ "$@"

HdR\ zines/RSWC\ Super\ Stellar\ Ala\ 14/ala14\ zine.pdf: $(wildcard hdr_zines_src/ala14/*.typ hdr_zines_src/ala14/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Super Stellar Ala 14"
	$(TYPST) hdr_zines_src/ala14/ala14.typ "$@"

HdR\ zines/RSWC\ Supersharkomatic/supersharkomatic\ zine.pdf: $(wildcard hdr_zines_src/supersharkomatic/*.typ hdr_zines_src/supersharkomatic/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Supersharkomatic"
	$(TYPST) hdr_zines_src/supersharkomatic/supersharkomatic.typ "$@"

HdR\ zines/RSWC\ Super\ Stellar\ Typhoon/typhoon\ zine.pdf: $(wildcard hdr_zines_src/typhoon/*.typ hdr_zines_src/typhoon/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Super Stellar Typhoon"
	$(TYPST) hdr_zines_src/typhoon/typhoon.typ "$@"

HdR\ zines/SyS\ Roquina/roquina\ zine.pdf: $(wildcard hdr_zines_src/roquina/*.typ hdr_zines_src/roquina/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Roquina"
	$(TYPST) hdr_zines_src/roquina/roquina.typ "$@"

HdR\ zines/SyS\ Digimático/digimatico\ zine.pdf: $(wildcard hdr_zines_src/digimatico/*.typ hdr_zines_src/digimatico/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Digimático"
	$(TYPST) hdr_zines_src/digimatico/digimatico.typ "$@"

HdR\ zines/RSWC\ Forest\ Defender/forest_defender\ zine.pdf: $(wildcard hdr_zines_src/forest_defender/*.typ hdr_zines_src/forest_defender/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Forest Defender"
	$(TYPST) hdr_zines_src/forest_defender/forest_defender.typ "$@"

HdR\ zines/RSWC\ Salto\ de\ Fe/salto_de_fe\ zine.pdf: $(wildcard hdr_zines_src/salto_de_fe/*.typ hdr_zines_src/salto_de_fe/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Salto de Fe"
	$(TYPST) hdr_zines_src/salto_de_fe/salto_de_fe.typ "$@"

HdR\ zines/RSWC\ Heian/heian\ zine.pdf: $(wildcard hdr_zines_src/heian/*.typ hdr_zines_src/heian/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Heian"
	$(TYPST) hdr_zines_src/heian/heian.typ "$@"

HdR\ zines/Ferroviario/ferroviario\ zine.pdf: $(wildcard hdr_zines_src/ferroviario/*.typ hdr_zines_src/ferroviario/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/Ferroviario"
	$(TYPST) hdr_zines_src/ferroviario/ferroviario.typ "$@"

HdR\ zines/SyS\ Inmortal/inmortal\ zine.pdf: $(wildcard hdr_zines_src/inmortal/*.typ hdr_zines_src/inmortal/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Inmortal"
	$(TYPST) hdr_zines_src/inmortal/inmortal.typ "$@"

HdR\ zines/SyS\ Inmortal\ Reserva\ Especial/inmortal_reserva_especial\ zine.pdf: $(wildcard hdr_zines_src/inmortal_reserva_especial/*.typ hdr_zines_src/inmortal_reserva_especial/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Inmortal Reserva Especial"
	$(TYPST) hdr_zines_src/inmortal_reserva_especial/inmortal_reserva_especial.typ "$@"

HdR\ zines/RSWC\ Bushido/bushido\ zine.pdf: $(wildcard hdr_zines_src/bushido/*.typ hdr_zines_src/bushido/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Bushido"
	$(TYPST) hdr_zines_src/bushido/bushido.typ "$@"

HdR\ zines/RSWC\ Midori/bushido_midori\ zine.pdf: $(wildcard hdr_zines_src/bushido/*.typ hdr_zines_src/bushido/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Midori"
	$(TYPST) hdr_zines_src/bushido/bushido_midori.typ "$@"

HdR\ zines/RSWC\ Skygraph/skygraph\ zine.pdf: $(wildcard hdr_zines_src/skygraph/*.typ hdr_zines_src/skygraph/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Skygraph"
	$(TYPST) hdr_zines_src/skygraph/skygraph.typ "$@"


