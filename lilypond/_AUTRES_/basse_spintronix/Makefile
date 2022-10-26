TITRE = bspin

all: $(TITRE)_do.pdf 


$(TITRE)_%.pdf : %.ly main.ly Makefile
	lilypond -o $(TITRE)_$* $<

clean :
	rm $(TITRE)_*.pdf $(TITRE)*.midi

