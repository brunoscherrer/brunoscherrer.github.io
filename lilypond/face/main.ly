indent = 0

melodie =  \relative c'''{
  \key c \major
  \numericTimeSignature
  \time 9/8
  \repeat volta 2 {
    c2.~ c8 b a | e2.~ e4. | r4 c8 d4 c8 d4  c8 | d e g,~ g2. |
    g8 a4~ a4. r4 b8 | c2.~ c4. | r4. {c4 b a } | 
  }
  \alternative{
    {gis4.~ gis4 e8~ e4. |}
    {gis2. r4. |}
  }
  \repeat volta 2 {
    a2.~ a4 b8 | c2.~ c4 d8 | ees4. d c4 b8~ | b8 a4~ a2. |
    g2.~ g8 a8 b | 
  }
  \alternative {
    {a2.~ a4 b8 | c4. b a4 c8~ | c8 b2 r8 \tuplet 4/3 {c8 b a g} |}
    {a2. a4 fis8~ | fis2. r4. | r2. r4.}
  }
  
  
}



harmonie =  \chordmode{  
  \tuplet 8/9 {
    \repeat volta 2 {
      f1:maj7 | a:min7 | c:maj7 | e:min7  |
    f1:maj7 | a:min7 | c:maj7  |
    }
    \alternative{
      {e:7.5+}
      {e:7.5+}
    }
    
    \repeat volta 2 {
      f:maj7 | a:min7 | d:7.9-/fis | f:maj7 |
      e:min7 | 
    }
    \alternative {
      {f:maj7 | d:7.9-/fis | g:sus4 |}
      {f:maj7 | d:7 | d:7 }
    }
    
    }
}



\header {
  title = #(string-append "Dans ta F.A.C.E. !" ton )
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
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 40     )   } }
}




