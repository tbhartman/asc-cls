
all: cls bst docs sample

help:
	@echo "Makefile for asc-cls."
	@echo "  run \`make COMMAND\`"
	@echo "  where COMMAND is:"
	@echo ""
	@echo "  <blank>: synonym for 'make cls bst docs sample'"
	@echo "  cls: make class asc.cls"
	@echo "  bst: make bib style asc.bst"
	@echo "  docs: make docs for class"
	@echo "  sample: make pdf from template"
	@echo "  help: this help message"
	@echo "  clean: clean stuff up"

.PHONY: clean cls bst docs help sample asc-package
.PRECIOUS:  

sample: asc-sample.pdf

asc-sample.pdf: asc-sample.tex asc.cls asc.bst asc-sample.bib
	pdflatex -interaction=batchmode `basename '$<'`
	bibtex asc-sample
	pdflatex -interaction=batchmode `basename '$<'`
	pdflatex -interaction=batchmode `basename '$<'`

cls: asc.cls

asc.cls: asc.ins asc.dtx
	rm -f asc.cls
	latex -interaction=batchmode $<

bst: asc.bst

%.bst: %.dbj
	pdflatex -interaction=batchmode `basename '$<'`

docs: asc.pdf

%.pdf: %.dtx
	pdflatex -interaction=batchmode $<

clean_tex= \
	rm -f $(1).aux \
	      $(1).blg \
	      $(1).bbl \
	      $(1).glo \
	      $(1).idx \
	      $(1).log \
	      $(1).out \
	      $(1).toc

clean:
	$(call clean_tex,asc)
	$(call clean_tex,asc-sample)

