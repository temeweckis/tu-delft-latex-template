# Teemu's TU Delft LaTeX Template

This repository contains my standard LaTeX template, which I mainly use for writing assignments and taking notes at the Delft University of Technology.
<!-- It contains several packages and shortcuts which I find particularly useful. -->

## Usage

1. Copy this directory to your desired directory.

    ```bash
    cp -r tu-delft-latex-template/ [your_dir]
    ```

2. Edit the `.tex` files to your liking.
   If necessary, please replace references to TU Delft with your own institution.

3. Compile the document with `lualatex` and `biber`, either with the provided `Makefile` or your own recipe.

    ```bash
    make document.pdf
    ```

4. Optionally, use the `Makefile` to clean the directory.

    ```bash
    make clean
    ```

## Typesetting and LaTeX settings

* `a4paper` paper size with the `article` document class.
* `XCharter` for serif, `sourcesanspro` for sans serif, and `sourcecodepro` for monospace.
* Bibliography management with `biblatex` and the `biber` backend.
* This template has been designed for use with `texlive/lualatex`, but it's likely compatible with other compilers. I've confirmed it to compile properly in the following environments:
  * Overleaf with `pdflatex`, Tex Live version 2024.
  * **Note:** I have had problems with `XeLaTeX` in the past, so I recommend using `pdflatex` or `lualatex` instead.
