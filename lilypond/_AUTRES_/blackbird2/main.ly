indent = 0

melodiea =  \relative c''{
  \key a \major
  \numericTimeSignature
  \time 4/4
  r1 | r1 | r1 | r1 | d,4 e8 cis~ cis2 |
  c2 cis8 cis cis d16 e~ | e8 ees ees ees d d e b16 cis~ | cis2. r4 | r1
  r4 cis8 cis d16 d d d cis a'8 a16~ | a2. r4 |
  fis8 fis a a16 gis~ gis8 gis b a | a2 gis16 fis8. r4 | gis8. a16~ a8 fis~ fis2 |
  f2 r2 | r1 | r2 g4 fis |
  e8 d~ d4 c2 | d2 g4. a8 | fis16 e d8~ d4 c2 |
  b4 r r2 | r1
  
}

melodieb =  \relative c''{
  \key a \major
  \numericTimeSignature
  \time 4/4
  r4 a,8 a a16 a a a a e'8 e16~ | e2. r4
  fis8 a, b a16 b~ b8 a d d | cis2 b16 a8. r4 | d4 cis8 a~ a2~ |
  a2 a8 a a b16 cis~ | cis8 a a a b a cis a16 cis~ | cis2. r4 | r1
  r4 a8 a a16 a a a a e'8 e16~ | e2. r4
  d8 d fis fis16 e~ e8 e gis gis | fis2 e16 d8. r4 | e8. fis16~ fis8 d~ d2 | 
  d2 cis8 cis cis d16 e~ | e8 dis dis dis d d e b16 cis~ | cis2 d2 |
  a2 a2~ | a2 d2 | a2 a2 |
  a4 a'8 g16 e g8 e16 e d c8 a16~ | a1
}

melodiec =  \relative c''{
  \key a \major
  \numericTimeSignature
  \time 4/4
  r1 | r1 | b8 a b b16 b16~ b8 a d e | cis2 b16 a8. r4 | gis4 a8 fis~ fis2 |
  f2 a8 a a b16 cis~ cis8 b a fis b a cis fis,16 a~ a2. r4 r1 |
  r4 e8 e fis16 fis fis fis e cis'8 cis16~ cis2. r4 |
  fis8 a, b a16 b~ b8 b d e | cis2 b16 a8. r4 | b8. cis16~ cis8 a~ a2 |
  a2 a8 a a b16 cis~ | cis8 b a fis b a cis fis,16 a~ | a2 e' |
  a,2 g | a d | g,16 fis8.~ fis4 a2 |
  ges4 a'8 g16 e g8 e16 e d c8 a16~ | a1
}


melodied =  \relative c''{
  \key a \major
  \numericTimeSignature
  \time 4/4
  \clef bass
  r1 | r1 |
  r1 | r1 | r1 |
  r2 e,,8 e e fis16 gis~ | gis8 fis fis fis d d e e16 a,~ | a2. r4 | r1
  r4 e'8 e e16 e e e e e8 a16~ | a2. r4
  d,8 d dis dis16 e~  e8 e eis eis | fis2. r4 | e8. fis16~ fis8 fis~ fis2 |
  d2 r2 | r1 | r2 b'4 a | g fis e2 | fis b4 a g ges e2 | dis4 r4 r2 | r1 
  
}

\header {
  title = #(string-append "BlackBird" ton )
  tagline =  ""
  composer = "Mc Cartney, CSNY version"
}



\score{
  <<
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodiea
      }
    }
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodieb
      }
    }
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodiec
      }
    }
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodied
      }
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




