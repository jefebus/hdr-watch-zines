Project for creating small typst watch zines for your watch case. Includes zines for a number of watches created in the "Hablemos de Relojes" watch forum.

# Credits

## Text and Photographs

The watch descriptions for the RSWC and SyS (Sol y Sombra) zines are based on the watch descriptions from the "Hablemos de Relojes" forum, primarily written by user **@Gasparacha**.

Photographs featured in the zines were taken from the forum and were created by:
- **@Gasparacha**
- **@submariner**
- **@Pirlo**
- **@vegaban**

All content is used with appreciation for the collaborative spirit of the watch enthusiast community.

## Zen Zine Template

This project derives from the **Zen Zine** template for Typst, created by Tom Eichlersmith.

- **Package**: [zen-zine](https://typst.app/universe/package/zen-zine/)
- **License**: MIT License
- **Description**: A template for creating printable 8-page zines from a page of paper

## Typst

This project is built with [Typst](https://typst.app/), a modern typesetting system.

- **Website**: https://typst.app/
- **License**: Apache-2.0

# Usage

The `watch_zine` function in `src/lib.typ` is based on the zen-zine template, adapted for creating watch instruction zines. The template enables the creation of foldable zines with proper page ordering for printing.

## Prerequisites

### Install Typst

Follow the installation instructions at [typst.app](https://typst.app/).

### Install Carlito Font

The zines use the Carlito font (a free, metric-compatible alternative to Calibri). Install it on your system:
https://fonts.google.com/specimen/Carlito 

## Building Zines

### Using Make

The project includes a `Makefile` for automated building:

**Build all zines:**
```bash
make
```

**Build a specific zine:**
```bash
make caballero              # SyS Caballero
make iberia                 # RSWC Suite Iberia
make vainqueur              # RSWC Vainqueur (Spanish)
make vainqueur_de           # RSWC Vainqueur (German)
make verne                  # RSWC Verne
make ichi                   # RSWF Ichi
make ala14                  # RSWC Super Stellar Ala 14
make supersharkomatic       # RSWC Supersharkomatic
make typhoon                # RSWC Super Stellar Typhoon
make roquina                # SyS Roquina
make digimatico             # SyS Digimático
make forest_defender        # RSWC Forest Defender
make ferroviario            # Ferroviario
make inmortal               # SyS Inmortal
make inmortal_reserva_especial  # SyS Inmortal Reserva Especial
```

**Clean output directory:**
```bash
make clean
```

**Show help:**
```bash
make help
```

### Output Structure

PDFs are generated in the `HdR zines/` directory:
```
HdR zines/
├── Ferroviario/
│   └── ferroviario zine.pdf
├── RSWC Forest Defender/
│   └── forest_defender zine.pdf
├── RSWC Suite Iberia/
│   └── iberia zine.pdf
├── RSWC Vainqueur/
│   ├── vainqueur zine.pdf
│   └── vainqueur_de zine.pdf
├── RSWC Verne/
│   └── verne zine.pdf
├── RSWF Ichi/
│   └── ichi zine.pdf
├── RSWC Super Stellar Ala 14/
│   └── ala14 zine.pdf
├── RSWC Supersharkomatic/
│   └── supersharkomatic zine.pdf
├── RSWC Super Stellar Typhoon/
│   └── typhoon zine.pdf
├── SyS Caballero/
│   └── caballero zine.pdf
├── SyS Digimático/
│   └── digimatico zine.pdf
├── SyS Inmortal/
│   └── inmortal zine.pdf
├── SyS Inmortal Reserva Especial/
│   └── inmortal_reserva_especial zine.pdf
└── SyS Roquina/
    └── roquina zine.pdf
```


## Creating Your Own Zine

1. Copy an existing zine directory (e.g., `template/`)
2. Modify the `.typ` file with your content
3. Add your images
4. Add a new target to the `Makefile`:
   ```makefile
   mywatch:
       @echo "$(CYAN)=== Building mywatch ===$(NC)"
       @mkdir -p "$(OUTPUT_DIR)/My Watch Name"
       @$(TYPST) mywatch/mywatch.typ "$(OUTPUT_DIR)/My Watch Name/mywatch zine.pdf"
       @echo "$(GREEN)✓ My Watch built: My Watch Name/mywatch zine.pdf$(NC)"
   ```
5. Add `mywatch` to the `all` target dependencies
6. Build: `make mywatch`


# License Notice

```
MIT License

Copyright (c) zen-zine contributors

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

