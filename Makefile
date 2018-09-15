STY=*.sty
CLS=*.cls
FNAME=rh5cl2pp
$(FNAME).pdf: $(FNAME).tex $(STY) $(CLS) Bioc.bib
	pdflatex $(FNAME).tex && bibtex $(FNAME) && pdflatex $(FNAME).tex && pdflatex $(FNAME).tex 
