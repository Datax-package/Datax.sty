.PHONY: all

all: datax.zip README.html

datax.zip: datax.pdf datax.dtx datax.ins README.md
	7z a $@ $^

README.html: README.md
	md2html $<
