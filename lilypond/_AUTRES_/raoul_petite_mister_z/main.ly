indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 12/8
  r2.  e8 b g c f, g | r1. | r2. r8 d' c b a c r  c b a g  b a g f  a g f e  f e   d e f   c d e b g c 
}



harmonie =  \chordmode{  

  
}



\header {
  title = #(string-append "Mister Z" ton )
  tagline =  ""
  composer = "Raoul Petite"
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




