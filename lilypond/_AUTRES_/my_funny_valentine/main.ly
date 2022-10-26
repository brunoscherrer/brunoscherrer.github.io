indent = 0

melodie =  \relative c'{
  \key ees \major
  \numericTimeSignature
  \time 4/4
  c2 d4 ees | d4. ees8 d2 |  c2 d4 ees | d4. ees8 d2 |
  c2 d4 ees | bes'2 aes4 g | f1~ | f1 |
  ees2 f4 g | f4. g8 f2 | ees2 f4 g | f4. g8 f2 |
  ees2 f4 g | d'4. c8 bes4. a8 | aes1~ | aes2 g4 f |
  bes4. ees,8 ees4 d | ees2 ees4 d | c'4. ees,8 ees4 d | ees2 ees4 d | 
d'4. ees,8 ees4 d | ees2 f4 g | c1~ | c1 | 
c2 d4 ees | d4. ees8 d2 |  c2 d4 ees | d4. ees8 d2 |
}



harmonie =  \chordmode{  
 c1:min
}



\header {
  title = #(string-append "My Funny Valentine" ton )
  tagline =  ""
  composer = ""
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
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 36     )   } }
}




