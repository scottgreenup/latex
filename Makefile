
.PHONY: main.pdf all clean

all: main.pdf

LATEX=pdflatex
LATEX_FLAGS=-file-line-error -halt-on-error -interaction=nonstopmode

main.pdf: setup main.tex
	latexmk -pdf -jobname=bin/main -pdflatex="$(LATEX) $(LATEX_FLAGS)" -use-make main.tex

clean:
	latexmk -CA -jobname=bin/main

setup:
	mkdir -p bin
