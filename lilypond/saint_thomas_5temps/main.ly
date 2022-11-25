indent = 0


maingauche = \relative c' {
\repeat volta 4 {
  \time 5/8
  \repeat unfold 10 {
    {c,8 e f fis g }
  }
  e, b' e ais aes | a, e' a dis des | d, a' d gis ges | g, d' g ges f 
  c,4 e f8~ | f fis4 g
}
}

variantea = { r8 g c b a | g a f g4 }
varianteb = { r16 g8 c b a16 g8 | a e f g r }
variantec = { r16 g8 c b a16 g8 | a f g r4 }

melodie =  \relative c''{
\time 5/8

\repeat volta 4 {
  \repeat unfold 2 { r8 r2 }
  \repeat unfold 2 {
    \variantec  \repeat unfold 2 { r8 r2 }
  }
  <g bes e>4. <g bes f'>4 | <cis e g>4. << \voiceOne {\stemDown cis4} \new Voice {\voiceTwo {\stemUp {f8 e}}}>> | <c d f>4. <c e>4 | <b d>4. << \voiceOne {\stemDown b4} \new Voice {\voiceTwo {\stemUp {e8 d}}}>>  |
  <g, c e>4 <g bes d> \grace{aes16} <a c>8~ | <a c> <fis a>4 <f g>16 c' r8
}
  
}

harmonie =  \chordmode{

  \time 5/8
 \repeat volta 4 {
    \tuplet 8/5 {
      \repeat unfold 10 {c1:6}
      e:min7 | a:7 | d:min7 | g:7
    }   

  c4:6 c:7/e f:6 fis:dim g:7
}
    }



\header {
  title = #(string-append "Saint Thomas 5/8" ton )
  tagline =  ""
  composer = "Sonny Rollins"
}


\score {
  <<
  \new ChordNames {
      \transpose c \noteCibleTransposition{ \harmonie }
    }

  \new PianoStaff  <<
    \new Staff="up" \transpose c \noteCibleTransposition{ \melodie }
    \new Staff="down" \transpose c \noteCibleTransposition{ {\clef bass \maingauche} }
  >>
>>
  \layout {
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 4 72)
    }
  }
}



