.PHONY: all clean cleanall

all: documento.pdf

documento.pdf: documento.tex bibliografia.bib
	pdflatex documento.tex
	bibtex documento.aux
	pdflatex documento.tex
	pdflatex documento.tex
	pdflatex documento.tex
clean:
	rm -f *.aux *.blg *.bbl *.toc *.log *.lof *.lot *.log.xml *.bcf *.out *.run.xml

cleanall: clean
	rm -f documento.pdf

