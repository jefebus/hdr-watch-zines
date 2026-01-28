# Makefile for building watch zines with Typst

.PHONY: all clean help png-all

# Configuration
FONT_PATH := $(HOME)/.local/share/fonts
TYPST := /snap/bin/typst compile --root . --font-path $(FONT_PATH) 

# Source directories and files
SRC_LIB := $(wildcard src/*.typ)

# Target list - PDFs
pdf-all: pdf-caballero pdf-competidor pdf-cosmotemp pdf-decotimer pdf-dirty_fifteen pdf-world_timer \
	pdf-iberia pdf-vainqueur pdf-vainqueur_de pdf-verne pdf-ichi pdf-ala14 \
	pdf-supersharkomatic pdf-typhoon pdf-roquina pdf-forest_defender pdf-salto_de_fe \
	pdf-heian pdf-ferroviario pdf-galeno pdf-gamma_gibraltar pdf-inmortal \
	pdf-inmortal_reserva_especial pdf-bushido pdf-skygraph \
	pdf-monumental pdf-viajero
	
png-all: png-caballero png-competidor png-cosmotemp png-decotimer png-dirty_fifteen png-world_timer \
	png-iberia png-vainqueur png-vainqueur_de png-verne png-ichi png-ala14 \
	png-supersharkomatic png-typhoon png-roquina png-forest_defender png-salto_de_fe \
	png-heian png-ferroviario png-galeno png-gamma_gibraltar png-inmortal \
	png-inmortal_reserva_especial png-bushido png-skygraph \
	png-monumental png-viajero

all: pdf-all png-all

# Help target
help:
	@echo "Watch Zine Build System"
	@echo ""
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  all        Build all PDFs and PNGs (default)"
	@echo "  pdf-all    Build all PDF versions of zines"
	@echo "  png-all    Build PNG page versions for all zines"
	@echo "  pdf-NAME   Build PDF for specific zine (e.g., make pdf-caballero)"
	@echo "  png-NAME   Build PNG pages for specific zine (e.g., make png-caballero)"
	@echo "  clean      Remove all built PDFs and PNGs"
	@echo "  help       Show this help message"
	@echo ""
	@echo "Available zines:"
	@echo "  caballero, competidor, cosmotemp, decotimer, dirty_fifteen, world_timer,"
	@echo "  iberia, vainqueur, vainqueur_de, verne, ichi, ala14,"
	@echo "  supersharkomatic, typhoon, roquina, forest_defender, salto_de_fe,"
	@echo "  heian, ferroviario, galeno, gamma_gibraltar, inmortal,"
	@echo "  inmortal_reserva_especial, bushido, skygraph,"
	@echo "  monumental, viajero"

# Clean target
clean:
	rm -rf "HdR zines"

# Build rules - PDFs
.PHONY: pdf-caballero
pdf-caballero: $(wildcard hdr_zines_src/caballero/*.typ hdr_zines_src/caballero/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Caballero"
	$(TYPST) --input digital=false hdr_zines_src/caballero/caballero.typ "HdR zines/SyS Caballero/caballero zine.pdf"

.PHONY: png-caballero
png-caballero: $(wildcard hdr_zines_src/caballero/*.typ hdr_zines_src/caballero/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Caballero"
	$(TYPST) --input digital=true hdr_zines_src/caballero/caballero.typ "HdR zines/SyS Caballero/caballero zine-{p}.png"

.PHONY: pdf-competidor
pdf-competidor: $(wildcard hdr_zines_src/competidor/*.typ hdr_zines_src/competidor/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Competidor"
	$(TYPST) --input digital=false hdr_zines_src/competidor/competidor.typ "HdR zines/SyS Competidor/competidor zine.pdf"

.PHONY: png-competidor
png-competidor: $(wildcard hdr_zines_src/competidor/*.typ hdr_zines_src/competidor/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Competidor"
	$(TYPST) --input digital=true hdr_zines_src/competidor/competidor.typ "HdR zines/SyS Competidor/competidor zine-{p}.png"

.PHONY: pdf-cosmotemp
pdf-cosmotemp: $(wildcard hdr_zines_src/cosmotemp/*.typ hdr_zines_src/cosmotemp/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Super Stellar Cosmotemp"
	$(TYPST) --input digital=false hdr_zines_src/cosmotemp/cosmotemp.typ "HdR zines/RSWC Super Stellar Cosmotemp/cosmotemp zine.pdf"

.PHONY: png-cosmotemp
png-cosmotemp: $(wildcard hdr_zines_src/cosmotemp/*.typ hdr_zines_src/cosmotemp/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Super Stellar Cosmotemp"
	$(TYPST) --input digital=true hdr_zines_src/cosmotemp/cosmotemp.typ "HdR zines/RSWC Super Stellar Cosmotemp/cosmotemp zine-{p}.png"

.PHONY: pdf-decotimer
pdf-decotimer: $(wildcard hdr_zines_src/decotimer/*.typ hdr_zines_src/decotimer/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Deco-Timer"
	$(TYPST) --input digital=false hdr_zines_src/decotimer/decotimer.typ "HdR zines/RSWC Deco-Timer/decotimer zine.pdf"

.PHONY: png-decotimer
png-decotimer: $(wildcard hdr_zines_src/decotimer/*.typ hdr_zines_src/decotimer/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Deco-Timer"
	$(TYPST) --input digital=true hdr_zines_src/decotimer/decotimer.typ "HdR zines/RSWC Deco-Timer/decotimer zine-{p}.png"

.PHONY: pdf-dirty_fifteen
pdf-dirty_fifteen: $(wildcard hdr_zines_src/dirty_fifteen/*.typ hdr_zines_src/dirty_fifteen/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Dirty Fifteen"
	$(TYPST) --input digital=false hdr_zines_src/dirty_fifteen/dirty_fifteen.typ "HdR zines/RSWC Dirty Fifteen/dirty_fifteen zine.pdf"

.PHONY: png-dirty_fifteen
png-dirty_fifteen: $(wildcard hdr_zines_src/dirty_fifteen/*.typ hdr_zines_src/dirty_fifteen/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Dirty Fifteen"
	$(TYPST) --input digital=true hdr_zines_src/dirty_fifteen/dirty_fifteen.typ "HdR zines/RSWC Dirty Fifteen/dirty_fifteen zine-{p}.png"

.PHONY: pdf-world_timer
pdf-world_timer: $(wildcard hdr_zines_src/world_timer/*.typ hdr_zines_src/world_timer/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Super Stellar World Timer"
	$(TYPST) --input digital=false hdr_zines_src/world_timer/world_timer.typ "HdR zines/RSWC Super Stellar World Timer/world_timer zine.pdf"

.PHONY: png-world_timer
png-world_timer: $(wildcard hdr_zines_src/world_timer/*.typ hdr_zines_src/world_timer/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Super Stellar World Timer"
	$(TYPST) --input digital=true hdr_zines_src/world_timer/world_timer.typ "HdR zines/RSWC Super Stellar World Timer/world_timer zine-{p}.png"

.PHONY: pdf-iberia
pdf-iberia: $(wildcard hdr_zines_src/iberia/*.typ hdr_zines_src/iberia/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Suite Iberia"
	$(TYPST) --input digital=false hdr_zines_src/iberia/iberia.typ "HdR zines/RSWC Suite Iberia/iberia zine.pdf"

.PHONY: png-iberia
png-iberia: $(wildcard hdr_zines_src/iberia/*.typ hdr_zines_src/iberia/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Suite Iberia"
	$(TYPST) --input digital=true hdr_zines_src/iberia/iberia.typ "HdR zines/RSWC Suite Iberia/iberia zine-{p}.png"

.PHONY: pdf-vainqueur
pdf-vainqueur: $(wildcard hdr_zines_src/vainqueur/*.typ hdr_zines_src/vainqueur/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Vainqueur"
	$(TYPST) --input digital=false hdr_zines_src/vainqueur/vainqueur.typ "HdR zines/RSWC Vainqueur/vainqueur zine.pdf"

.PHONY: png-vainqueur
png-vainqueur: $(wildcard hdr_zines_src/vainqueur/*.typ hdr_zines_src/vainqueur/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Vainqueur"
	$(TYPST) --input digital=true hdr_zines_src/vainqueur/vainqueur.typ "HdR zines/RSWC Vainqueur/vainqueur zine-{p}.png"

.PHONY: pdf-vainqueur_de
pdf-vainqueur_de: $(wildcard hdr_zines_src/vainqueur/*.typ hdr_zines_src/vainqueur/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Vainqueur"
	$(TYPST) --input digital=false hdr_zines_src/vainqueur/vainqueur_de.typ "HdR zines/RSWC Vainqueur/vainqueur_de zine.pdf"

.PHONY: png-vainqueur_de
png-vainqueur_de: $(wildcard hdr_zines_src/vainqueur/*.typ hdr_zines_src/vainqueur/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Vainqueur"
	$(TYPST) --input digital=true hdr_zines_src/vainqueur/vainqueur_de.typ "HdR zines/RSWC Vainqueur/vainqueur_de zine-{p}.png"

.PHONY: pdf-verne
pdf-verne: $(wildcard hdr_zines_src/verne/*.typ hdr_zines_src/verne/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Verne"
	$(TYPST) --input digital=false hdr_zines_src/verne/verne.typ "HdR zines/RSWC Verne/verne zine.pdf"

.PHONY: png-verne
png-verne: $(wildcard hdr_zines_src/verne/*.typ hdr_zines_src/verne/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Verne"
	$(TYPST) --input digital=true hdr_zines_src/verne/verne.typ "HdR zines/RSWC Verne/verne zine-{p}.png"

.PHONY: pdf-ichi
pdf-ichi: $(wildcard hdr_zines_src/ichi/*.typ hdr_zines_src/ichi/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWF Ichi"
	$(TYPST) --input digital=false hdr_zines_src/ichi/ichi.typ "HdR zines/RSWF Ichi/ichi zine.pdf"

.PHONY: png-ichi
png-ichi: $(wildcard hdr_zines_src/ichi/*.typ hdr_zines_src/ichi/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWF Ichi"
	$(TYPST) --input digital=true hdr_zines_src/ichi/ichi.typ "HdR zines/RSWF Ichi/ichi zine-{p}.png"

.PHONY: pdf-ala14
pdf-ala14: $(wildcard hdr_zines_src/ala14/*.typ hdr_zines_src/ala14/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Super Stellar Ala 14"
	$(TYPST) --input digital=false hdr_zines_src/ala14/ala14.typ "HdR zines/RSWC Super Stellar Ala 14/ala14 zine.pdf"

.PHONY: png-ala14
png-ala14: $(wildcard hdr_zines_src/ala14/*.typ hdr_zines_src/ala14/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Super Stellar Ala 14"
	$(TYPST) --input digital=true hdr_zines_src/ala14/ala14.typ "HdR zines/RSWC Super Stellar Ala 14/ala14 zine-{p}.png"

.PHONY: pdf-supersharkomatic
pdf-supersharkomatic: $(wildcard hdr_zines_src/supersharkomatic/*.typ hdr_zines_src/supersharkomatic/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Supersharkomatic"
	$(TYPST) --input digital=false hdr_zines_src/supersharkomatic/supersharkomatic.typ "HdR zines/RSWC Supersharkomatic/supersharkomatic zine.pdf"

.PHONY: png-supersharkomatic
png-supersharkomatic: $(wildcard hdr_zines_src/supersharkomatic/*.typ hdr_zines_src/supersharkomatic/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Supersharkomatic"
	$(TYPST) --input digital=true hdr_zines_src/supersharkomatic/supersharkomatic.typ "HdR zines/RSWC Supersharkomatic/supersharkomatic zine-{p}.png"

.PHONY: pdf-typhoon
pdf-typhoon: $(wildcard hdr_zines_src/typhoon/*.typ hdr_zines_src/typhoon/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Super Stellar Typhoon"
	$(TYPST) --input digital=false hdr_zines_src/typhoon/typhoon.typ "HdR zines/RSWC Super Stellar Typhoon/typhoon zine.pdf"

.PHONY: png-typhoon
png-typhoon: $(wildcard hdr_zines_src/typhoon/*.typ hdr_zines_src/typhoon/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Super Stellar Typhoon"
	$(TYPST) --input digital=true hdr_zines_src/typhoon/typhoon.typ "HdR zines/RSWC Super Stellar Typhoon/typhoon zine-{p}.png"

.PHONY: pdf-roquina
pdf-roquina: $(wildcard hdr_zines_src/roquina/*.typ hdr_zines_src/roquina/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Roquina"
	$(TYPST) --input digital=false hdr_zines_src/roquina/roquina.typ "HdR zines/SyS Roquina/roquina zine.pdf"

.PHONY: png-roquina
png-roquina: $(wildcard hdr_zines_src/roquina/*.typ hdr_zines_src/roquina/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Roquina"
	$(TYPST) --input digital=true hdr_zines_src/roquina/roquina.typ "HdR zines/SyS Roquina/roquina zine-{p}.png"

.PHONY: pdf-forest_defender
pdf-forest_defender: $(wildcard hdr_zines_src/forest_defender/*.typ hdr_zines_src/forest_defender/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Forest Defender"
	$(TYPST) --input digital=false hdr_zines_src/forest_defender/forest_defender.typ "HdR zines/RSWC Forest Defender/forest_defender zine.pdf"

.PHONY: png-forest_defender
png-forest_defender: $(wildcard hdr_zines_src/forest_defender/*.typ hdr_zines_src/forest_defender/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Forest Defender"
	$(TYPST) --input digital=true hdr_zines_src/forest_defender/forest_defender.typ "HdR zines/RSWC Forest Defender/forest_defender zine-{p}.png"

.PHONY: pdf-salto_de_fe
pdf-salto_de_fe: $(wildcard hdr_zines_src/salto_de_fe/*.typ hdr_zines_src/salto_de_fe/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Salto de Fe"
	$(TYPST) --input digital=false hdr_zines_src/salto_de_fe/salto_de_fe.typ "HdR zines/RSWC Salto de Fe/salto_de_fe zine.pdf"

.PHONY: png-salto_de_fe
png-salto_de_fe: $(wildcard hdr_zines_src/salto_de_fe/*.typ hdr_zines_src/salto_de_fe/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Salto de Fe"
	$(TYPST) --input digital=true hdr_zines_src/salto_de_fe/salto_de_fe.typ "HdR zines/RSWC Salto de Fe/salto_de_fe zine-{p}.png"

.PHONY: pdf-heian
pdf-heian: $(wildcard hdr_zines_src/heian/*.typ hdr_zines_src/heian/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Heian"
	$(TYPST) --input digital=false hdr_zines_src/heian/heian.typ "HdR zines/RSWC Heian/heian zine.pdf"

.PHONY: png-heian
png-heian: $(wildcard hdr_zines_src/heian/*.typ hdr_zines_src/heian/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Heian"
	$(TYPST) --input digital=true hdr_zines_src/heian/heian.typ "HdR zines/RSWC Heian/heian zine-{p}.png"

.PHONY: pdf-ferroviario
pdf-ferroviario: $(wildcard hdr_zines_src/ferroviario/*.typ hdr_zines_src/ferroviario/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/Ferroviario"
	$(TYPST) --input digital=false hdr_zines_src/ferroviario/ferroviario.typ "HdR zines/Ferroviario/ferroviario zine.pdf"

.PHONY: png-ferroviario
png-ferroviario: $(wildcard hdr_zines_src/ferroviario/*.typ hdr_zines_src/ferroviario/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/Ferroviario"
	$(TYPST) --input digital=true hdr_zines_src/ferroviario/ferroviario.typ "HdR zines/Ferroviario/ferroviario zine-{p}.png"

.PHONY: pdf-galeno
pdf-galeno: $(wildcard hdr_zines_src/galeno/*.typ hdr_zines_src/galeno/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/Galeno"
	$(TYPST) --input digital=false hdr_zines_src/galeno/galeno.typ "HdR zines/Galeno/galeno zine.pdf"

.PHONY: png-galeno
png-galeno: $(wildcard hdr_zines_src/galeno/*.typ hdr_zines_src/galeno/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/Galeno"
	$(TYPST) --input digital=true hdr_zines_src/galeno/galeno.typ "HdR zines/Galeno/galeno zine-{p}.png"

.PHONY: pdf-gamma_gibraltar
pdf-gamma_gibraltar: $(wildcard hdr_zines_src/gamma_gibraltar/*.typ hdr_zines_src/gamma_gibraltar/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Gamma Gibraltar"
	$(TYPST) --input digital=false hdr_zines_src/gamma_gibraltar/gamma_gibraltar.typ "HdR zines/RSWC Gamma Gibraltar/gamma_gibraltar zine.pdf"

.PHONY: png-gamma_gibraltar
png-gamma_gibraltar: $(wildcard hdr_zines_src/gamma_gibraltar/*.typ hdr_zines_src/gamma_gibraltar/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Gamma Gibraltar"
	$(TYPST) --input digital=true hdr_zines_src/gamma_gibraltar/gamma_gibraltar.typ "HdR zines/RSWC Gamma Gibraltar/gamma_gibraltar zine-{p}.png"

.PHONY: pdf-inmortal
pdf-inmortal: $(wildcard hdr_zines_src/inmortal/*.typ hdr_zines_src/inmortal/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Inmortal"
	$(TYPST) --input digital=false hdr_zines_src/inmortal/inmortal.typ "HdR zines/SyS Inmortal/inmortal zine.pdf"

.PHONY: png-inmortal
png-inmortal: $(wildcard hdr_zines_src/inmortal/*.typ hdr_zines_src/inmortal/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Inmortal"
	$(TYPST) --input digital=true hdr_zines_src/inmortal/inmortal.typ "HdR zines/SyS Inmortal/inmortal zine-{p}.png"

.PHONY: pdf-inmortal_reserva_especial
pdf-inmortal_reserva_especial: $(wildcard hdr_zines_src/inmortal_reserva_especial/*.typ hdr_zines_src/inmortal_reserva_especial/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Inmortal Reserva Especial"
	$(TYPST) --input digital=false hdr_zines_src/inmortal_reserva_especial/inmortal_reserva_especial.typ "HdR zines/SyS Inmortal Reserva Especial/inmortal_reserva_especial zine.pdf"

.PHONY: png-inmortal_reserva_especial
png-inmortal_reserva_especial: $(wildcard hdr_zines_src/inmortal_reserva_especial/*.typ hdr_zines_src/inmortal_reserva_especial/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Inmortal Reserva Especial"
	$(TYPST) --input digital=true hdr_zines_src/inmortal_reserva_especial/inmortal_reserva_especial.typ "HdR zines/SyS Inmortal Reserva Especial/inmortal_reserva_especial zine-{p}.png"

.PHONY: pdf-bushido
pdf-bushido: $(wildcard hdr_zines_src/bushido/*.typ hdr_zines_src/bushido/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Bushido"
	$(TYPST) --input digital=false hdr_zines_src/bushido/bushido.typ "HdR zines/RSWC Bushido/bushido zine.pdf"

.PHONY: png-bushido
png-bushido: $(wildcard hdr_zines_src/bushido/*.typ hdr_zines_src/bushido/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Bushido"
	$(TYPST) --input digital=true hdr_zines_src/bushido/bushido.typ "HdR zines/RSWC Bushido/bushido zine-{p}.png"

.PHONY: pdf-skygraph
pdf-skygraph: $(wildcard hdr_zines_src/skygraph/*.typ hdr_zines_src/skygraph/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Skygraph"
	$(TYPST) --input digital=false hdr_zines_src/skygraph/skygraph.typ "HdR zines/RSWC Skygraph/skygraph zine.pdf"

.PHONY: png-skygraph
png-skygraph: $(wildcard hdr_zines_src/skygraph/*.typ hdr_zines_src/skygraph/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/RSWC Skygraph"
	$(TYPST) --input digital=true hdr_zines_src/skygraph/skygraph.typ "HdR zines/RSWC Skygraph/skygraph zine-{p}.png"

.PHONY: pdf-monumental
pdf-monumental: $(wildcard hdr_zines_src/monumental/*.typ hdr_zines_src/monumental/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Monumental"
	$(TYPST) --input digital=false hdr_zines_src/monumental/monumental.typ "HdR zines/SyS Monumental/monumental zine.pdf"

.PHONY: png-monumental
png-monumental: $(wildcard hdr_zines_src/monumental/*.typ hdr_zines_src/monumental/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Monumental"
	$(TYPST) --input digital=true hdr_zines_src/monumental/monumental.typ "HdR zines/SyS Monumental/monumental zine-{p}.png"

.PHONY: pdf-viajero
pdf-viajero: $(wildcard hdr_zines_src/viajero/*.typ hdr_zines_src/viajero/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Viajero"
	$(TYPST) --input digital=false hdr_zines_src/viajero/viajero.typ "HdR zines/SyS Viajero/viajero zine.pdf"

.PHONY: png-viajero
png-viajero: $(wildcard hdr_zines_src/viajero/*.typ hdr_zines_src/viajero/*.jpeg) $(SRC_LIB)
	@mkdir -p "HdR zines/SyS Viajero"
	$(TYPST) --input digital=true hdr_zines_src/viajero/viajero.typ "HdR zines/SyS Viajero/viajero zine-{p}.png"


