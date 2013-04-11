all:    johnhogenmiller.html johnhogenmiller.pdf johnhogenmiller.docx \
	johnhogenmiller.odt

%.html: %.md
	    pandoc -o output/$@ $< 

%.pdf:  %.md
	    pandoc -o output/$@ $<

%.docx: %.md
			pandoc -o output/$@ $<

%.odt: %.md
			pandoc -o output/$@ $<

clean:
	    rm -f *~ output/*
