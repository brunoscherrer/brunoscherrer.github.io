indent = 0

melodie =  \relative c'{
  \key g \minor
  \numericTimeSignature
  \time 7/4

  \mark \markup \box \bold {Intro}
  \repeat percent 4 {g4 d' ees g8 a4 bes c d,8} \break

  \mark \markup \box \bold A
  d'1~ d2.~ | d2.~ d8  c4 bes a g8 | bes1~ bes2.~ | bes2.~ bes8 a4 g f ees8 | \break
  g1~ g4. f4 ees8 | f1~ f4. ees4 d8 | ees2.~ ees8 d4 c bes a8 | d1~ d2. | \break

  d'1~ d2.~ | d2.~ d8  c4 bes a g8 | bes1~ bes2.~ | bes2.~ bes8 a4 g f ees8 | \break
  g1~ g2.~ | g2.~ g8  f4 ees d c8 | ees1~ ees2.~ | ees2.~ ees8 r4 g c d8 | \break
  ees1~ ees2.~ | ees2.~ ees8 d4 c bes a8 | d1~ d2.~ | d2.~ d8  c4 bes a g8 | \break
  cis,1~ cis4. a4. | d1~ d4. d4. | g1~ g2.~ | g1~ g4 g a  | \break

  \time 3/4

  \mark \markup \box \bold B
  \repeat volta 2 {
    bes2.~ | bes4 g a | bes a c | f,4. ees4. | d4. a'4.~ | a2.~ | a4 g bes ees,4. d | \break
    }
    \alternative {
      { c4. g'~ | g2. ~ | g4 fis a d,4. c | bes2. | c | d2.~ | d4 g a \break }
      { cis,2.~ | cis4. a | d2. | d2. | g2.~ | g2.~ | g2.~ | g2. \break }
    }
  
  
}



harmonie =  \chordmode{  
\tuplet 4/7 {
  g1:min g:3-.7+ g:3-.7 g:3-.7+
  g1:min g:3-.7+ g:3-.7 g:3-.6
  c2:min7 f:7 | bes:maj7 ees:maj7 | a1:3-.5-.7 | d:7 |
  g1:min g:3-.7+ g:3-.7 g:3-.6
  d1:3-.5-.7 | g:7 | c:min7 | s
  a1:3-.5-.7 | d:7 | g:min | g:min/f |
  a1:7/e | d:7 | g:min | s
}
\repeat volta 2 {
  c1.:min7 f:7 bes:maj7 | ees:maj7
}
\alternative {
  { a1.:3-.5-.7 | d:7 | g2.:min g:3-.7+ | g1.:7 | |}
  { a1.:7 | d:7 | g2.:min  g:3-.7+ | g:3-.7 g:3-.7+ }
}


}


\header {
  title = #(string-append "Oblivion" ton )
  tagline =  ""
  composer = "A. Piazzola, arr. B. Scherrer"
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




