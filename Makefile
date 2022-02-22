filename=JarridRectorBrooksResume

pdf:
	pdflatex ${filename}
	bibtex ${filename}
	pdflatex ${filename}
	pdflatex ${filename}
	wslview ${filename}.pdf

clean:
	rm -f ${filename}.{ps,pdf,log,aux,out,dvi,blg}

