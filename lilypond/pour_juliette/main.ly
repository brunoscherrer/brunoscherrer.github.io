indent = 0

melodiea =  \relative c''{
  \key ees \major
  \numericTimeSignature
  g16 f g~ g8.~ g4. | r8 aes g aes bes c | g4 ees c f4. |
  g16 f g~ g8.~ g4. | r8 aes g aes bes c | g4 aes bes bes4. |
  c16 bes c~ c8.~ c4. | r8 d ees d4  c8 | c4 bes aes g4. |
  f4.~ f8 ees8 f | g4.~ g8 f8 g | aes4.~ aes8 g f~ f4. |
}

melodieb =  \relative c''{
  \key ees \major
  \numericTimeSignature
  d16 ees d~ d8.~ d4. | r8 ees d ees f g | d4 bes g c4. |
  d16 ees d~ d8.~ d4. | r8 ees d ees f g | d4 bes g g'4. |
  g16 aes g~ g8.~ g4. | r8 f ees f4  g8 | ees4 c4. e8~ e4. |
  aes,4. bes | c d  | ees4 d8 ees4 f8~ f4.
}



harmonie =  \chordmode{  
 \time 6/8  ees2.:maj7 | f:min7 | \time 9/8 g:min7 f4.:min7 \break
\time 6/8  ees2.:maj7 | f:min7 | \time 9/8 g:min7 f4.:min7 \break
\time 6/8  aes2.:maj7 | g:min7 | \time 9/8 f:min7 c4.:9/e \break
\time 6/8  f2.:min7 | g:min7 | \time 9/8 aes:maj7 bes4.:7 \break

}



\header {
  title = #(string-append "Pour Juliette (partie II)" ton )
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
      \melodieb
      }
    }
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodiea
      }
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




