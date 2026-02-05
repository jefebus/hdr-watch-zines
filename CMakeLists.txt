cmake_minimum_required(VERSION 3.20)
project(HDRWatchZines NONE)

# Configuration
set(TYPST_COMMAND "/snap/bin/typst" CACHE STRING "Path to typst executable")
set(QPDF_COMMAND "qpdf" CACHE STRING "Path to qpdf executable")
set(FONT_PATH "$ENV{HOME}/.local/share/fonts" CACHE STRING "Font path for typst")
set(OUTPUT_DIR "${CMAKE_SOURCE_DIR}/HdR zines" CACHE STRING "Output directory for zines")

# Source library files
file(GLOB SRC_LIB "${CMAKE_SOURCE_DIR}/src/*.typ")

# Helper function to add a zine build target
function(add_hdr_zine ZINE_ID SOURCE_DIR OUTPUT_SUBDIR SOURCE_FILE)
    # Glob source files for the zine
    file(GLOB_RECURSE ZINE_SOURCES 
        "${CMAKE_SOURCE_DIR}/hdr_zines_src/${SOURCE_DIR}/*.typ"
        "${CMAKE_SOURCE_DIR}/hdr_zines_src/${SOURCE_DIR}/*.jpeg"
        "${CMAKE_SOURCE_DIR}/hdr_zines_src/${SOURCE_DIR}/*.jpg"
    )
    
    # Define output paths
    set(PDF_OUTPUT "${OUTPUT_DIR}/${OUTPUT_SUBDIR}/${ZINE_ID} zine.pdf")
    set(PNG_OUTPUT "${OUTPUT_DIR}/${OUTPUT_SUBDIR}/${ZINE_ID} zine-{p}.png")
    set(TEMP_PDF "${OUTPUT_DIR}/${OUTPUT_SUBDIR}/${ZINE_ID}_temp.pdf")
    
    # PDF target with deterministic output
    add_custom_command(
        OUTPUT "${PDF_OUTPUT}"
        COMMAND ${CMAKE_COMMAND} -E make_directory "${OUTPUT_DIR}/${OUTPUT_SUBDIR}"
        COMMAND ${TYPST_COMMAND} compile 
            --root "${CMAKE_SOURCE_DIR}"
            --font-path "${FONT_PATH}"
            --input digital=false
            "${CMAKE_SOURCE_DIR}/hdr_zines_src/${SOURCE_DIR}/${SOURCE_FILE}"
            "${TEMP_PDF}"
        COMMAND ${QPDF_COMMAND} --deterministic-id --linearize "${TEMP_PDF}" "${PDF_OUTPUT}"
        COMMAND ${CMAKE_COMMAND} -E remove "${TEMP_PDF}"
        DEPENDS ${ZINE_SOURCES} ${SRC_LIB}
        WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}"
        COMMENT "Building ${ZINE_ID} PDF with deterministic output"
        VERBATIM
    )
    
    # PNG target (creates marker file since PNG output is multi-file)
    set(PNG_MARKER "${OUTPUT_DIR}/${OUTPUT_SUBDIR}/.${ZINE_ID}_png.done")
    add_custom_command(
        OUTPUT "${PNG_MARKER}"
        COMMAND ${CMAKE_COMMAND} -E make_directory "${OUTPUT_DIR}/${OUTPUT_SUBDIR}"
        COMMAND ${TYPST_COMMAND} compile 
            --root "${CMAKE_SOURCE_DIR}"
            --font-path "${FONT_PATH}"
            --input digital=true
            "${CMAKE_SOURCE_DIR}/hdr_zines_src/${SOURCE_DIR}/${SOURCE_FILE}"
            "${PNG_OUTPUT}"
        COMMAND ${CMAKE_COMMAND} -E touch "${PNG_MARKER}"
        DEPENDS ${ZINE_SOURCES} ${SRC_LIB}
        WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}"
        COMMENT "Building ${ZINE_ID} PNG pages"
        VERBATIM
    )
    
    # Create targets
    add_custom_target(pdf-${ZINE_ID} DEPENDS "${PDF_OUTPUT}")
    add_custom_target(png-${ZINE_ID} DEPENDS "${PNG_MARKER}")
    
    # Create combined target that builds both PDF and PNG
    add_custom_target(${ZINE_ID} DEPENDS pdf-${ZINE_ID} png-${ZINE_ID})
    
    # Add to master lists
    list(APPEND ALL_PDF_TARGETS pdf-${ZINE_ID})
    list(APPEND ALL_PNG_TARGETS png-${ZINE_ID})
    set(ALL_PDF_TARGETS ${ALL_PDF_TARGETS} PARENT_SCOPE)
    set(ALL_PNG_TARGETS ${ALL_PNG_TARGETS} PARENT_SCOPE)
