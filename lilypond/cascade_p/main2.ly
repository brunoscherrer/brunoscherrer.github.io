indent = 0

melodiea = {
\repeat volta 2 {\time 9/8 bes2.~ bes4. | ees2.~ ees8 d c | bes2.~ bes4.~ | bes4.~ bes4 a2 | aes2.~ aes4.~ | aes4. g f | }
  \alternative {
    {\time 9/8  g4 aes8 r4 g4. f8 | \time 6/8 g4. aes |}
    {\time 9/8  g4 aes8 r4 g4. f8 | \time 6/8 ees4. d |}
  }
 \time 9/8 b2.~ b4. | g'2. f4. | ees2.~ ees4.~ | ees4. d c | a2.~ a4. | g'2. f4. | 
  }

melodie =  \relative c''{
  \key ees \major
  \numericTimeSignature
  \melodiea
  \tuplet 2/3 { c'4. d c b }
  \melodiea
  \tuplet 2/3 { c'4. d ees f }
  
}


harmoniea =  \chordmode{
  \repeat volta 2 { \tuplet 8/9 { ees1:maj7 | f:min7 | g:min7 | fis:3-.5-.7- | f:min7 | r |} }
  \alternative {
    { \tuplet 8/15 {bes1} }
    { \tuplet 8/15 {bes1} }
  }
  \tuplet 4/9 { g1:7  | c:min7 | f:7  | bes  |}
}

	      
harmonie =  {
  \harmoniea
  \harmoniea
}



\header {
  title = #(string-append "Rendez-vous à la Cascade de la Pisse" ton )
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
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 24     )   } }
}




