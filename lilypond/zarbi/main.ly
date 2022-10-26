indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 3/4
  \repeat volta 2 {
    f8 d~ d2 | f8 c~ c2 | ges4. f8. ees8. | des2. |
  } \break
  \repeat volta 2 {
    f8 aes~ aes2 | f8 aes~ aes2 | aes8 fes~ fes2 | ees2. |
  } \break
}



harmonie =  \chordmode{  
  \time 3/4
\repeat volta 2 {
  d2.:min7 | f:min7 | b:maj7 | ges:maj7 |
}
  \repeat volta 2 {
  bes2.:min7 | des:maj7 | e:maj7 | b:maj7 |
}
}



\header {
  title = #(string-append "Zarbi" ton )
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




