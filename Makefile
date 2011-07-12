all: resume.pdf

files=resume.pdf resume.tex resume.yaml template.tex

# TODO: use rsync
publish: resume.pdf resume.html
#	scp $(files) dhu@david-hu.com:~/www/resume/
#	scp $(files) dyhu@csclub.uwaterloo.ca:~/www/
#	cp resume.pdf submit/davidhu-resume.pdf

resume.pdf: resume.tex res.cls
	pdflatex resume.tex

resume.tex: template.tex resume.yaml genresumes.py
	python genresumes.py template.tex resume.yaml resume.tex
