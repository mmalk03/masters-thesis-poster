.PHONY: main clean FORCE

main: poster

poster: FORCE
	latexmk -cd -pdflatex='lualatex -interaction nonstopmode' -aux-directory=out -pdf src/main.tex

clean:
	latexmk -pdf -C src/main.tex
