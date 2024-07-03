indent = 0

melodie =  \relative c'{
  \key c \major
  \numericTimeSignature
  \time 4/4 
  \repeat volta 4
  {
    r4 r4  f4 c'8 ees8~ | ees8 bes4.  bes8 g4 a8~  a8 d,8 d4. c4. 
    f8 d g4 f4 e8 c8~ c8 d4.  f8 d  g4 f4 e8 c4 d4. 
  }
}


melodieb = \relative c''{
  \numericTimeSignature
  \repeat volta 4 {
    r8 c8 d e f g4 r8   r4 g8 f ees d4.    c8 bes g4 c8 a4.  \break
    r8 d8 c4 bes8 a g4~  g8 f4.   r8 c'8 bes4 a8 g f8 e8~ e2  \break
  }
}


harmonie =  \chordmode{  
  \repeat volta 4 {
    d1:min7  s8 bes2:maj7 s8 s8  ees4.:maj7 d2.:min7
    g2.:min7 a4:min7  s8 bes2.:maj7 s8  s4 c4. d4.:min7
  }
}



\header {
  title = #(string-append "Bulkamer" ton )
  tagline =  ""
  composer = "Julien Lourau"
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
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodieb
      }
    }
  >>
  \layout{
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 4 30     )   }
  }
}




