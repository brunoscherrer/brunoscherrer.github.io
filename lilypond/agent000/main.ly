indent = 0



melodie =  \relative c''{
  \key c \minor
  \numericTimeSignature
  \time 5/4
  \repeat volta 2 {
  aes8 g8~ g1 | fis8 g-. r1 | 
  aes8 g8~ g1 | c8 g-. r1 | \break
  aes8 g8~ g1 | ees8 des-. r1 |
  c4~ c1 | r4 r1 | \break
}
  aes'8 g8~ g1 | fis8 g8~ g1 | 
  aes8 g8~ g1 | c8 g8~ g1 | \break
  aes8 g8~ g1 | ees8 des8~ des1 |
  c4~ c1 | r4 r1 | \break
}


  
basse = \relative c{
  \clef bass
  \key c \major
  \numericTimeSignature
  \time 5/4
\repeat volta 2 {\repeat percent 2 {
  c4. g' bes4 c | c,4. g' bes8 bes g4 | 
}
  des4. g bes4 c | des,4. g bes4 g4 | 
  c,4. g' bes4 c | c,4. g' bes8 bes g4 | 
}
}


harmonie =  \chordmode{  
  \time 5/4
  \tuplet 4/5 {
\repeat volta 2 {
    c1:min9 | s | s | s
    des:maj7 | s | c:min9 | s
    }
    f:min7 | fis:3-.5- | g:7.9- | aes:maj7 |
    ees:maj7 | des:maj7 | c:min9 | s
  }
}

\header {
  title = #(string-append "Agent 000" ton )
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
      \transpose c \noteCibleTransposition{
	\melodie
      }
    }
%    \new Staff { 
%      \transpose c \noteCibleTransposition {
%	\basse
%      }
%    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




