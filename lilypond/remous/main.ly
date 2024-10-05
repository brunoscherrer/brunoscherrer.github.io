indent = 0

melodie =  \relative c''{
  \key g \minor
  \numericTimeSignature
  \time 7/4

  \mark \markup \box \bold A

  \repeat volta 2 {
    \repeat unfold 2 {g8 bes d ees d des d}
    \repeat unfold 2 {a c d ees d des d} \break
    \repeat unfold 2 {bes c d ees d des d}
    c d ees f ees d ees  c d ees f ees d c \break
  }
  \repeat unfold 2 {c d ees fis ees d ees}
  \repeat unfold 2 {c d ees g ees d ees} \break
   \repeat unfold 2 {c d e g e d e}
  c d ees f ees d ees  c d ees fis ees d ees \break

  \mark \markup \box \bold B

  \repeat volta 2 {
  bes2~ bes4. a2 g4. | d2 r4. r2 r4. \break
  bes'2~ bes4. a2 g4. | d'2 r8 c8. bes a g a bes~ | \break }
  bes2~ bes4. a2 g4. | c2~ c4. bes2 g4. \break
  c2~ c4. bes2 g4. | c2~ c4. bes2 fis4. \break

  \mark \markup \box \bold {Fin}

  g2 r4. r2 r4.
}



harmonie =  \chordmode{  
  \time 7/4  \tuplet 4/7 {

    \repeat unfold 2 {
    
    \repeat volta 2 {g1:min7  a:3-.5-.7  bes:maj7   c:min7 }
    d:5+.7   ees:maj7   e:3-.5-.7   f2:7 d:5+.7-/fis
  }

    g:min7
    
    }
}



\header {
  title = #(string-append "Remous" ton )
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




