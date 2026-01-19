Project for creating small typst watch zines for your watch case. Includes booklets for a number of watches created in the "Hablemos de Relojes" watch forum.

# Credits

## Zen Zine Template

## Text and Photographs

The watch descriptions for the RSWC and SyS (Sol y Sombra) booklets are based on the watch descriptions from the "Hablemos de Relojes" forum, primarily written by user **@Gasparacha**.

Photographs featured in the booklets were taken from the forum and were created by:
- **@Gasparacha**
- **@submariner**

All content is used with appreciation for the collaborative spirit of the watch enthusiast community.

This project derives from the **Zen Zine** template for Typst, created by Tom Eichlersmith.

- **Package**: [zen-zine](https://typst.app/universe/package/zen-zine/)
- **License**: MIT License
- **Description**: A template for creating printable 8-page zines from a page of paper

## Typst

This project is built with [Typst](https://typst.app/), a modern typesetting system.

- **Website**: https://typst.app/
- **License**: Apache-2.0

# Usage

The `watch_zine` function in `src/lib.typ` is based on the zen-zine template, adapted for creating watch instruction booklets. The template enables the creation of foldable booklets with proper page ordering for printing.

## Prerequisites

### Install Typst

Follow the installation instructions at [typst.app](https://typst.app/).

### Install Carlito Font

The booklets use the Carlito font (a free, metric-compatible alternative to Calibri). Install it on your system.
https://fonts.google.com/specimen/Carlito 

## Building Booklets

### Using the Build Script (Linux/WSL)

The project includes `build.sh` for automated building:

**Build all booklets:**
```bash
./build.sh
```

**Build a specific booklet:**
```bash
./build.sh caballero    # SyS Caballero
./build.sh iberia       # RSWC Suite Iberia
./build.sh vainqueur    # RSWC Vainqueur (Spanish)
./build.sh vainqueur_de # RSWC Vainqueur (German)
./build.sh ala14        # RSWC Super Stellar Ala 14
./build.sh typhoon      # RSWC Super Stellar Typhoon
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

PDFs are generated in the `HdR booklets/` directory:
```
HdR booklets/
├── RSWC Suite Iberia/
│   └── iberia booklet.pdf
├── RSWC Vainqueur/
│   ├── vainqueur booklet.pdf
│   └── vainqueur_de booklet.pdf
├── RSWC Super Stellar Ala 14/
│   └── ala14 booklet.pdf
├── RSWC Super Stellar Typhoon/
│   └── typhoon booklet.pdf
└── SyS Caballero/
    └── caballero booklet.pdf
```


## Creating Your Own Booklet

1. Copy an existing booklet directory (e.g., `template/`)
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

