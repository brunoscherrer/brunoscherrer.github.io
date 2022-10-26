indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 4/4
  \repeat volta 2 {
    a4 a8 e8~ e2~ | e1 | g4 g8 d8~ d2~ | d1
    a'4 a8 e8~ e2~ | e2 d8 e f bes | e,4 d8 g8~ g2~ | g1 | \break
  }
  \key c \major
  a8 e a b c4 d | e8 f4 gis,8~ gis2 | e'8 f e d c4 g8 fis8~ | fis8 ees'4 d c4 bes8~ | \break
  bes8 d,  g8 a bes4 c | d8 ees4 fis,8~ fis2 |  \tuplet 3/2 {d'4 ees fis} \tuplet 3/2 {g a bes} | cis4. bes8 a4 g8 f~  \break

  f8 a, d e f4 g | a8 bes ees,4~ ees4. bes'8 | a4 g4 cis,8 a'4 g8~ | g4. f8~ f2 | \break

  f4 d bes a | g8 a4 bes c cis8~ | cis4. cis,8 a' cis, aes' g~ |g1 | \break  
   f'4 d bes a | g8 a4 bes b c8~ | c2 g |  f4. ees4.  c4~ | c1\break  
  
}



harmonie =  \chordmode{
\repeat volta 2 {
  a1:7 | s | a:7 | s
  bes:maj7 | s | bes:maj7 | s
}
  a:min | e/b | c | d:7  | g:min7 | d:7 | g:min7 | a:7
  d:min7 | ees:maj7 | cis:3-.5-.7- | bes:maj7 |
  
  g:min7 | s | a:7 | s |
  g:min7 | s | a2:min7 aes:maj7 | fis4.:maj7 e4.:maj7 aes4:maj7 | s
}

\header {
  title = #(string-append "Nouveau Morceau" ton )
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




