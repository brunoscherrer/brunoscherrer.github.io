indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature \time 2/4
  
  <c e>4. <c ees>8~ <b ees> <bes d>4. <bes des>2 <bes des>8 <bes ees> <bes des>4
  <bes d>4. <g bes>8~ <g bes>8 <ais c>4. <a cis>2 r4 r8 fis |
  \repeat volta 1 {
    a2 gis4 fis8 f bes4 g8 d  f4. f8  |
  g2 f4 ees8  d   f4 d8 f  cis dis f gis | 
  a2 gis4 fis8 f bes4 g8 d  f4  \tuplet 3/2 {f8 f f} |
  g2 f4 ees8  d   f4 d8 f  fis4  fis8 fis  |
  g2 f8 ees d c | d2. r8 bes16 bes | a'2 g4 f8 c bes'4 f8 d g4. g8
  g4 f8 g bes a g bes, d4 c bes4. g'8 | \break
  g2 f8 ees d c
  d4 fis 
  \grace fis g2~ \break g2 
  r2 r2 r2 r2 r2 r2
  } \break
  g2~ g2~ g2~ g2 r2 r2 r2^\markup{\italic rall.} r2  r2 \fermata \bar "|."
  
}

harmonie = \chordmode {
  f1:maj7 bes:min7 e:3-.5-.7 
  a2:7/cis b4:min7/d cis:7  \break
  
  fis2:min7 aes:7 g:min7 d:min7 \break
  ees:maj7 f:7 bes cis:7 \break
  fis2:min7 aes:7 g:min7 d:min7 \break
  ees:maj7 f:7 bes d:7 \break
  ees:maj7 f:7 aes1:maj7.9.11+ \break
  f2 aes:maj7 bes4:min bes g2:7/b \break
  c:min f:11  d:7 g:min7 \break
  ees:maj7 f d:7/fis \break

  f1:maj7 bes:min7 e:3-.5-.7 a:7/cis 
  f1:maj7 bes:min7 e:3-.5-.7 f2:min7 g:min7  c1:7 \break
}



\header {
  title = #(string-append "Gontran (legato)" ton )
  tagline =  ""
  composer = "Blair"
}



\score{
  <<
    \new ChordNames {
      \transpose c \noteCibleTransposition{
	\harmonie
      }
    }
    \new Voice = "one" { 
      \transpose c \noteCibleTransposition {
	\melodie
      }
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




