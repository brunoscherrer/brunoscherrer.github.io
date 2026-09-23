\version "2.18.2"	

noteCibleTransposition =   c   % c         % d pour Si b %  a, pour Mi b

ton = ""

\include "main.ly"

\score {
  <<
    \new Staff \with {midiInstrument = #"electric piano 1"}<< \unfoldRepeats{\melodie}  >>
    \new Staff \with {midiInstrument = #"electric piano 1"} <<  \unfoldRepeats{\transpose c c \harmonie} >> 
  >>
\midi{ \tempo 4 = 120 }
}