\version "2.20.0"

harmonie =  \chordmode{
  \time 4/4
  f1:7 | s | s | s |
  \repeat volta 2 {
    f:7 | s | s | s |
  bes:7 | s | f:7 | s
  c:7 | bes:7 | c:7 | bes:7 |
  c:7 | bes:7 | f:7 s |
  }
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
     r4 c,8 c g'4( aes)  |
     }
     \alternative {
       {f4 f8 f c' d~ d f,~ f8 r8 r4 r2 | r1}
       {f4 f8 f c' d~ d f,~ f8 r8 r4 r2 |}
       }
     
   
}

voixb = \relative c {
 \clef G
  \key f \major
  \numericTimeSignature
 \time 4/4
 
 \repeat unfold 4 {r4 ees d8 d~ d4 |}

 \repeat volta 2 {
   f1 | r4  f8 f aes bes~ bes f~ | f r8 r4 r2 | r1
   bes1 | r4  f8 f aes bes~ bes f~ | f r8 r4 r2 | r1
   r4 c8 c g'4( a) | aes8 g f  d f4( g) |
     r4 c,8 c g'4( a) | aes8 g f d f4( g) | \break
   r4 c,8 c g'4( aes) | 
   }
   \alternative {
     {f4 f8 f aes aes~ aes f~ | f8 r8 r4 r2 | r1}{f4 f8 f aes aes~ aes f~ | f8 r8 r4 r2 |}
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
   bes4 r8 bes8~ bes4 r4 |
 }
\alternative {
     {aes4 r4 r2 |\repeat unfold 2 {f'4 r4 c8 c ees4 |}}
     {aes,4 r4 r4 r8 f'~ |f8 r8 r4 r2 }
   }
 \bar "|."
 

 
}


\header {
  title = "Watermelon "
  tagline =  ""
  composer = "(Herbie Hancock, d'après arrangement de Youssef Essawabi)"
}



\new StaffGroup <<
  \new ChordNames { \harmonie}
  \new Staff \with {instrumentName = "Flûte"} {\transpose c c' {\voixa}}
  \new Staff \with {instrumentName = "Trompette"} {\transpose c c' {\voixb}}
  \new Staff \with {instrumentName = "Clarinette"} {\transpose c c' {\voixc}}
>>



\score{
  \new StaffGroup <<
    \new Staff {\unfoldRepeats{\harmonie}}
  \new Staff {\set Staff.midiInstrument = "flute" \unfoldRepeats{\voixa}}
  \new Staff { \set Staff.midiInstrument = "trumpet"  \unfoldRepeats{\transpose c c' \voixb}}
  \new Staff {\set Staff.midiInstrument = "clarinet" \unfoldRepeats{\voixc}}
>>

\midi{\tempo 4 =120}
}