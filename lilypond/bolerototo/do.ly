\version "2.18.2"	

noteCibleTransposition =   c   % c         % d pour Si b %  a, pour Mi b

ton = ""

\include "main.ly"

\score {
  <<
    \new Staff \with {midiInstrument = #"trumpet"}   << \unfoldRepeats{\voix_a
									      }  >>
    \new Staff \with {midiInstrument = #"flute"}   << \unfoldRepeats{\voix_b
									      }  >>
     \new Staff \with {midiInstrument = #"electric piano 1"}   << \unfoldRepeats{\accompagnement
                                 }  >>
  %  \new Staff \with {midiInstrument = #"electric piano 1"}   << \unfoldRepeats{\harmonie
  %                        } >> 
  >>
\midi{ \tempo 4 = 110 }
}