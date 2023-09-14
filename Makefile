
PDF = example.pdf

%.pdf: %.tex; pdflatex $<

all:

pdf: $(PDF)

$(PDF): *.sty

clean:
	rm -f *.aux *.dvi *.log *.nav *.out *.snm *.toc

