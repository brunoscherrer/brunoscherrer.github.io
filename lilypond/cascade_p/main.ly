indent = 0

melodiea = {
\repeat volta 2 {\time 3/4 bes2. | ees2~ {ees8 d16 c} | bes2.~ | bes4.  a | \break aes2.~ | aes4 g f | }
  \alternative {
    {\time 3/4 \tuplet 3/2 { g4 aes8}\tuplet 3/2{r4 g8}\tuplet 3/2{ r4 f8} | \time 2/4 g4 aes |}
    {\time 3/4 \tuplet 3/2  { g4 aes8 }\tuplet 3/2{r4 g8 }\tuplet 3/2{r4 f8} | \time 2/4 ees4 d |}
  } \break
 \time 3/4 b2. | g'2 f4 | ees2.~ | ees4 d c \break | a2. | g'4. f | 
  }

melodieb = {
  \time 3/4 g2.~ | g4 \tuplet 3/2 { f4 g8}\tuplet 3/2{ f4 ees8 } | d2.~ | d4  c4\tuplet 3/2{ bes4 c8~ } | \break c2.~ | c4 bes4 \tuplet 3/2{ g4 bes8~ } | bes2. | { e,8. g bes d } \break
g2.~ |  g4 \tuplet 3/2 { aes4 g8 }\tuplet 3/2{f4 ees8 } | d2. | des \break | c | ees4. f |  g2. | f2 ees4 | \break
ees2. | r | r | r \break | r | r | r | r |
}

melodie =  \relative c''{
  \key ees \major
  \numericTimeSignature
  \mark \markup {\box\bold{A}}
  \melodiea
  c'4. d c b  \break
  \mark \markup {\box\bold{A'}}
  \melodiea
  c'4. d ees f \break
  \mark \markup {\box\bold{B}}
  \melodieb
}

% changer fis:min7 en fis:3-.5-.7- (plutot non)


\paper {
  system-system-spacing = #'((basic-distance . 0.3) (padding . 0.45))
  %ragged-last-bottom = ##f
  %ragged-bottom = ##f
}

harmoniea =  \chordmode{
  \repeat volta 2 { ees2.:maj7 | f:min7 | g:min7 | fis:min7 | f:min7 | s | }
  \alternative {
    { bes2.:7 | s2 }
    { bes2.:7 | s2 }
  }
  { g2.:7 | s | c:min7 | s | f:7 | s | bes:7  | s}
}


harmonieb = \chordmode{
  aes2.:maj7 | s | g:min7 | s | f:min7 | s | ees:maj7 | e:3-.5-.7 |
  aes2.:maj7 | s |  g:min7 | fis:min7 | f:min7 | s | bes:7 | s |
  ees2.:maj7 | f:min7 | ees2.:maj7 | f:min7 | g:min7 | fis:min7 | f:min7 | bes:7 |
  }

harmonie =  {
  \harmoniea
  \harmoniea
  \harmonieb
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
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30    )   } }

}




