indent = 0

melodie =  \relative c''{
  \key ees \major
  \numericTimeSignature
  \time 4/4
  \mark \markup \box \bold A
  r2. c4 | c4. d ees4 | d4. c4.~ c4~ | c2 bes4 g~ | g1~ |g |  r | r \break
  r2. c4 | c4. d ees4 | d4. c4.~ c4~ | c2 bes4 bes~ | bes1~ | bes |  r | r \break
  r2. c4 | c4. d ees4 | d2 d4 c~ | c4 bes2. | r2 ees4 ees4~ | ees f2 ees4~ | ees8 d8 c2.~ | c1 | \break
  r2. c4 | c4. d ees4 | d2 d4 c~ | c bes2 b4~ | b1~ | b |  r | r \break

  \mark \markup \box \bold B
  r2. g'8 f | g2 c,2~ | c2.  aes'8 g | aes g4 f4 ees4  c8~ |
  c2. aes'8 g | aes2 c, | d2. f8 ees | f8 ees4 d f ees8~ | \break
  ees2.  g8 f | g2 c,2~ | c2.  aes'8 g | aes g4 f4 ees4  c8~ |
  c2. aes'8 g | aes2 c, | d2. f8 ees | f8 ees4 d f ees8~ | \break
\repeat unfold 2 {
  ees4. d4 ees f8~ | f4. ees4 f g8~ | g4. f8 ees d4 c8~ | c1
}
  ees4. d4 ees f8~ | f4. ees4 f g8~ | g4. f8 ees d4 c8~ | c2 aes' |
  g1~ | g2 g8 aes g f | g1 | r \break
  \mark \markup \box \bold C
  \repeat volta 2 {
  \repeat unfold 8 { r1 } \break
  \repeat unfold 8 { r1 } \break
  }
}



harmonie =  \chordmode{  
  c1:min9 | s | s | s | f:min9 | s | s | s
  c1:min9 | s | s | s | ees:maj7 | s | s | s
  aes:maj7 | s | bes:7 | s | ees | bes/d | c:min | bes
  aes:maj7 | s | bes:7 | s | g:7 | s | s | s |
    c:min9 | s | aes:maj7 | s | f:min7 | s | bes | b:3-.5-
    c:min9 | s | aes:maj7 | s | f:min7 | s | bes | b:3-.5-
  \repeat unfold 3 {
    c:min | bes/d | ees | aes:maj7 
  }
  g:7 | s | s | s 
  \repeat volta 2 {
  f:min7 | s | ees:7 | s | aes:maj7 | s | des:maj7 | s
  bes:min7 | s | ees:7 | s | aes:maj7 | s | s | s |
  }
}



\header {
  title = #(string-append "Le compte à rebours final" ton )
  tagline =  ""
  composer = "Europe (arr. BS)"
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
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 20     )   } }
}




