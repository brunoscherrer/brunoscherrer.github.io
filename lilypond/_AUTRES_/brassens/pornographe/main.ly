indent = 0

couplet = \relative c'{
  \repeat volta 2 {
    a4 a8 c c4 e | e a a r | b b8 b b4 fis | b a gis r | c g!8 g g4 a |
  }
  \alternative {
    {g f e2 | \tuplet 3/2 {r4 d e} \tuplet 3/2 {f e d} | c r b r |}
    {g' f e r| r d c b | a2 r |}
  } \break
}

refrain = \relative c'{
  d2 a4 d | c2 a' | r4 b, e, b' | a2 c | f d4 g | e1 | r4 r8 e gis4 b | a2 r | \break
}
  
melodie =  \relative c'{
  \key c \major
  \time 4/4
  \repeat volta 2 {
  \mark \markup {\box Couplet}
  \couplet
  \mark \markup {\box Refrain}
  \refrain
  }
  \mark \markup {\box Final}
  \transpose a bes {
    \couplet
    \refrain
  }
}

harm_couplet = \chordmode {
  \repeat volta 2 {a1:min | s | b:7 | e:7 | c |}
  \alternative{ {s | e:7  | s |}{s | e:7 | a:min} }
}

harm_refrain = \chordmode {
  d:min | a:min | b2:7 e:7 | a1:min | d2:min g:7 | c1 | e:7 | a:min
  }

harmonie =  \chordmode{  
  \harm_couplet
  \harm_refrain
  \transpose a bes {
    \harm_couplet
    \harm_refrain
  }
  
}



\header {
  title = #(string-append "Le pornographe" ton )
  tagline =  ""
  composer = "Brassens"
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




