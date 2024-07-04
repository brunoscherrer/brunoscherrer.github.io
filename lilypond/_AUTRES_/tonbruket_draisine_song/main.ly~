indent = 0

melodie =  \relative c'''{
  \key bes \major
  \numericTimeSignature
  \time 9/8
  \repeat volta 2 {
    \repeat volta 2 {
    bes4. d,4 a'8~ a4 c8 | g2. ees4. | d2.~ d4. |
    f4. d4 ees8~ ees4 c8 | d2. bes4. | a2.~ a4 a8 |
    bes4. ees2. | d2. c4. | d2.~ d4.~ | d2.~ d4. |
  }
  bes'4. ees,4 aes4 g4 | d2.~ d8 ees f | d2.~ d4 g,8 | a4. f'4.~ f4 ees8 | d2.~ d4.~ | d2.~ d4. |
  a'4. d,4 g8~ g4. | fis2. d4. | f2.~ f4.~ | f2.~ f4 g8 | d2.~ d4.~ | d2. ees8 d c | bes4. c d | ees f g |  
  }
}



harmonie =  \chordmode{  
  \time 9/8
    \repeat volta 2 {
      \repeat volta 2 {
	g2:min7 s8 f4./g s8 | ees1:maj7/g s8 | d1/g s8 | \break
	bes2:maj7 s8 c4.:min s8  | g1:min s8 | d1:min s8 | \break
	ees1:maj7 s8 | a1:min s8 | d1 s8 | s1 s8 | \break
      }
    aes1:maj7 s8 | bes1:maj7 s8 | c1:min9 s8 | \break
    d1:min s8 | ees1:maj7 s8 | s1 s8 \break
    f2 s8 ees4.:maj7 s8 | d1 s8 | f1 s8 \break
    | a1:5+ s8 | d1 s8 | s1 s8 | aes1:maj7 s8 | s1 s8 \break
  }
}




\header {
  title = #(string-append "Draisine song" ton )
  tagline =  ""
  composer = "Tombruket"
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




