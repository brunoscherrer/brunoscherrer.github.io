indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 9/8
  \repeat volta 2 {
    g4.  c b  | a  g fis | e  fis g | e4 d'8 r4  a8~ a4.  | \break
  g e' b | b a d | fis, g a | e f c' | \break
    a2. b4. | b'  e,2.  | c4. d e | a, c g'~ | \break
    g  fis dis | e d! c | e b c | d4.~ d4 e2 | r1 \break
  }
  }

harmonie =  \chordmode{
  \time 9/8
  \repeat volta 2 {
  \tuplet 8/9 {
    e1:min7 | a:7/cis | c:maj7 | a:7 |
    e:min7 | c:maj7 | a:7 | f:maj7
    e:min7 | a:7/cis | c:maj7 | a:min7 |
    e:3-.7+.9 | c:maj7 | a:min7  |
  }
  b2:min7 s8 c2:maj7 | s1 s8
}
}

\header {
  title = #(string-append "En Chapelure" ton )
  tagline =  ""
  composer = "C. Cartier"
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
