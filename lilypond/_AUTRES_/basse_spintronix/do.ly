\version "2.18.2"	

noteCibleTransposition =   d,   % c         % d pour Si b %  a, pour Mi b

ton = ""

\include "main.ly"

\score {
  <<
    \new Staff \with {midiInstrument = #"electric bass (finger)"}<< \unfoldRepeats{\transpose c \noteCibleTransposition \melodie 
                                 }  >>
 
  >>
\midi{ \tempo 4 = 300 }
}