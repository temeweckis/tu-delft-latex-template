# Description: A simple Makefile for compiling LaTeX documents with lualatex and biber. Designed for use with the GNU Make utility in bash.
THIS_FILE := $(lastword $(MAKEFILE_LIST))
TARGET := document

# Define lualatex and biber executables
lualatex := /usr/bin/lualatex
biber := /usr/bin/biber

# Define temporary files to be removed
TMPFILES := *.pdf *.out *.aux *.lof *.log *.lot *.fls *.out *.toc *.fmt *.fot *.cb *.cb2 .*.lb *.ptb *.tod *.bbl *.bcf *.blg *-blx.bib *.run.xml *.fdb_latexmk *.synctex* *.synctex.gz* *.pdfsync *.rubbercache rubber.cache

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
	rm -f $(TMPFILES)