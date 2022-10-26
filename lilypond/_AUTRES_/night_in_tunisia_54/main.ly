indent = 0

maingauchedeb = \relative c, {
  \repeat unfold 2 {ees4. bes'4 bes8 ees,4 bes' | d,4. a'4 a8 d,4 a' |}
  }


melodiea = {
  bes8 des f c'~ c2 bes8 f | gis a4. r2 r8 a,8 |
  bes des f c'~ c2 bes8 f |  a2 r2 r8 a,8 |
  bes des f c'~ c2 bes8 f | gis a4. r2 r4 |
  a8 bes a g ees2 r8 cis8 |
}

melodie =  \relative c''{
  \key f \major
  \numericTimeSignature
  \time 5/4
  \partial 8 a,8
  \repeat volta 2 {
    \melodiea
  }
  \alternative{
    {d1 r8 a8}
    {d1 a'4}
  }
  \time 4/4
  c2 a4. g8 | fis4 ees'8 d~ d4 c8 a | bes8 g4 fis8~ fis g a g~ | g2 r2 |
  bes2 g4. f8 | e4 des'8 c~ c4 bes8 gis | a4. f8 g4 f8 e~ | e2 r4  r8 a, 
  \break
  \time 5/4
  \melodiea
  \time 4/4 d4 r4 a'4 a8 a8~ |
  a4 g8 e a4 g8 e | a g e a r4 r8 a8~ |
  a4 f8 des a'4 f8 des | a' f des a' r4 r8 a8~ |
  a4 f8 d a'4 f8 d | a' f d a' r4 r8 a8~ |
  a4 f8 des a'4 f8 des | a' f des a' r4 r8 a8~ |
  a4 fis8 d a'4 fis8 d | a' f d a' r4 r8 a8~ |
  a4 fes8 des a'4 fes8 des | a' fes des a' r4 a8 c8 |
  r1 | r1 | r1 | r1 |
}

  

harmonie =  \chordmode{  
  \time 5/4
  \partial 8 s8
  \repeat volta 2 {
    \tuplet 4/5 {
      \repeat unfold 3 {ees1:7  | d:min  |}
    }
    e2:min7.5- a2.:7.5-
    }
  \alternative { {\tuplet 4/5 d1:min} {\tuplet 4/5 d1:min} }
  a1:min7.5- | d:7.9- | g:min | g2:min7 c:7 | g1:min7.5- | c:7.9- | f:6 | e2:min7.5- a:7.5- |
\tuplet 4/5 {
      \repeat unfold 3 {ees1:7  | d:min  |}
    }
  e2:min7.5- a2.:7.5-
  d1:min | e:min7.5- | s | ees:7 | s | d:min | s | g:7 | s | g:min | g:min7 | ges:7 | s | f:maj7
 
}



\header {
  title = #(string-append "A Night In Tunisia (5/4)" ton )
  tagline =  ""
  composer = "D. Gillepsie"
}



\score{
  <<
    \new Staff {
      \transpose c \noteCibleTransposition{ \clef bass \key f \major \time 5/4 \maingauchedeb }
    }
  >>
}
\score{
  <<
    \new ChordNames {
      \transpose c \noteCibleTransposition{
	\harmonie
      }
    }
    \new Staff { 
       \transpose c \noteCibleTransposition { \melodie }
     }
  >>
  \layout{
    \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   }
  }
}




