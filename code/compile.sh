#! /bin/bash
# -- Compile LaTeX Document
# This example script compiles a LaTeX document using XeLaTeX.
# This is intended to be run by datalad using:
#   datalad run -m "Compile LaTeX document" code/compile.sh
# with appropriate inputs and outputs specified in the datalad run command.
# As such, the compiled tex file should be written with paths based on the root directory of the dataset.
# Compiling another way may require updating paths to comply with the compiler's expectations of a working directory.

export TEXINPUTS="$(pwd)/in/csm-thesis-style//:"

xelatex -interaction=nonstopmode -halt-on-error -output-directory=out/ -jobname=example code/mines-example-dissertation.tex
bibtex out/example
xelatex -interaction=nonstopmode -halt-on-error -output-directory=out/ -jobname=example code/mines-example-dissertation.tex