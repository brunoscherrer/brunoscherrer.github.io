indent = 0

melodie =  \relative c''{
  %\key c \major
  \numericTimeSignature
  \time 3/4
  \mark \markup \box \bold A
  \repeat volta 2 {
  f2~ f8 e | d2.~ | d8 c d c d e | f4 f f8 a | g2.~ | g8 f  g f g a \break
  f2 e16 f e d~ | d2.~ | d8 c d c b a | a2. | r | r \break}
  \mark \markup \box \bold B
  fis'2~ fis8 e | d2.~ | d8 cis d cis d e | fis4 fis fis8 a | g2.~ | g8 fis  g fis g a \break
  fis2 e16 fis e8 | d2.~ | d8 d e d e d | d2. | r | \break
  \mark \markup \box \bold C
  bes'2~ bes8 des,8  | ges2.~ | ges8 f ges f ges aes | bes4 bes bes8 des | ces2.~ | ces8 bes ces bes ces des \break
  bes2 aes16 bes aes8 | ges2.~ | ges8 ges aes ges aes ges | ges2. | r | \break
}



harmonie =  \chordmode{  
  \repeat volta 2 {\repeat unfold 4 { d2.:min9 | f:maj7 | g:7 }}
  \repeat unfold 3 { d2.:maj7 | b:min7 | a:7 } d:maj7 | d:maj7
  \repeat unfold 3 { ges2.:maj7 | ees:min7 | des:7 } ges:maj7 | ges:maj7
}



\header {
  title = #(string-append "Planète Ça tourne" ton )
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




