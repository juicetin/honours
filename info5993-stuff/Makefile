all: Thesis.tex

Thesis: Thesis.tex
	@latex Thesis
	@bibtex Thesis
	@latex Thesis
	@pdflatex Thesis

clean:
	@rm -f `ls | egrep "aux|bbl|blg|dvi|log|bcf|out|xml"`
