all: main.pdf

main.pdf: main.tex reference.bib
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex

clean:
	rm -f *.aux *.bbl *.log *.blg 

.PHONY: all clean