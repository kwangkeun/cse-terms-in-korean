# Main sources
SRC=	terms.tex

full:	$(SRC)
	pdflatex  root.tex && \
	makeindex root.idx && \
	pdflatex  root.tex && \
	latex  root.tex && \
	dvipdf  root.dvi

#-----------------------------------------------------------------
# Phony
#-----------------------------------------------------------------
.PHONY: edit clean
clean:
	rm -f *.aux root.bbl *.blg *.idx *.ilg *.ind && \
	rm -f *.log *.pdf root.toc *~ *.cmi *.cmo *.out

