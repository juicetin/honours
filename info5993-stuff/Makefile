all: LiteratureReview.tex ResearchProposal.tex GeneralMLNotes.tex MiniPaper.tex Presentation.tex

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

MiniPaper: MiniPaper.tex
	@latex MiniPaper
	@bibtex MiniPaper
	@latex MiniPaper
	@pdflatex MiniPaper

GeneralMLNotes: GeneralMLNotes.tex
	@pdflatex GeneralMLNotes

Presentation: Presentation.tex
	@latex Presentation
	@bibtex Presentation
	@latex Presentation
	@pdflatex Presentation

clean:
	@rm -f `ls | egrep "aux|bbl|blg|dvi|log|bcf|out|xml"`
