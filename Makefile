
all: cls bst docs

help:
	@echo "Makefile for asc-cls."
	@echo "  run \\$$make COMMAND"
	@echo "  where COMMAND is:"
	@echo ""
	@echo "  <blank>: make everything"
	@echo "  clean: clean stuff up"

.PHONY: clean cls bst docs help
.PRECIOUS:  %.drv

cls: asc.cls
	
%.cls: %.ins %.dtx
	rm -f $@
	latex -interaction=batchmode $<

bst: asc.bst

%.bst: %.dbj
	pdflatex -interaction=batchmode `basename '$<'`

docs: asc.pdf

%.pdf: %.dtx
	pdflatex -interaction=batchmode $<

clean_tex= \
	rm -f $(1).log \
	      $(1).toc \
	      $(1).idx \
	      $(1).aux \
	      $(1).glo \
	      $(1).out \
	      $(1).toc \

clean:
	$(call clean_tex,asc)

