indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 2/4
  \tuplet 24/16 {
  \partial 4. ees4 d8~ |
   {
  d4. c4 g8~ | g2 r8 a | gis4. a4 e8~ | e4 g4. g8~ |\break
  g4 f8 e4 d8 | c4 b4. g'8~ | g2. | r2. | \break
  a4 c8 d c ees~ | ees4. d4 c8 |  g4 c8 d c e~ | e4 d4. d8~ |\break
  d4 c8 b4 a8 | d4. c4. | e2. | ees2~ ees8 d8~ |  \break

  d4 c8 b c g8~ | g2 r8 a | gis4. a4 e8~ | e4 g4. g8~ |\break
  g4 f8 e4 d8 | cis4 a'4. g8~ | g2. | f2. | \break
  e'4 f8 e4 e8~ | e4 d8 c4 e8~ | e4 f8 e4 e8~ | e4 d8 c4 e8~ | \break
  e2. | ees2~ ees8 d~ | d2. | r4. ees4 d8\laissezVibrer  |}
}
}


harmonie =  \chordmode{  
}



\header {
  title = #(string-append "Blues du con fini" ton )
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




