\version "2.18.2"	

noteCibleTransposition =   c   % c         % d pour Si b %  a, pour Mi b

ton = ""

\include "main.ly"

\score {
  <<
    \new Staff \with {midiInstrument = #"accordion"}<< \unfoldRepeats{\transpose c c' {\melodie} 
                                 }  >>
    \new Staff \with {midiInstrument = #"electric piano 1"} << \unfoldRepeats{\harmonie
                          } >> 
  >>
\midi{ \tempo 4 = 120 }
}