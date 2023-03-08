# Build two possible versions of resume.

long:
	pdflatex -jobname=resume_long "\newcommand{\longresume}[0]{}\input{resume.tex}"

short:
	pdflatex -jobname=resume_short "\newcommand{\shortresume}[0]{}\input{resume.tex}"

