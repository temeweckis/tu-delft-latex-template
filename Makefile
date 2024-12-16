# Description: A simple Makefile for compiling LaTeX documents with lualatex and biber.
THIS_FILE := $(lastword $(MAKEFILE_LIST))
TARGET := document

# Define lualatex and biber executables
lualatex := /usr/bin/lualatex
biber := /usr/bin/biber

all: $(TARGET).pdf

# Define the default target (lualatex ➞ biber ➞ lualatex x 2)
$(TARGET).pdf:
	$(MAKE) $(THIS_FILE) lualatex
	$(MAKE) $(THIS_FILE) biber
	$(MAKE) $(THIS_FILE) lualatex
	$(MAKE) $(THIS_FILE) lualatex

# Define the lualatex target
lualatex:
	${lualatex} \
		-synctex=1 \
		-interaction=nonstopmode \
		-file-line-error \
		-pdf \
		${TARGET}.tex

# Define the biber target
biber:
	${biber} \
		${TARGET}

# Define the clean target
clean:
	rm -f *.pdf *.out *aux *bbl *blg *log *toc *.ptb *.tod *.fls *.fdb_latexmk *.lof *.bcf *.run.xml *synctex.gz