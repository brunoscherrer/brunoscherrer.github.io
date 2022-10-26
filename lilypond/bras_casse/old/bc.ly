\version "2.18.2"	


indent=0


noteCibleTransposition =   c   % c         % d pour Si b %  a, pour Mi b



melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 4/4
  d2 c4 g8 a8~ | a2~ a8 g4. |
d'2 c4 g8 a8~ | a2 c4 d8 ees8~|
ees2 d4 c8 f8~| f2 \tuplet 3/4 {r8 f f} | \tuplet 3/4 {f e c g f e~} | e2 r2 |
}





harmonie =  \chordmode{  
 c1:maj7 | s | f:maj7 | s | aes:maj7 | bes | c:maj7
}



\header {
  title = "Bras cassé"
  tagline =  ""
  composer = "B. Scherrer"
}



\score{
  <<
    \new ChordNames {
      \transpose c \noteCibleTransposition{
	\harmonie
      }
    }
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodie
      }
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




\score {
  <<
    \new Staff << \unfoldRepeats{\melodie 
                                 }  >>
    \new Staff << \unfoldRepeats{\harmonie
                          } >> 
  >>
\midi{ \tempo 2 = 60 }
}