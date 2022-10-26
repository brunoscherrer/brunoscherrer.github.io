\version "2.18.2"	

noteCibleTransposition =   c   % c         % d pour Si b %  a, pour Mi b

ton = ""

\include "main.ly"


\score {
  <<
    \new Staff << \unfoldRepeats{\melodiea 
                                 \melodieb \melodiec}  >>
    \new Staff << \unfoldRepeats{\partial 2 r2 \bassea 
                                 \harmonieb \relative c{\basse | c,1.}} >> 
  >>
\midi{ \tempo 2 = 100 }
}