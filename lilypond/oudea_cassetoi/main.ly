indent = 0


melodiea =  \relative c''{
  \key c \major
  \repeat volta 2 {
    e2.~ | e2.~ | e4 d c | d4. c | \break
    a2. | r2. | r2. | r4 a b | \break
    e2.~ | e2.~ | e4 d cis | d4. e | \break
    e2. | r2. | r2.   
}
  \alternative{
    {r2.} 
    {r2 e,8 f!} 
  } \break
}
melodieb = \relative c''{
\repeat volta 2 {
  fis,2. | d' | cis8 b r b r a | d2 e,8 f! | \break
  fis!2. | d'2 cis8 d | e4. b | cis2. | \break
  f,!2~ f8 fis16 gis | a4 gis fis | b2. | fis4. gis | \break
  %a2. | gis2. |
  \tuplet 3/2 {e4 f gis}  {a8 b}
  \tuplet 3/2 {d4 b a} \tuplet 3/2 {gis8 g f}
  \tuplet 3/2 {e4 f gis}  {a8 b}
  d16 b d e16 r2
				%  \tuplet 7/6 {e8 f gis a b c d}
				%  \tuplet 7/6 {e8 d c b a gis f}
  }
}

bassea = \relative c{
  a4. e' | f c | f, c' | d4 c b |
  a4. e' | f c | f, c' | d4 c b | \break
  a4. a4. | a4. a4 a8 | a4. a4. | a2~ \tuplet 3/2 {a8 gis fis} |
  e4. e4. | e2~ e8 e' | e,2.~ | e2. \break
}

harmoniea = \chordmode{
\repeat volta 2 {
  \repeat unfold 2 {
    a2.:min7 | f1.:maj7  | d2.:min7 |
  }
  a:maj7 | b:min7/a | cis:min7/a | d:maj7/a |
  e1.:sus | e2.:7
}
\alternative{
  {s}
  {s}
}
}

harmonieb =  \chordmode{
  \repeat volta 2 {
    \repeat unfold 2 {
      fis2.:7 | b:min7 | e4.:sus e:7 | a2.:maj7
    }
    cis:7 | fis:min7 | b:7 | s
    e1.:sus | e1.:7
  }
}


melodie = {
  \time 3/4
  \mark \markup \box \bold {A}
  \melodiea
  \mark \markup \box \bold {B}
  \melodieb
}

harmonie = {
  \time 3/4
  \harmoniea
  \harmonieb
}


\header {
  title = #(string-append "Ou-dé-a, Casse-toi-d'là !" ton )
  tagline =  ""
  composer = "B. Scherrer"
}



\score{
  <<
  \new ChordNames {
    \transpose c \noteCibleTransposition{	
      \chordmode{
	\repeat unfold 2 {
	  a2.:min7 | f1.:maj7  | d2.:min7 |
      }
      a:maj7 | b:min7/a | cis:min7/a | d:maj7/a |
      e1.:sus | e2.:7
    }}
  }
  \new Staff {
     \numericTimeSignature
     \time 3/4
     \clef bass
     \key c \major
     \mark \markup \box{"Basse sur A"}
     \transpose c \noteCibleTransposition{
       \bassea
     }
   }
>>
}





\score{
  <<
    \new ChordNames {
      \transpose c \noteCibleTransposition{
	\harmonie
      }
    }
    \new Staff { 
      \numericTimeSignature
      \transpose c \noteCibleTransposition {
	\melodie
      }
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}


