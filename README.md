Project for creating small typst watch zines for your watch case. Includes zines for a number of watches created in the "Hablemos de Relojes" watch forum.

# Credits

## Text and Photographs

The watch descriptions for the RSWC and SyS (Sol y Sombra) zines are based on the watch descriptions from the "Hablemos de Relojes" forum, primarily written by user **@Gasparacha**.

Photographs featured in the zines were taken from the forum and were created by:
- **@Gasparacha**
- **@submariner**

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

### Using the Build Script (Linux/WSL)

The project includes `build.sh` for automated building:

**Build all zines:**
```bash
./build.sh
```

**Build a specific zine:**
```bash
./build.sh caballero    # SyS Caballero
./build.sh iberia       # RSWC Suite Iberia
./build.sh vainqueur    # RSWC Vainqueur (Spanish)
./build.sh vainqueur_de # RSWC Vainqueur (German)
./build.sh ala14        # RSWC Super Stellar Ala 14
./build.sh typhoon      # RSWC Super Stellar Typhoon
./build.sh roquina      # SyS Roquina
```

**Clean output directory:**
```bash
./build.sh --clean
```

**Show help:**
```bash
./build.sh --help
```

### Output Structure

PDFs are generated in the `HdR zines/` directory:
```
HdR zines/
├── RSWC Suite Iberia/
│   └── iberia zine.pdf
├── RSWC Vainqueur/
│   ├── vainqueur zine.pdf
│   └── vainqueur_de zine.pdf
├── RSWC Super Stellar Ala 14/
│   └── ala14 zine.pdf
├── RSWC Super Stellar Typhoon/
│   └── typhoon zine.pdf
├── SyS Caballero/
│   └── caballero zine.pdf
└── SyS Roquina/
    └── roquina zine.pdf
```


## Creating Your Own Zine

1. Copy an existing zine directory (e.g., `template/`)
2. Modify the `.typ` file with your content
3. Add your images
4. Add to `build.sh`:
   ```bash
   # In ZINES array:
   ["mywatch"]="mywatch/mywatch.typ"
   
   # In OUTPUT_SUBDIRS array:
   ["mywatch"]="My Watch Name"
   ```
5. Build: `./build.sh mywatch`


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

