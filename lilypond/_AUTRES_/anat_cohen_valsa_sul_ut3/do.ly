\version "2.18.2"	

noteCibleTransposition =   bes,,   % c         % d pour Si b %  a, pour Mi b

ton = " (do)"

\include "main.ly"

\score {
  <<
    \new Staff \with {midiInstrument = #"clarinet"}<< \unfoldRepeats{\melodie 
                                 }  >>
    \new Staff \with {midiInstrument = #"electric piano 1"} << \unfoldRepeats{\harmonie
                          } >> 
  >>
\midi{ \tempo 4 = 230 }
}