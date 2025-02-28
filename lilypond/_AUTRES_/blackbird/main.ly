indent = 0

melodie =  \relative c''{
  \key g \major
  \numericTimeSignature

  \time 3/4
  \repeat volta 2 {
    g8 g g16 g g e  g16 d'8 d16~ |
    \time 4/4 d1 
  a8 g a8 g16 a8.  g8 c8 d16 b16~ | b2 a16 g r8 r4 | \break
  \time 2/4 a4 b8 g8~ \time 4/4 g2. r4 |
  g8 g g8 a b a g e  |
}
  \alternative {
    {a8 g b e, g2 |   r1  r1  }
    {a8 g b e, g2 }
  } \break

  \time 4/4
  c2 a8 g4. | g1 | c2 a8 g4. | g2. g'8 f16 d |
  \time 2/4
  f8 d16 d c8 bes8
  \time 3/4
  g2.
  
}

melodieb =  \relative c'{
  \key g \major
  \numericTimeSignature

  \time 3/4
  \repeat volta 2 {
    d8 d e16 e e d  e16 b'8 b16~ |
    \time 4/4 b1 
  e,8 d fis8 g16 fis8.  d8 a'8 a16 g16~ | g2. r4 | \break
  \time 2/4 fis4 g8 e8~ \time 4/4 e2 ees4 r4 |
  d8 d8 d8 e g e c4 |
}
  \alternative {
    {c2  d2 |  r1  r1  }
    {c2  d2 }
  } \break

  \time 4/4
  a'4 g f8 e4. | d2 e  | a4 g f8 e4. | d2 cis  | 
  \time 2/4
  r2
  \time 3/4
  r2.
  
}

melodiec =  \relative c''{
  \key g \major
  \numericTimeSignature

  \time 3/4
  \repeat volta 2 {
    a8 b b16 b b a  b16 g'8 g16~ |
    \time 4/4 g1 
  e8 b c8 c16 c8.  b8 e8 e16 d16~ | d2 c16 b r8 r4 | \break
  \time 2/4 c4 d8 b8~ \time 4/4 b2 bes4 r4 |
  b8 b b8 c d cis b a |
}
  \alternative {
    { c8 b d a b2 |  r1  r1  }
    { c8 b d a b2 }
  } \break

  \time 4/4
  f'4 e d8 c4. | bes2 c  | f4 e d8 c4. | bes2 a |
  \time 2/4
  r2
  \time 3/4
  r2.
  
}

harmonie =  \chordmode{
  \repeat volta 2 {
    \time 3/4 g4 a:min7 g/b | \time 4/4 g1 | c4 cis:dim d dis:dim | e2:min ees |
    \time 2/4 d4 cis:dim  \time 4/4 c2  c:min | g2/b a:7 
  }
  \alternative {
    {d2:7 g2 | c4 g/b a2:7 d:7 g2 }
    {d2:7 g2 }
  }

  f4 c/e d:min c bes2:6 c
  f4 c/e d:min c bes2:6 a:7
  d2:sus7 g 
  
}



\header {
  title = #(string-append "BlackBird" ton )
  tagline =  ""
  composer = "P. Mc Cartney, CSNY arrangement"
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
      \melodiec
      }
    }
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodie
      }
    }
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodieb
      }
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




