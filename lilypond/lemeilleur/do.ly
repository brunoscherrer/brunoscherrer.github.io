\version "2.18.2"	

noteCibleTransposition =   c   % c         % d pour Si b %  a, pour Mi b

ton = ""

\include "main.ly"

\score {
  <<
    \new Staff \with {midiInstrument = #"acoustic grand"}<< \unfoldRepeats{\melodie 
                                 }  >>
    \new Staff \with {midiInstrument = #"acoustic grand"} << \unfoldRepeats{\harmonie
                          } >> 
  >>
\midi{ \tempo 4 = 190 }
}