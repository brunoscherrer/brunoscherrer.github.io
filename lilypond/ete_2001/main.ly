indent = 0

melodie =  \relative c'''{
  \numericTimeSignature

  \mark \markup {\box \bold A}
  \repeat volta 2 { \key c \major
  \time 3/4 g2~ g8 aes | g2~ g8 aes | g4 f ees | ees d c | \break
  \time 2/4 \tuplet 3/2 {b c d} |
  \time 3/4 ees2 g4 | ees8. c b g | \break
}

  \mark \markup {\box \bold B}
  \repeat volta 2 { \key c \major
    \time 3/4 e'2 c'4 | a2 g8 f | f4 e c | \time 2/4 \tuplet 3/2 {d c b} | \break
    \time 3/4 e2 a,4 | e'2 a,4 | 
  }
  \alternative {
    {\tuplet 3/2 {g'8 b d} \tuplet 3/2 {f, a c} \tuplet 3/2 {b aes f |} }
    {\tuplet 3/2 {e8 g b} \tuplet 3/2 {f a c} \tuplet 3/2 {b aes f |} }
  } \break

  \mark \markup {\box \bold C}
  \time 3/4 g4~ \tuplet 3/2 {g4 bes,8} \tuplet 3/2{ees f g} | aes2 bes8 c | b4 bes aes |
  \tuplet 3/2 {ees'4 des8~} \tuplet 3/2 {des8 b4} \tuplet 3/2 {bes4 aes8 |} \break
  g4~ \tuplet 3/2 {g4 bes,8} \tuplet 3/2{ees f fis} | g4~ \tuplet 3/2 {g4 d8~} d4 |
  g4~ \tuplet 3/2 {g4 c,8~} c4 | e8. c e d \break

  \mark \markup {\box \bold D}
  \time 3/4 <<{e2 c'4  a2 g8 f  f4 e c}\\ {c,4 d e f g gis a2.}>> | \time 2/4 \tuplet 3/2 {d4 c b} | \break
  \time 11/8
  \repeat unfold 2 {
    <c g'>8 ees <c g'> ees <c g'> ees <aes, ees'>8. c <f, b>8 g |
  } \break
  \time 3/4  <c g'>8 ees <c g'> ees <c g'> ees <aes, ees'>8. c <f, b> g | d'2. | r2. 
}



harmonie =  \chordmode{  
\repeat volta 2 {
  \time 3/4  c2.:min9 | f:min7 | aes:maj7 | fis:3-.5-.7- |  \time 2/4  g2:7 |
  \time 3/4  aes2.:maj7 | f4.:min7 g:7
}
\repeat volta 2 {
  \time 3/4 c2.:maj7 | f:maj7 | a:min7 |
  \time 2/4 g2:7 |
  \time 3/4 fis2.:3-.5-.7 | f:maj7 |
}
  \alternative  {
  {e4:min7 f:maj7 d:3-.5-.7- }
  {e4:min7 f:maj7 d:3-.5-.7- }
}
ees2.:maj7 | aes:maj7 | aes:min7 | des:7 | ees:7 | g:7 | f | a4.:min e/aes |

\time 3/4 c2.:maj7 | f:maj7 | a:min7 |
\time 2/4 g2:7 |
\time 11/8 \repeat unfold 2 {aes2.:maj7 f4.:min7 g4:7 }
\time 3/4 aes2.:maj7 f4.:min7 g:7 | c2.:min9 | s
}




\header {
  title = #(string-append "Ete 2001" ton )
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




