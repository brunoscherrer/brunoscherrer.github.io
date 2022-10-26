indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 4/4
  \repeat volta 2 {
  r4 a8 ges8 f8 bes4 g8~| g8 ees4 c4. r4 | r4. d8 ees f g d~ | d2 r2 |
  r8 aes'4 f8 g fis4 ees8~ | ees c4 des4. r4 | r2 b4. c8~ | c2 r2 | 
} \break
  \repeat unfold 8 {r1 |} \break
r4 a'8 ges f bes4 g8~| g8 ees4 c4. r4 | r4. d8 ees f g d~ | d2 r2 |
  r8 aes'4 f8 g fis4 ees8~ | ees c4 des4. r4 | r2 b4. c8~ | c2 r2 |
}



harmonie =  \chordmode{  
\repeat volta 2 {
  c1:min9 | s | f:7 | s |
  f:min7 | s2. s8 g1:5-.7  c1:min9~ s8 }
e1:7 | s | a:7 | s | d:7 | s | g:7 | s |
c1:min9 | s | f:7 | s |
  f:min7 | s2. s8 g1:5-.7  c1:min9~ s8 
}



\header {
  title = #(string-append "Without mi" ton )
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




