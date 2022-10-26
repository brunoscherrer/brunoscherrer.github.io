\version "2.18.2"	

noteCibleTransposition =   c   % c         % d pour Si b %  a, pour Mi b

ton = ""

\include "main.ly"

\score {
  <<
    \new Staff << \unfoldRepeats{\melodieb
                                 }  >>
    \new Staff << \unfoldRepeats{\harmonieb
                          } >> 
  >>
\midi{ \tempo 2 = 60 }
}

