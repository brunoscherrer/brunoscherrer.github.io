\version "2.18.2"	

noteCibleTransposition =   c   % c         % d pour Si b %  a, pour Mi b

ton = ""

\include "main.ly"

\score {
  <<
    \new Staff << \unfoldRepeats{\melodie 
                                 }  >>
    \new Staff << \unfoldRepeats{\maingauche
                          } >> 
  >>
\midi{ \tempo 4 = 160 }
}