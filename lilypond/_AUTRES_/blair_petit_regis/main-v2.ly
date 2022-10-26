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



harmonie =  \relative c,{  
  \key c \major
  \clef F \time 4/4
  <fis ais cis>4 <g b d> <fis ais cis dis> <f a c d>
  <g ais d b'> <g b e> <g b e ais> <g b e a>
  <g ais dis> <g a d> <g ais cis> <g b d>  
  c c c c  b b ais ais   a a gis a   a a a a  g g g g   d d d d   g g g g  a b c e   
  dis dis dis dis   d d cis cis  b b a a  gis gis fis fis  b b ais a  gis gis fis fis  b b cis dis   e e fis fis  g g g g  e e e e  fis fis fis fis 
}



\header {
  title = #(string-append "Petit Régis" ton )
  tagline =  ""
  composer = "Blair"
}



\score{
  <<
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodie
      }
    }
    \new Staff {
      \transpose c \noteCibleTransposition{
	\harmonie
      }
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




