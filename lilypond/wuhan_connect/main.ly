indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 3/4
  d2.~ d2.  r4. d8. ees f g d bes | \break g2. ~ g2. r2. r2. | \break
  b2.~ b2.  r4. a8. g a4. g8. fis | \break fis2. ~ fis2. r2. r2. | \break
  g2.~ g2.  r4. g8. aes bes c g ees | \break c2. ~ c2. r2. r2. | \break
}



harmonie =  \chordmode{  
  \time 3/4
  \repeat unfold 2 { c2.:m9 c:3-.5+.9 c:3-.6.9 c:3-.5+.9 }
  \repeat unfold 2 { e2.:m9 e:3-.5+.9 e:3-.6.9 e:3-.5+.9 }
  \repeat unfold 2 { aes2.:9 aes:5+.9 aes:6.9 aes:5+.9 }
}



\header {
  title = #(string-append "Wuhan connect" ton )
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




