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
- **@RubenG**
- **@syncro**
- **@pguirado**
- **@verni**

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

### Using CMake

The project uses CMake for automated building with deterministic PDF output:

**Initial Configuration:**
```bash
cmake .
```

**Build all PDFs and PNGs:**
```bash
cmake --build .
```

**Build only PDFs:**
```bash
cmake --build . --target pdf-all
```

**Build only PNG pages:**
```bash
cmake --build . --target png-all
```

**Build specific zine (both PDF and PNG):**
```bash
cmake --build . --target caballero
cmake --build . --target majetek
```

**Clean output directory:**
```bash
cmake --build . --target clean_zines
```

**Show help:**
```bash
cmake --build . --target help_zines
```

**Note**: CMake uses qpdf to generate deterministic PDF files (same hash across builds).

### Output Structure

Source files are organized in `hdr_zines_src/` directory, and PDFs are generated in `HdR zines/`:

```
hdr_zines_src/
├── bushido/
├── ...
│
HdR zines/
├── RSWC Bushido/
│   └── bushido zine.pdf
│   └── bushido zine-1.png
│   ...
│   └── bushido zine-8.png
...
```


## Creating Your Own Zine

1. Create a new directory in `hdr_zines_src/` (e.g., `hdr_zines_src/mywatch/`)
2. Create your `.typ` file with the watch zine content following the 8-page structure
3. Add your watch images (`mywatch_front.jpeg` and `mywatch_back.jpeg`)
4. Add your zine to `CMakeLists.txt` following the pattern of existing zines:
   ```cmake
   add_hdr_zine(mywatch "mywatch" "My Watch Collection" "mywatch.typ")
   ```
   Where:
   - First parameter: zine ID (used for target names: `pdf-mywatch`, `png-mywatch`)
   - Second parameter: source directory name under `hdr_zines_src/`
   - Third parameter: output subdirectory name under `HdR zines/`
   - Fourth parameter: source `.typ` file name

5. Run CMake to update the build configuration:
   ```bash
   cmake .
   cmake --build . --target pdf-mywatch
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

