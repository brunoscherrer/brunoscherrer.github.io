\version "2.20.0"

\header {
  title = "Watermelon (flûte do)"
  tagline =  ""
  composer = ""
}

voixa = \relative c' {

  \clef G
  \key f \major
  \numericTimeSignature
  \time 4/4

    \repeat unfold 4 {r4 f f8 f~ f4 |}
  \break
   \repeat volta 2 {
     ees'1 | r4  f,8 f c' d~ d f,~ | f r8 r4 r2 | r1 \break
     f'1 | r4  f,8 f c' d~ d f,~ | f r8 r4 r2 | r1  \break
     r4 c8 c g'4( a) | c8 bes aes f aes4( bes) |
     r4 c,8 c g'4( a) | c8 bes aes bes aes4( bes) | \break
     r4 c,8 c g'4( aes) | f4 f8 f c' d~ d f,~ |
     }
     \alternative {
       {f8 r8 r4 r2 | r1}
       {f8 r8 r4 r2 |}
       }
     
   
}

voixb = \relative c {
 \clef G
  \key f \major
  \numericTimeSignature
 \time 4/4
 
 \repeat unfold 4 {r4 ees d8 d~ d4 |} \break

 \repeat volta 2 {
   f1 | r4  f8 f aes bes~ bes f~ | f r8 r4 r2 | r1 \break
   bes1 | r4  f8 f aes bes~ bes f~ | f r8 r4 r2 | r1 \break
   r4 c8 c g'4( a) | aes8 g f  d f4( g) | 
     r4 c,8 c g'4( a) | aes8 g f d f4( g) | \break
   r4 c,8 c g'4( aes) | f4 f8 f aes aes~ aes f~ |
   }
   \alternative {
     {f8 r8 r4 r2 | r1}{f8 r8 r4 r2 |}
   }
  

 
}

voixc = \relative c {

 \clef G
  \key f \major
  \numericTimeSignature
  \time 4/4

   \repeat unfold 4 {f4 r4 c8 c ees4 |} \break

 \repeat volta 2 {
   \repeat unfold 2 {r4 aes4 f8 f~ f4  |}\repeat unfold 2 {f4 r4 c8 c ees4} \break
   \repeat unfold 2 {r4 c4 bes8 bes~ bes4  |}\repeat unfold 2 {f'4 r4 c8 c ees4}\break % \repeat unfold 2 {r4 aes'4 f8 f~ f4  |}
   \repeat unfold 2 {bes4 r8 bes8~ bes4 r4 |aes4 r8 aes8~ aes4 r4} \break
   bes4 r8 bes8~ bes4 r4 |aes4 r4 r2 |
 }
   \alternative {
     {\repeat unfold 2 {f'4 r4 c8 c ees4 |}}
     {f8 r8 r4 r2  }
   }
 \bar "|."
 

 
}



\new StaffGroup <<
  \new Staff {\transpose c c' {\voixa}}
%   \new Staff {\transpose c c' {\voixb}}
%  \new Staff {\transpose c d' {\voixc}}
>>



\score{
\new StaffGroup <<
  \new Staff {\set Staff.midiInstrument = "flute" \unfoldRepeats{\voixa}}
%  \new Staff { \set Staff.midiInstrument = "trumpet"  \unfoldRepeats{\voixb}}
%  \new Staff {\set Staff.midiInstrument = "clarinet" \unfoldRepeats{\voixc}}
>>

\midi{\tempo 4 =120}
}