endfunction()

# Define all HdR zines
# Format: add_hdr_zine(zine_id, source_dir, output_subdir, source_file)
add_hdr_zine(ala14 "ala14" "RSWC Super Stellar Ala 14" "ala14.typ")
add_hdr_zine(bushido "bushido" "RSWC Bushido" "bushido.typ")
add_hdr_zine(caballero "caballero" "SyS Caballero" "caballero.typ")
add_hdr_zine(colossus "colossus" "RSWC Super Massive Colossus" "colossus.typ")
add_hdr_zine(competidor "competidor" "SyS Competidor" "competidor.typ")
add_hdr_zine(cosmotemp "cosmotemp" "RSWC Super Stellar Cosmotemp" "cosmotemp.typ")
add_hdr_zine(decotimer "decotimer" "RSWC Deco-Timer" "decotimer.typ")
add_hdr_zine(dirty_fifteen "dirty_fifteen" "RSWC Dirty Fifteen" "dirty_fifteen.typ")
add_hdr_zine(ferroviario "ferroviario" "Ferroviario" "ferroviario.typ")
add_hdr_zine(forest_defender "forest_defender" "RSWC Forest Defender" "forest_defender.typ")
add_hdr_zine(galeno "galeno" "Galeno" "galeno.typ")
add_hdr_zine(gamma_gibraltar "gamma_gibraltar" "RSWC Gamma Gibraltar" "gamma_gibraltar.typ")
add_hdr_zine(goldmaster "goldmaster" "RSWC Goldmaster" "goldmaster.typ")
add_hdr_zine(grand_belize "grand_belize" "Candino Grand Belize" "grand_belize.typ")
add_hdr_zine(grande_epreuve "grande_epreuve" "RSWC Grande Épreuve" "grande_epreuve.typ")
add_hdr_zine(heian "heian" "RSWC Heian" "heian.typ")
add_hdr_zine(iberia "iberia" "RSWC Suite Iberia" "iberia.typ")
add_hdr_zine(ichi "ichi" "RSWF Ichi" "ichi.typ")
add_hdr_zine(inmortal "inmortal" "SyS Inmortal" "inmortal.typ")
add_hdr_zine(inmortal_reserva_especial "inmortal_reserva_especial" "SyS Inmortal Reserva Especial" "inmortal_reserva_especial.typ")
add_hdr_zine(kingtuna "kingtuna" "RSWF King Tuna" "kingtuna.typ")
add_hdr_zine(majetek "majetek" "RSWC Majetek" "majetek.typ")
add_hdr_zine(monumental "monumental" "SyS Monumental" "monumental.typ")
add_hdr_zine(okeah "okeah" "Okeah Final Edition" "okeah.typ")
add_hdr_zine(racing "racing" "RSWC Racing" "racing.typ")
add_hdr_zine(rex_caeli "rex_caeli" "RSWC Rex Caeli" "rex_caeli.typ")
add_hdr_zine(rex_maris "rex_maris" "RSWC Rex Maris" "rex_maris.typ")
add_hdr_zine(rex_terrae "rex_terrae" "RSWC Rex Terrae" "rex_terrae.typ")
add_hdr_zine(roquina "roquina" "SyS Roquina" "roquina.typ")
add_hdr_zine(salto_de_fe "salto_de_fe" "RSWC Salto de Fe" "salto_de_fe.typ")
add_hdr_zine(scaphandre_II "scaphandre_II" "RSWC Scaphandre II" "scaphandre_II.typ")
add_hdr_zine(sevenseas "sevenseas" "RSWF SevenSeas" "sevenseas.typ")
add_hdr_zine(skygraph "skygraph" "RSWC Skygraph" "skygraph.typ")
add_hdr_zine(supersharkomatic "supersharkomatic" "RSWC Supersharkomatic" "supersharkomatic.typ")
add_hdr_zine(typ_vii-b "typ_vii-b" "RSWC Typ VII-B" "typ_vii-b.typ")
add_hdr_zine(typhoon "typhoon" "RSWC Super Stellar Typhoon" "typhoon.typ")
add_hdr_zine(ume_1 "ume_1" "RSWC UME Tipo 1" "ume_1.typ")
add_hdr_zine(ume_2 "ume_2" "RSWC UME Tipo 2" "ume_2.typ")
add_hdr_zine(vainqueur "vainqueur" "RSWC Vainqueur" "vainqueur.typ")
add_hdr_zine(verne "verne" "RSWC Verne" "verne.typ")
add_hdr_zine(viajero "viajero" "SyS Viajero" "viajero.typ")
add_hdr_zine(world_timer "world_timer" "RSWC Super Stellar World Timer" "world_timer.typ")

