indent = 0

ma = \relative c'''{
  g8 a4 f f, c'8~ | c1 |
    g'8 a4 f f, c'8~ | c2 r4 d8 e | \break
    e8 f4 d e f8~ | f8 g4 e f g8~ |
    g8 a4 g4.~ g8 f16 e | f1 \break
    g4. a4. f4~ | f2 d4 f4 |
    f1 | e \break
  }

melodie =  \relative c'''{
  \key f \major
  \numericTimeSignature
  \time 4/4
  \mark \markup \box \bold A
  \repeat volta 2 {
    \ma
  }
  \mark \markup \box \bold B
  \repeat volta 2 {
    ees,4 d8 ees4 d4 d8~ | d1 |
    des4 c8 des4 c4 c8~ | c1 | \break
     
  }
  \alternative {
    { c4 b8 c4 d ees8~ | ees8 d4 c4 d4 ees8~ | ees8 d4 ees fis g8~ | g1 \break}
    { c,4 b8 c4 d ees8~ | ees8\repeatTie d4 ees4 f4 g8~ | g8 aes4 c b bes8~ | bes1 \break}
  }
  \mark \markup \box \bold {A'}
  \ma
  \bar "||"
}


ha = \chordmode{
  f1:maj7 | g:min7 | a:min7 | bes:maj7 |
    g:7/b | c:7 | cis:dim7 | d:min7 |
    ees:maj7 | bes:maj7 | c:sus | c:7 |
  }

harmonie =  \chordmode{  
  \repeat volta 2 {
    \ha
    }
  \repeat volta 2 {
    c:min7 | g/b | bes:min7 | f/a |
  }
  \alternative{
    { aes:6 | c:min/g | fis:3-.5-.7- | g:7 | }
    { aes:6 | c:min/g |d2:3-.5-.7 des:7 | c1:7 |}
  }
  \ha
}



\header {
  title = #(string-append "Rencontre du 3ème type (pour Bertrand)" ton )
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




