#!/bin/bash
pdflatex tex/programming_model.tex
mv programming_model.pdf pdf/
rm -f *.aux *.log  *.nav *.snm  *.toc *.out
