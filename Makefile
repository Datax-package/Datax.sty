.PHONY: all clean

all: datax.zip README.html

# A suggestion was to curl the plugins to datax/plugins/ before zipping, but with julia and matlab both having specific procedures for installing, I'm tempted to not
datax.zip: datax.pdf datax.dtx datax.ins README.md
	mkdir -p datax
	cp $^ datax/
	7z a $@ datax

datax.pdf : datax.dtx datax.sty
	pdflatex -file-line-error -interaction=nonstopmode $<

datax.sty : datax.ins datax.dtx
	pdflatex -file-line-error $<

README.html: README.md
	md2html --github $< > $@

clean :
	$(RM) -rd datax
	$(RM) datax.zip *.pdf *.log *.aux *.out *.glo *.idx *.sty *.html *.tex
