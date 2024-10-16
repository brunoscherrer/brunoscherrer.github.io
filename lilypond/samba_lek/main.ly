indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 4/4
  \partial 4 {e8( d}
  \repeat volta 2 {
    \mark \markup \box \bold {A}
  a4) a4. a4 a8~ | a8 a4 g8 a4 g4 |
  c2~ c8 a( g a~ | a2.) e'8( d | \break
  a4) a4. a4 a8~ | a8 a4 g8 a8 a g4 |
  c2~ c8 d c a~ | a2. d8 c | \break
  g1~ | g2~ g8 aes8 g c |
  ges2~ ges8 f ges f~ | f2. e8( f | \break
  e) c a2.~ | a2 g8 a g f
    | g f g2. r2. e''8( d  | \break
    }
    \mark \markup \box \bold {B}
  b4) b4. b4 b8~ | b8 b4 b8 c4 d4 |
  c2~ c8 a f a~ | a2. e'8( d | \break
  b4) b4. b4 b8~ | b8 b4 b8 c4 d4 |
  f2~ f8 e f e~ | e2. f8 e | \break
  ees1~ | ees2~ ees8 d8 ees d |
  des2~ des8 c des c~ | c2. bes8( aes | \break
  bes) c g2.~ | g2 f8 g f es |
  f es  f2. | r2. e'8 d \break  
}



harmonie =  \chordmode{  
  \time 4/4
  \partial 4 {s4}
  \repeat volta 2 {
    g1:min7 | s | a:min7 | s | g1:min7 | s | a:min7 | s
    aes:maj7 | s | ges:maj7 | s | f:maj7.9 | s | f:maj7.9 | s
    }
  e:min7 | s | d:min7 | s | e:min7 | s | d:min7 | s
  ees:maj7 | s | des:maj7 | s | aes:maj7.9 | s | aes:maj7.9 | s
}



\header {
  title = #(string-append "Samba Lek'" ton )
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




