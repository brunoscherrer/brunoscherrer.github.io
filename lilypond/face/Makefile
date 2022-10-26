TITRE = face

all: $(TITRE)_do.pdf $(TITRE)_sib.pdf $(TITRE)_mib.pdf

$(TITRE)_%.pdf : %.ly 
	lilypond  -o $(TITRE)_$* $^

clean :
	rm $(TITRE)_*.pdf $(TITRE)*.midi
