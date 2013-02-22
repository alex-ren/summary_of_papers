
.PHONY: all
all: summary.tex
	@echo "1. ======== latex summary.tex"
	latex summary.tex
	@echo "2. ======== bibtex summary.aux"
	bibtex summary.aux
	@echo "3. ======== latex summary.tex"
	latex summary.tex
	@echo "4. ======== latex summary.tex"
	latex summary.tex
	@echo "5. ======== dvipdf summary.dvi"
	dvipdf summary.dvi

.PHONY: all
clean:
	rm -rf *.aux
	rm -rf *.log
	rm -rf *.bbl
	rm -rf *.blg
	rm -rf *.toc
	rm -rf *.idx

.PHONY: all
cleanall: clean
	rm -rf *.dvi
	rm -rf *.pdf


