indent = 0

mela = { bes8 ees bes a  d a aes g  c g fis b-^ r2 |
  bes8 ees bes a  d a aes g  c g fis f-^ r2 | \break
  bes8 ees bes a  d a aes g  c g fis b-^ r4 r8 fis |
  g c-^  r fis, g bes-^ r4 | \tuplet 3/2 {g8 fis f} ees8 c-^ r2 }

melodie =  \relative c''{
  \key c \minor
  \numericTimeSignature
  \time 4/4
  \mark \markup \column {  {\italic swing} {\box \bold {A}} } 
  \repeat volta 2 {\mela}
  \mark \markup \box \bold {B}
  r8 c8~ c4 d ees | g4 fis8 f~ f4 d8 a~ | a1 | r1   \break
  r8 c8~ c4 d ees | g4 fis8 f~ f8 d8~ d4 | g8 f des c'~ c2 | r1 \break  
  \mark \markup \box \bold {A}
  \mela
}

chorda = \chordmode {
  c1:min13 s2 s8 g4.:5+.7
  c1:min13 s2 s8 f4.:7
  c1:min13 s2 s8 g4.:5+.7
  r1 r1
}


harmonie =  \chordmode{  
  \repeat volta 2 {\chorda}
  d1:3-.5-.7 | g:7 | c:min13 | s |
  d1:3-.5-.7 | des:7 | des:maj7 | s |
  
  \chorda
}



\header {
  title = #(string-append "Mardi, prison de la santé" ton )
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




