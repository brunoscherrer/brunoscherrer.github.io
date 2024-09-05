indent = 0

melodie =  \relative c'{
  \key c \major
  \numericTimeSignature
  \time 9/8
  \partial 8 d8
  \repeat volta 2 {
  d'4 bes8~ bes4.~ bes8 a bes  | c4 g8~ g4.~ g4 bes8~ | bes4. aes ges |  g2. r4 d8\break
  d'4 g,8~ g4.~ g8 a bes  | c4 g8~ g4.~ g4 bes8~ | bes4. aes g~ |  g2. r4.\break
  d'4 b8~ b4 c8~ c8 d4 | ees2. r4 des8 | bes4. a g | fis2. r4 d8 \break
  bes'4 g8~ g4.~ g8 a bes  | c4 g8~ g2. | f4. d a' | g2.~ g4. | r2. r4  d8 \break }
}



harmonie =  \chordmode{
  \partial 8 s8
  \tuplet 8/9 {
    g1:min9 ees:maj7 aes:7 c:min7
    g1:min9 ees:maj7 aes:7 ees:maj7
    g:7 | aes:maj7 | a:7 d:3.5+.7
    ees:maj7 | aes:maj7 | d:min7 | ees:maj7 | s
  }
}



\header {
  title = #(string-append "Sur un air de jazz" ton )
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




