\version "2.18.2"	

noteCibleTransposition =   bes   

ton = " (do)"

\include "main.ly"

\score {
    \new Staff \with {midiInstrument = #"flute"} \unfoldRepeats{\melodie}
    \midi{ \tempo 2 = 84}
  }
    
    
