indent = 0

melodie =  \relative c'''{
  \key c \major
  \numericTimeSignature
  \time 4/4 \partial 8 bes16 bes16
  \mark \markup {\box \bold A}
\repeat volta 2 {
  g8. f c'4 bes8  g16 f bes8~ |  bes2. r8 g | g8 c,2 r4 r8 | r2 r4 r8 bes'16 bes | \break
  g8. d c'4 b!8  g16 d g8~ |  g2. r8 e | e8 c2 r4 r8  |r2 r4 r8 a | \break
  a8 g4 g4. r8 e | g a2 r4 a8 | a c,2 r4 r8 | r2 r4 r8 a' | \break
  a8 g4 g4. r8 e | g a2 r4 g8 | a8. bes8.~ bes2 r8  | r2 r4 r8 bes'16 bes | \break
}
  \mark \markup {\box \bold B}
  \repeat unfold 2 {
    bes8. aes ees2 aes8 | aes8. ges des2~ des8 | ges8. f des2 c8 |
  }
  \alternative {
    {des8. ees b4. bes8 aes }
    {des8. ees8.~ ees2 r8} 
  } \break
  ees8. des ees2 r8 | des8. b des4. b8 bes | bes4. aes8~ aes2 | r1 \break
  \mark \markup {\box Solos}
  \repeat volta 2 {\compressMMRests { \override MultiMeasureRest.expand-limit = #3 \repeat unfold 6 {R1*4} }}

  \mark \markup {\box \bold C}
  \repeat volta 2 {
  \repeat unfold 3 { \tuplet 3/2 {ees'!8 c bes} \tuplet 3/2 {f' c bes} } ees16 ees c8~ c4 \break
  \repeat unfold 3 { \tuplet 3/2 {e!8 c b} \tuplet 3/2 {f' c b} } e16 e d8~ d4 \break
  }
}


harmonie =  \chordmode{
  \partial 8 s8
  \repeat volta 2 {
    c1:2 | aes:2 | f:2 | ees:2.6 |
  c:2 | a:2.7 | f:2 | d:2 |
  e:min9 | s | d:min9 | s
  e:min9 | s | bes:2 | s
  }
  \repeat unfold 2 {
    aes1:sus4.7 ges f:3-.5+.7
  }
  \alternative {
    {e:maj7.6}
    {e:maj7.6}
  }
  ees:sus4.7 des:9 b:2 bes:3-.5+.7 \break

\repeat volta 2 {
  ees:maj7 | s s s 
  fis:maj7 | s s s \break
  ees:maj7 | s s s 
  fis:maj7 | s s s \break
  fis:min7 | s s s 
  e:maj7 | s s s \break
}
\repeat volta 2 {
  c2:2  aes:2 | f:2  ees:2.6 |
  c:2  a:2.7 | f:2  d:2 |
  }

}


\header {
  title = #(string-append "Double ration de frites (c'est ça la République)" ton )
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
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 8 30     )   } }
}




