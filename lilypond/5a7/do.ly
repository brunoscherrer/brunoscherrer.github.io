\version "2.18.2"	

noteCibleTransposition =   c   % c         % d pour Si b %  a, pour Mi b

ton = ""

\include "main.ly"

\score {
  <<
    \new Staff \with {midiInstrument = #"electric piano 1"}<< \unfoldRepeats{\melodie 
                                 }  >>
    \new Staff \with {midiInstrument = #"electric piano 1"} << \unfoldRepeats{\harmonie
									    } >>
%    \new Staff \with {midiInstrument = #"acoustic bass"} << \unfoldRepeats{\basse
%                          } >> 
  >>
\midi{ \tempo 4 = 165 }
}