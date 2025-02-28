indent = 0

maingauche = \relative c {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \partial 4 r4 |
  \repeat volta 2 { \repeat volta 2 {\repeat unfold 3 {g4. d'4 g4 ees8~ | ees1}
  g,4. d'4 g4 ees8~|
  }
  \alternative{
    {ees1}
    {ees1}
  } \break
  
  aes,4. ees' g4~ | g1 |
  a,4. e' g4~ | g1 |
  bes,4. f' g4~ | g1 |
  bes,4. f' g4~ | g1 | \break

  ees,4. bes' d4~ | d1 |
  e,4. b' d4~ | d1 |
  f,4. c' d4~ | d1 |
  f,4. c' d4~ | d1 | \break

  \repeat unfold 4 {g,4. d'4 g4 ees8~ | ees1}}
}


melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 4/4
  \partial 4 g8 a |
  \repeat volta 2 {
  \repeat volta 2 {b2~ b8 c4.~ | c2 \tuplet 3/2 {b4 a g} | a8 b f2.~ | f4 ees4. des \break | d a'8~ a2~ | a1 | r1}
  \alternative {
    {r2. g8 a | }
    {r1} 
  }\break
  \repeat unfold 2 { g'4. d c4~ | c1 } \break g'4. d c4~ | c2. bes8 c~ | c1 | r1 | \break
  \repeat unfold 2 { g'4. d c4~ | c1 } \break g'4. d c4~ | c2. bes8 a~ | a1 | a8 g4. g8 f4. | \break f8 g4 g8~ g2~ | g1 

  \repeat unfold 2 {r1|} \break
  \repeat unfold 3 {r1|} 
  r2. g8 a | }
}



harmonie =  \chordmode{  
  \partial 4 s4 |

\repeat volta 2 {
\repeat volta 2 {\repeat unfold 3 {g2.:7 s8 ees1:maj7 s8 |} g2.:7 s8 ees:maj7 |}
\alternative{
  {s1}
  {s1}
  }

aes:maj | s | a:3-7 | s | bes:6 | s | bes:6 | s |
ees:maj | s | e:3-7 | s | f:6 | s | f:6 | s |

\repeat unfold 4 {g2.:7 s8 ees1:maj7 s8 |}
}
  
}


\header {
  title = #(string-append "Rêverie" ton )
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
    \new PianoStaff  <<
    \new Staff="up" \transpose c \noteCibleTransposition{ \melodie }
    %\new Staff="down" \transpose c \noteCibleTransposition{ {\clef bass \maingauche} }
  >>
    >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 26    )   } }
}