# Special target for Vainqueur German version
add_hdr_zine(vainqueur_de "vainqueur" "RSWC Vainqueur" "vainqueur_de.typ")

# Create master targets
add_custom_target(pdf-all DEPENDS ${ALL_PDF_TARGETS})
add_custom_target(png-all DEPENDS ${ALL_PNG_TARGETS})
add_custom_target(all_zines ALL DEPENDS pdf-all png-all)

# Clean target
add_custom_target(clean_zines
    COMMAND ${CMAKE_COMMAND} -E remove_directory "${OUTPUT_DIR}"
    COMMENT "Cleaning all built zines"
)

# Help target
add_custom_target(help_zines
    COMMAND ${CMAKE_COMMAND} -E echo "HdR Watch Zine Build System - CMake"
    COMMAND ${CMAKE_COMMAND} -E echo ""
    COMMAND ${CMAKE_COMMAND} -E echo "Usage: cmake --build . [--target target]"
    COMMAND ${CMAKE_COMMAND} -E echo ""
    COMMAND ${CMAKE_COMMAND} -E echo "Main Targets:"
    COMMAND ${CMAKE_COMMAND} -E echo "  all_zines    Build all PDFs and PNGs - default"
    COMMAND ${CMAKE_COMMAND} -E echo "  pdf-all      Build all PDF versions"
    COMMAND ${CMAKE_COMMAND} -E echo "  png-all      Build all PNG page versions"
    COMMAND ${CMAKE_COMMAND} -E echo "  NAME         Build both PDF and PNG for specific zine"
    COMMAND ${CMAKE_COMMAND} -E echo "  pdf-NAME     Build PDF for specific zine"
    COMMAND ${CMAKE_COMMAND} -E echo "  png-NAME     Build PNG pages for specific zine"
    COMMAND ${CMAKE_COMMAND} -E echo "  clean_zines  Remove all built zines"
    COMMAND ${CMAKE_COMMAND} -E echo "  help_zines   Show this help message"
    COMMAND ${CMAKE_COMMAND} -E echo ""
    COMMAND ${CMAKE_COMMAND} -E echo "Examples:"
    COMMAND ${CMAKE_COMMAND} -E echo "  cmake --build . --target caballero"
    COMMAND ${CMAKE_COMMAND} -E echo "  cmake --build . --target pdf-caballero"
    COMMENT "Displaying help information"
)

# Print configuration summary
message(STATUS "=== HdR Watch Zine Build Configuration ===")
message(STATUS "Typst executable: ${TYPST_COMMAND}")
message(STATUS "QPDF executable: ${QPDF_COMMAND}")
message(STATUS "Font path: ${FONT_PATH}")
message(STATUS "Output directory: ${OUTPUT_DIR}")
message(STATUS "Total zines: ${CMAKE_CURRENT_LIST_LINE}")
