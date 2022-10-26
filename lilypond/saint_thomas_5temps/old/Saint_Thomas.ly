\version "2.18.2"	


maingauche = \relative c' {
\repeat volta 4 {
  \time 5/8
 \repeat percent 2 {c,8 e f fis g }
 \repeat volta 2 {\repeat percent 4 {c, e f fis g }}
 e, b' e ais aes | a, e' a dis des | d, a' d gis ges | g, d' g ges f 
 c,4 e f8~ | f fis4 g
}
}

variantea = { r8 g c b a | g a f g4 }
varianteb = { r16 g8 c b a16 g8 | a e f g r }

melodie =  \relative c''{
\time 5/8

\repeat volta 4 {
  \repeat percent 2 { r8 r2 }
  \repeat volta 2 { \variantea  \repeat percent 2 { r8 r2 } }
   <g bes e>4. <g bes f'>4 | <cis e g>4. << \voiceOne {\stemDown cis4} \new Voice {\voiceTwo {\stemUp {f8 e}}}>> | <c d f>4. <c e>4 | <b d>4. << \voiceOne {\stemDown b4} \new Voice {\voiceTwo {\stemUp {e8 d}}}>>  |
  <g, c e>4 <g bes d> \grace{aes16} <a c>8~ | <a c> <fis a>4 <f g>8 c'
}
  
}

harmonie =  \chordmode{

  \time 5/8
 \repeat volta 4 {
    \tuplet 8/5 {
      \repeat percent 2 {c1:6}
      \repeat percent 4 {c:6}
      e:min7 | a:7 | d:min7 | g:7
    }   

  c4:6 c:7/e f:6 fis:dim g:7
}
    }

\header {
  title = "SAINT THOMAS (version 5/4)"
  tagline =  "from Sonny Rollins (Saint Thomas)"
  composer = "Sonny Rollins"
}

\score {
  <<
  \new ChordNames {
      \harmonie
    }

  \new PianoStaff  <<
    \new Staff="up" \melodie
    \new Staff="down" {\clef bass \maingauche}
  >>
>>
  \layout {
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 4 72)
    }
  }
}

\score {
  <<
  \new PianoStaff  <<
    \new Staff="up" \unfoldRepeats{\melodie}
    \new Staff="down" {\clef bass \unfoldRepeats{\maingauche}}
  >>
>>
  \midi{ \tempo 4 = 160 }
}


% modif de l'espacement entre 2 "systèmes" (cad entre 2 lignes musicales, ici une ligne
% comprend la "portée" des accords et la portée de la mélodie )
%\paper {
%          system-system-spacing #'padding = #3.6 }
