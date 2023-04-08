indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 3/4
  e16 e d c d4. e16 e | g16 b,16~ b2 a16 a | c16 e,16~ e2 g16 g | aes8. b e d8 c32 d | \break
  c2. | r2. | r2. | r2. | \break
  e16 e d c d4. e16 e | g16 b,16~ b2 a16 a | c16 e,16~ e2 g16 g | aes8. b e d | \break
  %
  c16 c b a b4. c16 c | e16 aes,16~ aes2 g16 g | c16 e,16~ e2 g8 | g16 fis8 d'16~ d4.~ d16 c | \break
  c2. | r2. | r2. | r2. | \break
  c16 c b a b4. c16 c | e16 aes,16~ aes2 g16 g | c16 e,16~ e2 g8 | g16 fis8 d'16~ d4.~ d16 c | \break
  c2. | \tuplet 3/2 {r8 c b} \tuplet 3/2 {a8 g a} b16 c e,8~ | e2. | r2. | 
  r2. | \tuplet 3/2 {r8 c' b} \tuplet 3/2 {a8 g a} b16 c c8~ | \break
  c2. | \tuplet 3/2 {r8 c bes} \tuplet 3/2 {aes8 g aes} bes16 c c8~ | c2. | 
  \tuplet 3/2 {r8 c bes} \tuplet 3/2 {aes8 g aes} bes16 c c8~ | 
  c4. cis4. |  fis,2. | r | r  \break
   
}



harmonie =  \chordmode{  
  c2.:2 |  c:2 |   c:2 | g:7.9- |
  c:2 |  c:2 |  c:2 |  c:2 |
  c2.:2 |  c:2 |   c:2 | g:7.9- |
  a:min7 |  e:7/aes |   c:2/g | d:7/fis |
  c:2 |  c:2 |  c:2 |  c:2 |
  a:min7 |  e:7/aes |   c:2/g | d:7/fis |
  f:maj7 | s | c:maj7 | s | f:maj7 | s |
  cis:maj7 | ees:6 | e:3-.5-.7 | g:min7/f |
  fis:maj7 | s | s | s
  
}



\header {
  title = #(string-append "Boléro malgré lui" ton )
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




