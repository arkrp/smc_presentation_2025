run: pdf/paper.pdf
	zathura pdf/paper.pdf

pdf/paper.pdf: paper.tex pdf
	pdflatex -output-directory pdf paper.tex

pdf:
	mkdir pdf
