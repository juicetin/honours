all: LiteratureReview.tex ResearchProposal.tex GeneralMLNotes.tex

LiteratureReview: LiteratureReview.tex
	@latex LiteratureReview
	@bibtex LiteratureReview
	@latex LiteratureReview
	@pdflatex LiteratureReview

ResearchProposal: ResearchProposal.tex
	@latex ResearchProposal
	@bibtex ResearchProposal
	@latex ResearchProposal
	@pdflatex ResearchProposal

GeneralMLNotes: GeneralMLNotes.tex
	@pdflatex GeneralMLNotes

clean:
	@rm `ls | egrep "aux|bbl|blg|dvi|log"`
