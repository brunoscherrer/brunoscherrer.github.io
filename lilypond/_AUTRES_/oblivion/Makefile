TITRE = oblivion

all: $(TITRE)_do.pdf $(TITRE)_sib.pdf $(TITRE)_mib.pdf


$(TITRE)_%.pdf : %.ly main.ly Makefile
	lilypond -o $(TITRE)_$* $<

clean :
	rm $(TITRE)_*.pdf $(TITRE)*.midi

