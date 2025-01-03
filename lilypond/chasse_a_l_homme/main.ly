indent = 0


melodiea =  \relative c''{
  \key c \major
  g8 a a a a a c2. | c8 d a2~ | a2. | g8 a d,2~ | d2. | c8 d8 r d r d a4. g4. | \break 
  g'8 a a a a a c2. | c8 d aes2~ | aes2. | g8 f g2~ | g2. | f8 d8 r f r f d2. | \break
}


bassea = \relative c,{
  \repeat percent 4 {
    d4. d'8 r d, d'4 c8 d a4 |
  } \break
  d,4. d'8 r d, d'4 c8 d a4 |
  d,4. d'8 r d, d'4 c8 d aes4 |
  d,4. d'8 r d, d'4 c8 d a!4 |
  d,4. d'8 r d, d'4 c8 d aes4 |
}

harmoniea = \chordmode{
  d1.:min7 | e:min7/d | f:maj7/d | g:7/d |
  d1.:min7 | e:5+/d | f:maj7/d | aes:5+.7+/d |
}

melodieb = \relative c''{
  \repeat volta 2 {
  g4. a4. | c2~ c8 bes | a c f,2~ | f2. | \break
  aes8 f aes c bes aes | bes c bes aes g f | g bes ees,2~ | ees2. | \break
  ges4. aes | c! aes4 ges8 | g!4. a! | cis a!4 g!8 | \break
  ges4. aes | c! aes |
  }
  \alternative{
    {c2.~ | c2.}
    {c2.  | cis2.}
  } \break
}

harmonieb =  \chordmode{  
  \repeat volta 2 {
    g2.:min7 | c:7 | f:maj7 | s |
    f:min7 | bes:7 | ees:maj7 | s |
    ees:min7 | aes:7 | e:min7 | a:7 |
    ees:min7 | aes:7 |
  }
  \alternative{ 
    {des2.:maj7 | d:5+.7 |}
    {des2.:maj7 | a:5+.7 }
  }
}


melodie = {
  \time 3/4
  \mark \markup \box \bold {A}
  \repeat volta 2 {\melodiea}
  \mark \markup {\box \bold {B} (Swing)}
  \melodieb
}

harmonie = {
  \time 3/4
  \repeat volta 2 {\harmoniea}
  \harmonieb
}


\header {
  title = #(string-append "Chasse à l'homme" ton )
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
      \numericTimeSignature
      \transpose c \noteCibleTransposition {
	\melodie
      }
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}


\score{
  <<
  \new ChordNames {
      \transpose c \noteCibleTransposition{
	\harmoniea
    }
  }
  \new Staff {
     \numericTimeSignature
     \time 3/4
     \clef bass
     \key c \major
     \mark \markup \box{"Basse"}
     \transpose c \noteCibleTransposition{
       \bassea
     }
   }
>>
}


