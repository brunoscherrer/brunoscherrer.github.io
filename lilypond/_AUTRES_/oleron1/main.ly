indent = 0

melodie =  \relative c'''{
  \key c \major
  \numericTimeSignature
  \time 4/4
  \repeat volta 2 {
  g4 b8 g~ g e c e~ | e1 | g4 bes8 g~ g ees c ees~ | ees1 | \break
  c4 des8 c~ c aes f aes~ | aes1 | b4 e8 b~ b aes e aes~ | aes1 | \break
  b!2 bes4 aes | bes1 | c4. des4 c b8 | \break
  c2 f | d4. ees4 d c8 | d2 g |
  }
}



harmonie =  \chordmode{  
  \repeat volta 2 {
  a1:min7 | s | aes:maj7 | s |
  des:maj7 | s | des:min7 | s |
  d:3-.5- | ees:7 | c:7/e |
  f2:maj7 f:7 | d1:7/fis | g2:maj7 g:7 |
}
}


\header {
  title = #(string-append "Oléron" ton )
  tagline =  ""
  composer = "A. Lemenant"
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




