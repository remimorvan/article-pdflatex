PROJECTNAME = 
NOTIONSFILE = header/kl-notions.tex

ifeq ($(PROJECTNAME), )
	FILENAME = main
else
	FILENAME = main-$(PROJECTNAME)
endif

TEXFILE = $(FILENAME).tex
DIAGNOSEFILE = $(FILENAME).diagnose
ZIPFILE = $(FILENAME).zip

.PHONY: all kl clean Clean init zip

all:
	latexmk -pdf -use-make -synctex=1 -interaction=nonstopmode -file-line-error $(TEXFILE) -silent

kl:
	knowledge cluster -k $(NOTIONSFILE) -d $(DIAGNOSEFILE)

clean: # Clean all nonessential files, except dvi, pdf and ps files
	latexmk -c -silent
	rm -f $(DIAGNOSEFILE) $(FILENAME).kaux $(ZIPFILE)

Clean: # Clean all nonessential files 
	latexmk -C -silent
	rm -f $(DIAGNOSEFILE) $(FILENAME).kaux $(ZIPFILE)

init:
	rm README.md

zip:
	zip -r $(ZIPFILE) . -x .git\* .gitignore .vscode\*