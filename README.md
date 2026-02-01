Project for creating small typst watch zines for your watch case. Includes zines for a number of watches created in the "Hablemos de Relojes" watch forum.

# Credits

## Text and Photographs

The watch descriptions for the RSWC and SyS (Sol y Sombra) zines are based on the watch descriptions from the "Hablemos de Relojes" forum, primarily written by user **@Gasparacha**.

Photographs featured in the zines were taken from the forum and were created by:
- **@submariner**
- **@Gasparacha**
- **@Girolamo**
- **@luin**
- **@Martins**
- **@Pirlo**
- **@vegaban**
- **@Drake**
- **@stef**

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

**Build all PDFs and PNGs:**
```bash
make all
# or simply:
make
```

**Build only PDFs:**
```bash
make pdf-all
```

**Build only PNG pages:**
```bash
make png-all
```

**Build specific zine PDF:**
```bash
make pdf-caballero
```

**Build specific zine PNG pages:**
```bash
make png-caballero
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

Source files are organized in `hdr_zines_src/` directory, and PDFs are generated in `HdR zines/`:

```
hdr_zines_src/
├── caballero/
├── bushido/
├── heian/
├── ...
│
HdR zines/
├── Candino Grand Belize/
│   └── grand_belize zine.pdf
├── Ferroviario/
│   └── ferroviario zine.pdf
├── Galeno/
│   └── galeno zine.pdf
├── Okeah Final Edition/
│   └── okeah zine.pdf
├── RSWC Bushido/
│   └── bushido zine.pdf (versiones roja y Midori)
├── RSWC Dirty Fifteen/
│   └── dirty_fifteen zine.pdf
├── RSWC Forest Defender/
│   └── forest_defender zine.pdf
├── RSWC Gamma Gibraltar/
│   └── gamma_gibraltar zine.pdf
├── RSWC Goldmaster/
│   └── goldmaster zine.pdf
├── RSWC Heian/
│   └── heian zine.pdf
├── RSWC Racing/
│   └── RSWC Racing.pdf
├── RSWC Salto de Fe/
│   └── salto_de_fe zine.pdf
├── RSWC Skygraph/
│   └── skygraph zine.pdf
├── RSWC Suite Iberia/
│   └── iberia zine.pdf
├── RSWC Vainqueur/
│   ├── vainqueur zine.pdf
│   └── vainqueur_de zine.pdf
├── RSWC Verne/
│   └── verne zine.pdf
├── RSWF Ichi/
│   └── ichi zine.pdf
├── RSWF King Tuna/
│   └── kingtuna zine.pdf
├── RSWF SevenSeas/
│   └── sevenseas zine.pdf
├── RSWC Super Stellar Ala 14/
│   └── ala14 zine.pdf
├── RSWC Super Stellar Cosmotemp/
│   └── cosmotemp zine.pdf
├── RSWC Super Stellar Typhoon/
│   └── typhoon zine.pdf
├── RSWC Super Stellar World Timer/
│   └── world_timer zine.pdf
├── RSWC Supersharkomatic/
│   └── supersharkomatic zine.pdf
├── Super Massive Colossus/
│   └── colossus zine.pdf
├── SyS Caballero/
│   └── caballero zine.pdf
├── SyS Inmortal/
│   └── inmortal zine.pdf
├── SyS Inmortal Reserva Especial/
│   └── inmortal_reserva_especial zine.pdf
├── SyS Monumental/
│   └── monumental zine.pdf
├── SyS Roquina/
│   └── roquina zine.pdf
└── SyS Viajero/
    └── viajero zine.pdf
```


## Creating Your Own Zine

1. Create a new directory in `hdr_zines_src/` (e.g., `hdr_zines_src/mywatch/`)
2. Create your `.typ` file with the watch zine content following the 8-page structure
3. Add your watch images (`mywatch_front.jpeg` and `mywatch_back.jpeg`)
4. Add your zine to the `pdf-all` and `png-all` target lists in the Makefile:
   ```makefile
   pdf-all: pdf-caballero ... pdf-mywatch
   png-all: png-caballero ... png-mywatch
   ```
5. Add the build rules following the pattern of existing zines:
   ```makefile
   .PHONY: pdf-mywatch
   pdf-mywatch: $(wildcard hdr_zines_src/mywatch/*.typ hdr_zines_src/mywatch/*.jpeg) $(SRC_LIB)
       @mkdir -p "HdR zines/My Watch Name"
       $(TYPST) --input digital=false hdr_zines_src/mywatch/mywatch.typ "HdR zines/My Watch Name/mywatch zine.pdf"
   
   .PHONY: png-mywatch
   png-mywatch: $(wildcard hdr_zines_src/mywatch/*.typ hdr_zines_src/mywatch/*.jpeg) $(SRC_LIB)
       @mkdir -p "HdR zines/My Watch Name"
       $(TYPST) --input digital=true hdr_zines_src/mywatch/mywatch.typ "HdR zines/My Watch Name/mywatch zine-{p}.png"
   ```


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

