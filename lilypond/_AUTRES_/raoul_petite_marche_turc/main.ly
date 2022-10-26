indent = 0

melodie =  \relative c''{
  \key ges \major
  \numericTimeSignature
  \time 4/4
  \partial 2 bes8 aes g aes |
  \repeat volta 2 {
  ces2 des8 ces bes ces | ees2 e8 ees d ees | bes' aes g aes bes aes g aes |
  \key bes \major
  c2 a4 c | bes4 a g a |  bes a g a  | bes a g fis | }
  \alternative {
    {f2 bes,8 aes g aes}
    {f'2 f4 ges}
  } \break
  \key ges \major
  \repeat volta 2 {
    aes aes bes8 aes ges f | ees2 f4 ges | aes aes bes8 aes ges f | ees2 des4 ees | \break
    f f ges8 f ees des | b2  des4 ees  |  f f ges8 f ees des
  }
  \alternative {
    { b2  f'4 ges }
    { b,2  r2 }
    }
} 



harmonie =  \chordmode{  
  \time 4/4
  \partial 2 s2
  \repeat volta 2 {
    aes1:min | aes:min | aes:min | c:min |
    g:min | g:min | g:min
  }
  \alternative {
    {f2 s2}
    {f2 s2}
  }
  \repeat volta 2 {
    des1 | b | des | b |
    bes:min | g | bes:min |
  }
  \alternative { {g} {g} }
}


\header {
  title = #(string-append "Le Marché Turc" ton )
  tagline =  ""
  composer = "Raoul Petite (Têt de Kran, 1995) / Mozart"
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




