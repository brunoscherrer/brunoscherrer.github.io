indent = 0


commun = {
  <g, c e>1  |
  r2 c8 d8 r4 | <bes c ees>1  |
  r2 c8 d8 r4 | \break
  <a c e>1  |
  r8 b c cis c b bes g |
}

basse= {
  \repeat percent 2 {c4. g'4 c4 c8 |} 
  \repeat percent 2 {c,4. bes'4 c4 c8 |} 
  c,4. a'4 c4 a8 | aes4 r2. |
  c,4. g'4 c4 c8 | 
}

melodiea =  \relative c''{
  \key c \major
  \partial 2 c8 d8 r4 | 
  \repeat volta 2 {
    \commun
    c2 r8 \tuplet 4/3 {bes8 g ges f} |
  }
  \alternative {
    {e2 c'8 d8 r4 | }
    {e,2  f4 g8 aes8~| }
  } \break
}


bassea = \relative c{
  \repeat volta 2 {
    \basse
  }
  \alternative{
    {c,4. g'4 c4 c8}
    {c,1 }
  }
}



melodieb = \relative c''{
  aes2 bes8 c4 d8~ |
  d2 ees8 f4. |
  \tuplet 3/4 {f8 g8 d8~} d4 d8 ees8 |
  c1 | \break
  aes1 | a1 | b1 | r2 f4 g8 aes8~| \break
  aes2 bes8 c4 d8~ | 
  d2 ees8 f4. |
  \tuplet 3/4 {f8 g8 bes8~} bes8 aes8 g8 f8  |
  f8 g8 ees2. | \break
  a,1 | bes1 | b1 |  r2 \key c \major c8 d8 r4| \break
}


harmoniea = \chordmode{
 c1 | s | c:min7 | s | a:min | aes | c | s | s
}


harmonieb =  \chordmode{  
  f1:min | bes:7 | ees:maj7 | aes:maj7 |
  f:min | fis:3-.5-.6 | g:7 | s |
  f:min | bes:7 | ees:maj7 | aes:maj7 |
  d:7 | d:5+.7 | g:7 | s |
}


melodiec = \relative c'''{
  \commun
  c2 r2  |
  r1 |
}

bassec = \relative c{
  \basse
  c1.
}




\header {
  title = #(string-append "Joie & bonheur" ton )
  tagline =  ""
  composer = "B. Scherrer"
}


\score{
  <<
    \new ChordNames {
      \transpose c \noteCibleTransposition{
	s2 \harmoniea
	\harmonieb
	\harmoniea
      }
    }
    \new Staff { 
      \numericTimeSignature
      \time 4/4
      \transpose c \noteCibleTransposition {
      \melodiea
      \melodieb 
      \melodiec
      }
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}


\score{
  <<
  \new ChordNames {
      \transpose c \noteCibleTransposition{
      \harmoniea
    }
  }
  \new Staff {
     \numericTimeSignature
     \time 4/4
     \clef bass
     \key c \major
     \mark "Basse"
     \transpose c \noteCibleTransposition{
       \bassea
       }
   }
>>
}


