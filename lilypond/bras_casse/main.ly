indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 4/4

  \repeat volta 2 {
    d2 c4 g8 a8~ | a2~ a8 g4. |
    d'2 c4 g8 a8~ | a2 c4 d8 ees8~|
    ees2 d4 c8 f8~| f2 \tuplet 3/4 {r8 f f} | \tuplet 3/4 {f e c} \tuplet 3/4 {g f e~} |}
  \alternative{
    {e2 r2 |}
    {e2 f'4 g |}
  }
  \break

  \repeat volta 2 {
    aes2 g4 f4 | ees8 d4 ees f g8~ | g2 f4 ees | d2 c4. bes8~ | bes2 a4 bes4 |
    \tuplet 3/4 {des8 des des} c4 bes8 f'~ | f2 r2 |
  }
  \alternative{
    {r2 f4 g}
    {r1 }
  }
  \break
  
}





harmonie =  \chordmode{  

  \repeat volta 2 {
  c1:maj7 | s | f:maj7 | s | aes:maj7 | bes | c:maj7 | 
}
\alternative {
  {s}
  {s}
}

  \repeat volta 2 {
    f:min7 | bes:7 |ees:maj7 | d:7 | g:min7 | fis:maj7 | bes:maj7
  }
  \alternative{
    {s}
    {b:3-.5-}
  }

}





\header {
  title = #(string-append "Bras cassé" ton )
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




