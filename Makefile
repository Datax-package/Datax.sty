.PHONY: all clean

all: datax.zip README.html

datax.zip: datax.pdf datax.dtx datax.ins README.md
	mkdir -p datax
	cp $^ datax/
	7z a $@ datax

datax.pdf : datax.dtx datax.sty
	pdflatex -file-line-error -interaction=nonstopmode $<

datax.sty : datax.ins datax.dtx
	pdflatex -file-line-error $<

README.html: README.md
	md2html $< > $@

clean :
	$(RM) -rd datax
	$(RM) datax.zip *.pdf *.log *.aux *.out *.glo *.idx *.sty *.html data.tex
