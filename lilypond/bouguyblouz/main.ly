indent = 0


melodiea = \relative c''{
 d8 e f fis d b a b | r d r f4. r4 | d8 e f fis d b a b | r d r e4. r4 | \break
 d8 e f fis d b a b | r d r f4. r4 | b8 a f fis a fis!4. | gis4. g fis4 | d1~ \break
 | d1 | r8 f d f r d8 b d8 | r8 c a c r c \tuplet 3/2 {gis8 a c} | d1 \break r8 a r c a des a d | d1 | r8 f r e r d b d | d1 | \break
 \tuplet 3/2 { r4 a'8 } \repeat unfold 3 {\tuplet 3/2 { f!8 fis a }} | d,1 
 \repeat unfold 2 {\tuplet 3/2 {c'4 f,! fis}} | d r4 r r8 c'8 |  
}

melodieb = \relative c''{
  fis a f! b, d f gis g | f d c a des d r4 | gis4. g fis4 
}


melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 4/4
  \partial 8
  c'8
  \melodieb \break
  \repeat volta 2 {
    \melodiea \break
    \melodieb
  }
  
}

harmoniea =  \chordmode{
  d1:7 | e:7 | d:7 | a:7
  d1:7 | e:7 | d:7.9+ | e4.:7 a2:7 s8  | d1:7 |
  d:7 | d2:min7 b:min7 | a1:min7 | d:7
  a2:min7 a:7 | d1:7 | f2:maj7 b:min7 | d1:7 |
  d:7 | s | d:7 | s
}

harmonieb = \chordmode{
  fis2:3-.5-.7 b:3-.5-.7 | d1:min7 | e4.:7 a2:7 s8 | 
}

harmonie =  \chordmode{
  \time 4/4
  \partial 8
  s8
  \harmonieb
  \harmoniea
  \harmonieb
}



\header {
  title = #(string-append "BouguyBlouz" ton )
  tagline =  ""
  composer = "E. Nataf"
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




