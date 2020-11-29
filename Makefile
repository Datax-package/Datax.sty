.PHONY: all clean

all: datax.zip datax-logo.png README.html

# A suggestion was to curl the plugins to datax/plugins/ before zipping, but
# with all implemented languages so far having specific procedures for
# installing, I'm tempted to not
datax.zip: datax.pdf datax.dtx datax.ins README.md datax-logo.tikz
	mkdir -p datax
	cp $^ datax/
	7z a $@ datax

datax.pdf : datax.dtx datax.sty datax-logo.tikz
	pdflatex -file-line-error -interaction=nonstopmode $<

datax.sty : datax.ins datax.dtx
	pdflatex -file-line-error $<

README.html: README.md
	md2html --github $< > $@

datax-logo.pdf : datax-logo.tex datax-logo.tikz
	pdflatex -file-line-error -interaction=nonstopmode $<

datax-logo.png : datax-logo.pdf
	convert $< -density 300 -resize 2000$% $@

clean :
	$(RM) -rd datax
	$(RM) datax.zip *.log *.aux *.out *.glo *.idx *.sty *.html datax-example-data.tex
	$(RM) datax-logo.pdf data.tex datax-example-script.jl
