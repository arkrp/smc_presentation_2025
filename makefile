run: paper.pdf
	zathura paper.pdf

paper.pdf: paper.tex refs.bib
	latexmk -pdf paper

clean:
	echo "LaTeX is a PAIN to debug!"
	rm -rf pdf
	rm paper.bbl
	rm paper.aux
	rm paper.bcf
	rm paper.blg
	rm paper.fdb_latexmk
	rm paper.fls
	rm paper.log
	rm paper.nav
	rm paper.out
	rm paper.run.xml
	rm paper.snm
	rm paper.toc
	rm paper.pdf

.PHONY: run clean
