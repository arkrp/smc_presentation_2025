run: pdf/paper.pdf
	zathura pdf/paper.pdf

pdf/paper.pdf: paper.tex refs.bib | pdf
	latexmk -pdf -output-directory="./pdf" paper

pdf:
	mkdir pdf

clean:
	rm -rf pdf

.PHONY: run clean
