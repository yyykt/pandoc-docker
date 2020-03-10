# convert markdown to pdf/html/docx using docker pandoc

file = report

pandoc = docker run -it --rm -v ${PWD}:/data yyykt/pandoc-docker-ja
filters := -F pandoc-crossref -F pandoc-citeproc
pdf_opt := --pdf-engine=lualatex -V documentclass=ltjsarticle -N

pdf:
	$(pandoc) $(file).md -o $(file).pdf $(pdf_opt) $(filters)

html:
	$(pandoc) $(file).md -o $(file).html

docx:
	$(pandoc) $(file).md -o $(file).docx

tex:
	$(pandoc) $(file).md -o $(file).tex $(pdf_opt) $(filters) -s

sh:
	$(pandoc) sh

clean:
	rm $(file).pdf $(file).html $(file).docx $(file).tex
