indent = 0

melodie =  \relative c'{
  \key d \minor
  \numericTimeSignature
  \time 4/4

  \mark \markup {\box Couplet}

  r2 r4 r8 a8 |
  \repeat volta 2 {

    d4 d d r8 a | d4 d d r8 a | \tuplet 3/2 {d4 d d} \tuplet 3/2 {d4 d d} | d2. r8 e | \break
    f4 f f r8 c | f4 f f r8 c | \tuplet 3/2 {f4 f f} \tuplet 3/2 {f4 f f} | f2 r4 r8 g | \break
    a4 e e r8 a | f4 d d r8 a' | c4 g g r8 c | a4 f f r8 a | \break
    \tuplet 3/2 {d4 c bes} \tuplet 3/2 {d, f g} | a2 r4 r8 a | \tuplet 3/2 {c4 a fis} \tuplet 3/2 {d e fis} | g4 r4 r2 | \break
    
    \mark \markup {\box Refrain}
    \repeat volta 2 {
      \tuplet 3/2 {d4 cis d} a'4 r8  d, | \tuplet 3/2 {ees4 ees ees} bes'2 | r8 e,!8 e8 e8 a4 g4 | f8 a4 g4 f8 e8 f | \break
      \tuplet 3/2 {d4 cis d} a'4 r8  d, | \tuplet 3/2 {ees4 ees ees} bes'4 bes8 bes | e,!4 r a r | }
    \alternative { {d,4 r r2 } {d4 r r2 } } \break
    g8 g g d'~ d4 r8 c | \tuplet 3/2 {bes4 a bes} c,2 | r8 f f f a4 c8 f,~ | f4 g4 a8 f e d | \break
    g8 g g d'~ d4 r8 c | \tuplet 3/2 {bes4 a bes} c,2 | r8 f~ f4 g gis | a8  g4 a8 f g e f | \break
    \tuplet 3/2 {d4 cis d} a'4 r8  d, | \tuplet 3/2 {ees4 ees ees} bes'2 | r8 e,!8 e8 e8 a4 g4 | f8 a4 g4 f8 e8 f | \break
    \tuplet 3/2 {d4 cis d} a'4 r8  d, | \tuplet 3/2 {ees4 ees ees} bes'4 bes8 bes | e,!4 r a r | d, r r4 r8 d8 | \break
    }
  
}




harmonie =  \chordmode{
  
  s1 | d2.:min a4:7 | d2.:min a4:7 | d1:min | s2. c4:7 |
  f2. c4:7 | f2. c4:7 | f1 | s |
  a1:7 | d:min | c:7 | f
  bes | a:7 | d:7 | g2:7 a:7

  \repeat volta 2 {
  d1:min | ees | a:7 | d2:min a:7 |
  d1:min | ees | a:7 |}
  \alternative { {d:min} {| d2:min d:7|} }
  g1:min | c:7 | f | d:min |
  g1:min | c:7 | f | a:7 |
  d1:min | ees | a:7 | d2:min a:7 |
  d1:min | ees | a:7 | d:min |
  
}



\header {
  title = #(string-append "La ronde des jurons" ton )
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




