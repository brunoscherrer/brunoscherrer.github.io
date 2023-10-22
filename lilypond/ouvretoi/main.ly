indent = 0

melodie =  \relative c''{
  \key ees \major
  \numericTimeSignature
  \time 5/4
  \repeat volta 2 {
    \repeat percent 8 {
      g8 g4 ees4 f8 ees4 c
    }
  }
  \repeat percent 4 {
    f8 f4 des4 f8 des4 c
  }
  \repeat percent 4 {
    f8 f4 c4 a8 c4 a
  }

}





harmonie =  \chordmode{  
\tuplet 4/5 {
  \repeat volta 2 {
  c1:min7 s s s
  aes:maj7 s s s
}
  des:maj7 s s s
  f:7 s s s 
}
}



\header {
  title = #(string-append "Ouvre-toi" ton )
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




