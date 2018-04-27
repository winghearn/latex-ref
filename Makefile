FILENAME = filename

.PHONY: clean

pdf: $(FILENAME).tex
	pdflatex $<
	bibtex $<
	pdflatex $<
	pdflatex $< 

dvi: $(FILENAME).tex
	latex $<
	bibtex $<
	latex $<
	latex $<

all: dvi pdf

clean: 
	-rm -rf *.aux *.log *.bbl *.blg *.dvi *.pdf

