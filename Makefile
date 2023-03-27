# Build two possible versions of resume.

long:
	pdflatex -jobname=resume_long "\newcommand{\longresume}[0]{}\input{resume.tex}"

short:
	pdflatex -jobname=resume_short "\newcommand{\shortresume}[0]{}\input{resume.tex}"

cover:
	# The space after the jobtitle is necessary for formatting reasons.
	pdflatex -jobname=cover_letter \
		"\newcommand{\jobtitle}{$(TITLE) }\newcommand{\company}{$(COMPANY)}\newcommand{\organization}{$(ORGANIZATION)}\input{cover_letter.tex}"

