.PHONY: all

all: datax.zip README.html

datax.zip: datax.pdf datax.dtx datax.ins README.md
	7z a $@ $^

datax.pdf : datax.dtx datax.sty
	pdflatex -file-line-error -interaction=nonstopmode $<

datax.sty : datax.ins
	pdflatex -file-line-error -interaction=nonstopmode $<

README.html: README.md
	md2html $<
