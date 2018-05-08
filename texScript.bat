ECHO compile script started
set arg1=%1
pdflatex %arg1%.tex
bibtex %arg1%.aux
pdflatex %arg1%.tex
pdflatex %arg1%.tex