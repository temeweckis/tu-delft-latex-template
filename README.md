# Teemu's TU Delft LaTeX Template

This repository contains my standard LaTeX template, which I mainly use for writing assignments and taking notes at the Delft University of Technology (TU Delft).
<!-- It contains several packages and shortcuts which I find particularly useful. -->

This template can be viewed in Overleaf using [this link](https://www.overleaf.com/read/whdqpbhcfhmq#d8bdea).

## Usage

1. Create your project using this template, either with the `Use this template` feature in GitHub or by creating a copy of the Overleaf project.

   Alternatively, you can clone this repository locally, copy its contents to your desired directory, and remove the contents of `.git/` and `.gitignore`.

    ```bash
    cp -r tu-delft-latex-template/. [your_dir] && rm -rf [your_dir]/.git/ [your_dir]/.gitignore
    ```

2. Edit and add files to your liking.
   Please remove references to TU Delft if you are not affiliated with the university.

3. Compile the document with `lualatex` and `biber`, either with the provided `Makefile` or your own recipe.

    ```bash
    make document.pdf
    ```

    Alternatively, you can compile the document in Overleaf with the default compiler.

4. Optionally, use the `Makefile` to clean the directory.

    ```bash
    make clean
    ```

## Typesetting and LaTeX settings

* `a4paper` paper size and `10pt` font size with the `article` document class.
* Body fonts: `erewhon` (derived from Utopia) for serif, `sourcesanspro` for sans serif, and `sourcecodepro` for monospace.
* Maths fonts: `newtxmath`.
* Bibliography management with `biblatex` and the `biber` backend.
* This template has been designed for use with `texlive/lualatex`, but it's likely compatible with other compilers. I've confirmed it to compile properly in the following environments:
  * Overleaf with `pdflatex`, Tex Live version 2024.
  <!-- * **Note:** I have had problems with `XeLaTeX` in the past, so I recommend using `pdflatex` or `lualatex` instead. -->
