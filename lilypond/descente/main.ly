indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 5/4

  \mark \markup \box \bold {Intro}
  \repeat unfold 2 { bes8 d, d g d d bes' d, g d | a' d, d fis d d a' d, fis d } \break
  c' d, d a' d, d c' d, a' d, |  bes' d, d g d d bes' d, g d | a' d, d fis d d a' d, fis d | a' d, d fis d d a' d, fis d \break
  \repeat unfold 2 { a'8 cis, cis fis cis cis a' cis, fis cis | gis' cis, cis f cis cis gis' cis, f cis }  \break
  b' cis, cis gis' cis, cis b' cis, gis' cis, |  a' cis, cis fis cis cis a' cis, fis cis | gis' cis, cis f cis cis gis' cis, f cis | gis' cis, cis f cis cis gis' cis, f cis  \break
  \repeat unfold 2 { aes'8 c, c f c c aes' c, f c | g' c, c e c c g' c, e c } \break
  des' c, c bes' c, c des' c, bes' c, |  c' c, c aes' c, c c' c, aes' c, | bes' c, c g' c, c bes' c, g' c, | bes' c, c g' c, c bes' c, g' c, \break
  
  \pageBreak
  
  \mark \markup \box \bold A
  r4 fis8 g a bes c4 bes8 a | bes a g bes a2. |
  r4 fis8 g a bes c c bes a | bes a g fis d2. | \break
  r4 fis8 g a bes c4  bes8 a |  bes bes a g a4  g8 fis g fis | g a  g fis d2. | r2. r2 | \break

  \mark \markup \box \bold B
  r4 eis8 fis gis a b4 a8 gis | a gis fis a gis2. |
   r4 eis8 fis gis a b b  a gis | a gis fis  eis cis2. | \break
  r4  eis8 fis gis a b4 a8 gis |  a a gis fis gis4  fis8 eis fis eis | fis gis  fis eis cis2. | r2. r2 | \break

  \mark \markup \box \bold C
r4 e8 f g aes bes4 aes8 g | aes g f aes g2. |
  r4 e8 f g aes bes bes aes8 g | aes g f e c2. | \break
r4 e8 f g aes c4 bes8 aes bes4 aes8 g aes4  g8 f g4~ | g2. r2 | r2. r2 |
  
}

melodieb =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 5/4

  \repeat unfold 24 {
    r2. r2 |
  }
  
  \mark \markup \box \bold A
  r4 d8 ees fis g a4 g8 fis | g fis ees g fis2. |
  r4 d8 ees fis g a a g fis | g fis ees d a2. | \break
  r4 d8 ees fis g a4 g8 fis |  g g fis ees fis4  ees8 d ees d | ees fis  ees d a2. | r2. r2 | \break

  \mark \markup \box \bold B
  r4 cis8 d eis  fis gis4 fis8 eis | fis eis d fis eis2. |
  r4 cis8 d eis fis gis gis  fis eis | fis eis d  cis gis2. | \break
  r4 cis8 d eis  fis gis4 fis8 eis  |  fis fis eis d eis4  d8 cis d cis | d eis d cis gis2. | r2. r2 | \break

  \mark \markup \box \bold C
  r4 c8 des e  f g4 f8 e | f e des f e2. |
  r4 c8 des e  f g g f8 e | f e des c g2. | \break
  r4 c8 des e  f  aes4  g8 f g4  f8 e f4  e8 cis e4~ | e2. r2    | r2. r2  \break

  
}



harmonie =  \chordmode{  
  \time 5/4
    \tuplet 4/5 {
      g1:m/d | d | g:m/d | d | d:7.9- | g:m/d | d:7 | s 
      fis:m/cis | cis | fis:m/cis | cis | cis:7.9- | fis:m/cis | cis:7  | s 
      f:m/c | c | f:m/c |  c | c:7.9- | f:m/c | c:7 | s
    }
    \repeat unfold 8 {d2.:7 ees2:6}
    \repeat unfold 8 {cis2.:7 d2:6}
    \repeat unfold 8 {c2.:7 des2:6}
  
}



\header {
  title = #(string-append "Descente au Klezmeristan" ton )
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
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodieb
      }
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




