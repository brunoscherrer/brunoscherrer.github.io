indent = 0

melodie =  \relative c''{
  \key g \major
  \numericTimeSignature

  \time 3/4
  \repeat volta 2 {
    g8 g g16 g g g  g16 d'8 d16~ |
    \time 4/4 d1 
  b8 g a8 g16 a8.  g8 c8 d16 b16~ | b2. r4 | \break
  \time 3/4 a4 b8 g8~ g4~ g2 r4 |
  g16 g8. g8 a b a g e a g b a |
}
  \alternative {
    {\time 2/4 g2 | \time 4/4  r1  r1  }
    {\time 2/4 g2 }
  } \break

  \time 4/4
  c4. g8~ g4. g8~ | g1 | c4. g8~ g4. g8~ | g2. g'8 f16 d |
  \time 2/4
  f8 d16 d c8 bes16 f
  \time 3/4
  g2.
  

  
}



harmonie =  \chordmode{  
  \repeat volta 2 {
    g4 a:min7 g/b | g1 | c4 cis:dim d dis:dim | e2:min ees |
    d4 cis:dim c2  c:min | g2/b a:7 d:7
  }
  \alternative {
    { g2 | c4 g/b a2:7 d:7 g2 }
    { g2 }
  }

  f4 c/e d:min c bes2:6 c
  f4 c/e d:min c bes2:6 a:7
  d2:sus7 g 
  
}



\header {
  title = #(string-append "BlackBird (CSNY)" ton )
  tagline =  ""
  composer = "Beatles"
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




