MAIN = main
Reporte = Plantilla


# PDFLATEX_OPTS = -shell-escape
# DVIPS_OPTS  = -Ppdf -G0 -tletter
# PS2PDF_OPTS = -dSubsetFonts=true -dEmbedAllFonts=true

default : main



main :
	pdflatex $(MAIN).tex;\
	pdflatex $(MAIN).tex;\
	gnome-open $(MAIN).pdf;\
	make clean;

clean:
	/bin/rm -rf *.ps *.dvi *.lof *.bbl *.blg *.aux *.out;\
	/bin/rm -rf *.log *.toc *.spl *.backup;
