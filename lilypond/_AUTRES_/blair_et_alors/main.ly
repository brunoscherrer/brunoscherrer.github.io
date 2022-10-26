indent = 0

melodie =  \relative c''{
  \key d \major
  \numericTimeSignature \time 4/4
  r1
  e
}

pa = \lyricmode {
  ah
}


harmonie = \chordmode {
  r1
  e:3-.5-.7  a:min7  d:dim  c:maj7
  f:3-.5-.7  a:min7   d:6   aes2:7  bes:7
  g1:min d:min f:min c
  a:7 d:min g:maj7 g1
  e g1 g  
  g cis/gis a:min7 g b:min7 c:5+ 
}



\header {
  title = #(string-append "Et alors" ton )
  tagline =  ""
  composer = "Blair"
}



\score{
  <<
    \new ChordNames {
      \transpose c \noteCibleTransposition{
	\harmonie
      }
    }
    \new Voice = "one" { 
      \transpose c \noteCibleTransposition {
	\melodie
      }
    }
    \new Lyrics \lyricsto "one" {
      \pa
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




