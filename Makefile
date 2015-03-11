all: clean getpdf view

clean:
	rm -rf Modules.pdf *.log

getpdf:
	pdflatex Modules.tex

view:
	evince Modules.pdf &
