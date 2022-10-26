indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 4/4
  r1 r1 r1 \break
  g4 fis g c   b ais b fis'   fis e d a  c a fis d
  g b ais b   a2 d  g,4 b c b   d c a fis \break
  bes g f g  f d cis ais   b' ais c b   c b b bes   b2 bes4 b  c b b ais   dis dis cis dis e  dis  dis cis  b1 | r1 | r \break
}



harmonie =  \chordmode{  
  fis4 g fis:6 f:6 g2:3-.5- g:min g1:7  %g4:dim g e2:min/g ees4/g d/g g:dim g
%  c4 c:5- c2:min | b:min g:min/b b:min/bes ees/bes
  c1 g:maj7/b % b2:min g:min/bes
  d1/a d1:7/a  g d g d
  ees bes2/d cis:dim b:dim f/a  aes:5+ fis b2 bes2:3-.5-.7- | aes2:5+ fis b2 bes:3-.5-.7-  e fis  g1 e:min b:min
  %g1 s1  aes:3-.5-.7 s  a/cis s  d
}



\header {
  title = #(string-append "Petit Régis" ton )
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
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodie
      }
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




