\version "2.18.2"	

noteCibleTransposition =   c   % c         % d pour Si b %  a, pour Mi b

ton = ""

\include "main.ly"

\score {
  <<
    \new Staff \with {midiInstrument = #"electric piano 1"} << \unfoldRepeats{\harmonie } >> 
    \new Staff \with {midiInstrument = #"electric piano 1"} << \unfoldRepeats{\melodiec }  >>
    \new Staff \with {midiInstrument = #"electric piano 1"} << \unfoldRepeats{\melodie }  >>
    \new Staff \with {midiInstrument = #"electric piano 1"} << \unfoldRepeats{\melodieb }  >>
  >>
\midi{ \tempo 4 = 100 }
}