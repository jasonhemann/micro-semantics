default: semantics.pdf

.PHONY: clean
clean:
	-rm semantics.aux semantics.log semantics.pdf 

semantics.pdf: semantics.tex semantics.bib
	pdflatex --shell-escape semantics.tex
	bibtex semantics.aux
	pdflatex --shell-escape semantics.tex
	pdflatex --shell-escape semantics.tex
