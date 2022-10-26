TITRE = my_funny_valentine

all: $(TITRE)_marion.pdf $(TITRE)_arnaud.pdf 

$(TITRE)_%.pdf : %.ly 
	lilypond  -o $(TITRE)_$* $^

clean :
	rm $(TITRE)_*.pdf $(TITRE)*.midi
