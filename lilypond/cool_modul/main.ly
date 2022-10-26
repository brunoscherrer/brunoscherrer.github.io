indent = 0

melodie =  \relative c'''{
  \key c \major
  \numericTimeSignature
  \time 4/4
  \repeat volta 2 {
  b8 c a g b g f e | e1~ | \tuplet 3/2 {e4 d e} \tuplet 3/2 {g e d} | \grace {ees} e1 | \break
  b'8 c a g b g f e | e1~ | \tuplet 3/2 {e4 d e} \tuplet 3/2 {g e d} | c4. b16 c b4. g8 | g2.~ g8 e16 g | \break
  e1 | R1 | R1 \break }

  \repeat volta 2 {
    fis'4 fis fis fis8 g | e1 | \tuplet 3/2 {fis4 fis fis} \tuplet 3/2 {fis fis g} | b2 a16 b a g a b a g | \break
    bes4 bes bes bes8 c | a1 | \tuplet 3/2 {bes4 bes bes} \tuplet 3/2 {bes bes c}
  }
  \alternative {
    {d8. c16 bes8 a g2 | }
    {d'1} 
  }\break
  
  b8 c a g b g f e | e1~ | \tuplet 3/2 {e4 d e} \tuplet 3/2 {g e d} | \grace {ees} e1 | \break
  b'8 c a g b g fis  e | e1 | \tuplet 3/2 {a4 g fis} e4 d | \grace {ees} e1 | \break
  bes'8 c a g bes g f e | e1~ | \tuplet 3/2 {e4 d e} \tuplet 3/2 {g e d} |  c4. a16 bes16 a4  g8 a8~  | \break
  a1| R1 | R1 | R1
}



harmonie =  \chordmode{  
  \repeat volta 2 {
  a1:min9 | s | s | s
  f:maj7.9 | s | s | s
  a1:min9 | s | s | s
}
\repeat volta 2 {
  e:min9 | s | s | s
  g:min | s | s |
}
\alternative { {s} {s} }
  a1:min9 | s | s | s
  e:min9 | s | s | s
  g:min | s | s | s
  f:maj7.9 | s | s | s  
}



\header {
  title = #(string-append "Cool modulations" ton )
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




