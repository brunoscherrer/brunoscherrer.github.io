indent=0

melodiea = {\relative c'{
  \mark \markup {\box\bold{A}}
 \key c \major 
 \repeat unfold 2 { | r8 d d' d, c' b4 a8~ | a4 r2 f8 g | a d,4. r2 | r1 | \break }
 %\key aes \major
 r8 bes g' bes, f' ees4 des8~ | des4 r2 c8 des | c bes4. r2 | r1 | \break
 %\key e \major
r8 b4 cis dis e8~ | e4. dis cis8 b | cis dis b4 r2 | r8 b4-. bes-. a_. r8 |
%\key c \major
r1 r1 r1 r1
}}

melodieb = {\relative c'{
  \mark \markup {\box\bold{B}}
  %\key ees \major
  d2~ d8 bes4 f'8~ | f2. ees4 | bes'2 \tuplet 3/2 {aes4 g aes} | ees2. f8 aes8 |
  g4. d4 des4 c8~ | c2 r4 g4 | aes4. c4 ees4. | ges2  d4. ees8 | \break
  d2~ d8 bes4 f'8~ | f2. ees4 | bes'2 \tuplet 3/2 {aes4 g aes} | b2. c8 d8 |
  <bes c ees>2~ <bes c ees>8 <bes c ees>4-. <a c ees>8~ | <a c ees>2. <a c ees>4| <aes c ees>2~ <aes c ees>4. <aes b d>8~ | <aes b d>1
}}

melodie =  {
  \time 4/4
  \numericTimeSignature
  \repeat volta 2 {\melodiea }
  \melodieb
%  \melodiea
}

harmoniea=  \chordmode{
  \repeat unfold 2 { g1 | f:maj7 | g | f:maj7 | }
ees | des:maj7 | ees | des:maj7 |
b | a:maj7 | b | a:maj7 |
g | f:maj7 | g | f:maj7 | 
}

harmonieb=  \chordmode{
 ees:maj7 |  bes:m | aes2:7+9 aes | aes:m7+ aes:m7 |
 g:m7 g:m6 | c:3-.5-.7 c:3-.5-.7- | f1:min7 | bes:5+  |
 ees:maj7 |  bes:m | aes2:7+9 aes | aes:m7+ aes:m7 |
 c1:min7 | f:7 |  aes:maj7 | aes:m7 |
}


harmonie = {  

\repeat volta 2 {\harmoniea}
\harmonieb \bar "|."
				%\harmoniea
%    \drums { 
%      \mark "Sur A"
%      \repeat percent 2 {hh4 hh4. hh4 hh8~ | hh8 hh4 hh hh8 hh4} \break
%      \mark "Sur B"
%      \repeat percent 2 {hh4 hh4. hh4 hh8~ | hh8 hh4 r r8 hh4}
%}
 

}



\header {
  title = #(string-append "Samba ni chaussettes" ton )
  tagline =  "Samba ni chaussettes (B. Scherrer)"
  composer = "B. Scherrer"
}



% Espace entre les lignes
\paper{
  system-system-spacing = #'(
                            (minimum-distance . 0)
                            (basic-distance . 0)
                            (padding . 5)
                            (stretchability . 5)) 
}

\score{
  <<
    \new ChordNames {
      \transpose c \noteCibleTransposition{
	\harmonie
      }
    }
    \new Staff 
   
      {
        \transpose c \noteCibleTransposition {
        \melodie
      }
      }
    
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 34     )  } }
  
}


