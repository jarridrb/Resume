filename=Jarrid_Rector_Brooks_Resume

pdf:
	pdflatex ${filename}
	bibtex ${filename}
	pdflatex ${filename}
	pdflatex ${filename}
	wsl-open ${filename}.pdf

clean:
	rm -f ${filename}.{ps,pdf,log,aux,out,dvi,blg}

