\version "2.18.2"	

noteCibleTransposition =   c   % c         % d pour Si b %  a, pour Mi b

ton = ""

\include "main.ly"

\score {
  <<
    \new Staff \with {midiInstrument = #"marimba"} << \unfoldRepeats{\transpose c c' {\chant}
                                 }  >>
    \new Staff \with {midiInstrument = #"lead 2 (sawtooth)"} << \unfoldRepeats{\melodie				
                                 }  >>
    \new Staff \with {midiInstrument = #"electric guitar (clean)"} << \unfoldRepeats{\harmonie				 
			       } >>
    \new Staff \with {midiInstrument = #"synth bass 1"} << \unfoldRepeats{\maingauche			
                          } >> 
  >>
\midi{ \tempo 2 = 100 }
}