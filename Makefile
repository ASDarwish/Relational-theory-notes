
LATEX_SRC = notes.tex
PDF_OUT	  = Notes-on-Relational-Theory

all: $(PDF_OUT).pdf

# Run LaTeX twice to get valid cross-references
$(PDF_OUT).pdf: $(LATEX_SRC)
	pdflatex -jobname=$(PDF_OUT) $(LATEX_SRC)
	pdflatex -jobname=$(PDF_OUT) $(LATEX_SRC)

.PHONY: clean
clean:
	rm -f $(PDF_OUT).pdf
	rm -f $(PDF_OUT).aux
	rm -f $(PDF_OUT).log
