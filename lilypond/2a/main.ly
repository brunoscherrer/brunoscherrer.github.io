indent = 0

melodie =  \relative c''{
  \key a \minor
  \numericTimeSignature
  \time 3/4
  \partial 8 f8
  \repeat volta 2 {
  e4 c'4. b8 | f2~ f8 f |
  e4 c'4. b8 | fis2~ fis8 f |
  e4 b4. e8 | b4 g e |
  d'4. d4. | d2 d8 e | d4. d4. |
}
  \alternative {
    {d2 r8 f8}
    {d2 \tuplet 3/2 {r4 b8}}
  } \break

  \repeat volta 2 {
  \tuplet 3/2 {c4 e8~} e4~ \tuplet 3/2 {e4  c8} | \tuplet 3/2 {cis4 e8~} e4~ \tuplet 3/2 {e4  cis8} | d4 f \tuplet 3/2 {e4 f16 e16} | ees4. b |  \break
  d4. d4. | d2 d8 e | d4. d4. |
}
  \alternative {
    {d2  \tuplet 3/2 {r4 b8} |}
    {d2. |}
  }
}




harmonie =  \chordmode{
  \partial 8 s8
  \repeat volta 2 {
  a2.:min9 | a:3-.7+ | a:min7 | a:3-.6 f:maj7 | e:min7 |
  e:min7/a | e:min7/c | e:min7/a |
}
  \alternative {
    {e:min7/c}
    {e:min7/c}
  }
  \repeat volta 2 {
    r s s s |
    e:min7/a | e:min7/c | e:min7/a |
  }
  \alternative {
    {e:min7/c}
    {e:min7/c}
  } \break
  \repeat unfold 8
  {
    e:min7/a | e:min7/c 
  }
  
}



\header {
  title = #(string-append "Thème 2 accords" ton )
  tagline =  ""
  composer = "B. Scherrer"
}



\score{
  <<
    \new ChordNames {
      \transpose c' \noteCibleTransposition{
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



