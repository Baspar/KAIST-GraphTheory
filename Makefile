all: texGraphTheory mvdoc pseudoclean

texGraphTheory:
	cd src; pdflatex GraphTheory.tex;pdflatex GraphTheory.tex; cd ..

mvdoc:
	mv src/*.pdf doc/

pseudoclean:
	rm -rf src/*.log src/*.aux src/*.toc src/*.out

clean: pseudoclean
	rm -rf doc/*.pdf
