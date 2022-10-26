TITRE = mineur_majeur

all: $(TITRE)_piano.pdf $(TITRE)_do.pdf $(TITRE)_sib.pdf $(TITRE)_mib.pdf


$(TITRE)_%.pdf : %.ly main.ly main2.ly Makefile
	lilypond -o $(TITRE)_$* $<

clean :
	rm $(TITRE)_*.pdf $(TITRE)*.midi

