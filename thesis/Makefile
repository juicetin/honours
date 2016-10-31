PROJ = thesis

.PHONY: all pdf wc clean

all: pdf

pdf:
	pdflatex $(PROJ) -shell-escape
	bibtex $(PROJ)
	pdflatex $(PROJ) -shell-escape
	pdflatex $(PROJ) -shell-escape

wc:
	wc `find . -name "*.tex"`

clean:
	rm -f `find . -name '*.log'`
	rm -f `find . -name '*.dvi'`
	rm -f `find . -name '*.ps'`
	rm -f `find . -name '*.aux'`
	rm -f `find . -name '*.blg'`
	rm -f `find . -name '*.bbl'`
	rm -f `find . -name '*.toc'`
	rm -f `find . -name '*.lof'`
	rm -f `find . -name '*.lot'`
	rm -f `find . -name '*.out'`
	rm -f `find . -name '*~'`
