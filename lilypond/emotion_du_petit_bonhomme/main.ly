indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 9/8
  \mark \markup \box \bold A
  \repeat volta 2 {
  r4 a4 a'4 e g8~ | g4.~ g4 e8~ e4 d8 | e8 fis1 | r1 r8 \break
  r4 a,4 a'4 e g8~ | g4.~ g4 e8~ e4. | d8 e1 | r1 r8 \break
  f,4 a c e g8~ | g4.~ g4 f8~ f4. | f8 e1 | r1 r8 \break
  a,4. c e4.~ | e c ais~ | ais cis e | c4 gis2. r8 \break 
}
  \mark \markup \box \bold B
  \time 15/16
  \repeat volta 2 {
  \repeat volta 3 {
    r8. a g' a, f' | r b, a' b, g' | r aes, f' aes, e' |  r a, f' a, e' \break
  }
  r bes e bes f' | r bes, g' bes, a' | r gis, gis' gis, a' | r e b' e, d' \break
}
  }



harmonie = \chordmode{
  \tuplet 8/9 {
    \repeat volta 2 {
    \repeat unfold  2 { a1:min9  | c:maj7 | g:maj7 | d:9 }
    d:min9 | b:3-.5-.7 | a:min9 | aes:3-.5+ |
    d:7 | d:5+.7 | fis:7 | c:5+.7 |
  }
  }
  
  
  \tuplet 16/15 {
    \repeat volta 2 {
    \repeat volta 3 {
      f1:maj7 | g:9 | aes:3-.5+ | a:min9 |
    }
    bes:maj7 | s | e:5+.7 | s 
    }
  }
 
}



\header {
  title = #(string-append "Emotion du petit bonhomme" ton )
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




