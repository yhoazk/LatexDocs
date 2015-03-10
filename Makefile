all: clean getpdf


clean:
	rm -rf *.pdf *.log

getpdf:
	pdflatex modules.tex

view:
	evince modules.pdf &
