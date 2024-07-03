indent = 0

melodie =  \relative c'{
  \key c \major
  \numericTimeSignature
  \repeat volta 4 {
  r4. r4  f8 c' ees4 bes4.  bes8 g4 a4 d,8 d4. c4. 
  f8 d g8~ g4 f8 e c4 d4.  f8 d g8~ g4 f8 e c4 d4. 
}
}


basse = \relative c'{
  \repeat volta 4 {
    \time 9/8 d2.~ d4.  bes2. ees4. \time 6/8 d2. \break
    \time 9/8 g4.~ g4. a4. bes2.~ bes4. \time 6/8 c4. d4. \break
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
      \basse
      }
    }
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodie
      }
    }
  >>
  \layout{
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 4 30     )   }
  }
}




