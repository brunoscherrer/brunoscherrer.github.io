indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 4/4
  \repeat volta 2 {
  g4 g4. ees4 fis8~ | fis8 fis4. d2 |
  f4 f4. des4 e8~ | e8 c4. c8 bes g f | \break
  g'4 g4. ees4 fis8~ | fis8 fis4. d2 |
  f4 f4. ees4 c8~ | c8 r4. r2 | \break
}
f2.~ f8 ges8 |f2.~ f8 ges8| f2. c4 | des2 bes | ees1 | r1 | r | r
  
}



harmonie =  \chordmode{  
\repeat volta 2 {
  ees1:maj7 | d:7 | des:maj7 | c:7
  ees1:maj7 | d:7 | des:maj7 | c:7
}
fis:maj7 gis:6 a:5+ ais:min
  b:2.5- s s s
}



\header {
  title = #(string-append "Mais que propose la gauche ?" ton )
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




