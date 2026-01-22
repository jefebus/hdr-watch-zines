#!/bin/bash
# Build script for all watch zines
# Builds print versions using typst

set -e

# Configuration
FONT_PATH="$HOME/.local/share/fonts"
OUTPUT_DIR="HdR zines"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m' # No Color

# Zine projects
declare -A ZINES=(
    ["caballero"]="caballero/caballero.typ"
    ["iberia"]="iberia/iberia.typ"
    ["vainqueur"]="vainqueur/vainqueur.typ"
    ["vainqueur_de"]="vainqueur/vainqueur_de.typ"
    ["ala14"]="ala14/ala14.typ"
    ["typhoon"]="typhoon/typhoon.typ"
    ["roquina"]="roquina/roquina.typ"
    ["digimatico"]="digimatico/digimatico.typ"
    ["forest_defender"]="forest_defender/forest_defender.typ"
    ["inmortal_reserva_especial"]="inmortal_reserva_especial/inmortal_reserva_especial.typ"
    ["verne"]="verne/verne.typ"
)

# Output directory mapping
declare -A OUTPUT_SUBDIRS=(
    ["caballero"]="SyS Caballero"
    ["iberia"]="RSWC Suite Iberia"
    ["vainqueur"]="RSWC Vainqueur"
    ["vainqueur_de"]="RSWC Vainqueur"
    ["ala14"]="RSWC Super Stellar Ala 14"
    ["typhoon"]="RSWC Super Stellar Typhoon"
    ["roquina"]="SyS Roquina"
    ["digimatico"]="SyS Digimático"
    ["forest_defender"]="RSWC Forest Defender"
    ["inmortal_reserva_especial"]="SyS Inmortal Reserva Especial"
    ["verne"]="RSWC Verne"
)

# Function to build a single zine
build_zine() {
    local name=$1
    local typ_file=$2
    
    echo -e "\n${CYAN}=== Building $name ===${NC}"
    
    # Get script directory as project root
    local script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    
    # Get output subdirectory for this zine
    local output_subdir="${OUTPUT_SUBDIRS[$name]}"
    local zine_output_dir="$OUTPUT_DIR/$output_subdir"
    
    # Create zine-specific output directory
    mkdir -p "$zine_output_dir"
    
    # Build print version
    echo -e "${YELLOW}Building print version...${NC}"
    local print_output="$zine_output_dir/${name} zine.pdf"
    if typst compile --root "$script_dir" --font-path "$FONT_PATH" --input digital=false "$typ_file" "$print_output"; then
        echo -e "${GREEN}✓ Print version built successfully: $output_subdir/${name} zine.pdf${NC}"
    else
        echo -e "${RED}✗ Print version failed${NC}"
        return 1
    fi
    
    return 0
}

# Function to clean output directory
clean_outputs() {
    echo -e "\n${CYAN}=== Cleaning output directory ===${NC}"
    
    if [ -d "$OUTPUT_DIR" ]; then
        echo -e "${YELLOW}Cleaning $OUTPUT_DIR...${NC}"
        rm -rf "$OUTPUT_DIR"
        echo -e "${GREEN}✓ Cleaned output directory${NC}"
    else
        echo -e "${YELLOW}Output directory does not exist${NC}"
    fi
}

# Show usage
show_usage() {
    echo "Usage: $0 [OPTIONS] [ZINE]"
    echo ""
    echo "Options:"
    echo "  -c, --clean    Clean all output directories"
    echo "  -h, --help     Show this help message"
    echo ""
    echo "Zines:"
    echo "  all            Build all zines (default)"
    for name in "${!ZINES[@]}"; do
        echo "  $name"
    done | sort
}

# Parse arguments
CLEAN=false
ZINE="all"

while [[ $# -gt 0 ]]; do
    case $1 in
        -c|--clean)
            CLEAN=true
            shift
            ;;
        -h|--help)
            show_usage
            exit 0
            ;;
        *)
            ZINE=$1
            shift
            ;;
    esac
done

# Main script
echo -e "${MAGENTA}Watch Zine Build Script${NC}"

# Clean if requested
if [ "$CLEAN" = true ]; then
    clean_outputs
    exit 0
fi

# Create output directory
mkdir -p "$OUTPUT_DIR"

# Build specified zine(s)
success=true

if [ "$ZINE" = "all" ]; then
    for name in "${!ZINES[@]}"; do
        if ! build_zine "$name" "${ZINES[$name]}"; then
            success=false
        fi
    done
elif [ -n "${ZINES[$ZINE]}" ]; then
    if ! build_zine "$ZINE" "${ZINES[$ZINE]}"; then
        success=false
    fi
else
    echo -e "${RED}Unknown zine: $ZINE${NC}"
    echo -e "${YELLOW}Available zines: ${!ZINES[@]}${NC}"
    exit 1
fi

# Summary
echo -e "\n${MAGENTA}=== Build Complete ===${NC}"
if [ "$success" = true ]; then
    echo -e "${GREEN}All builds completed successfully!${NC}"
    exit 0
else
    echo -e "${RED}Some builds failed. Check the output above.${NC}"
    exit 1
fi
