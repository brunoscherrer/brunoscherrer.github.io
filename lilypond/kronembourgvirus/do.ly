\version "2.18.2"	

noteCibleTransposition =   c   % c         % d pour Si b %  a, pour Mi b

ton = ""

\include "main.ly"

\score {
  <<
    \new Staff << \unfoldRepeats{
      \melodieintro
      \melodie
    }  >>
    \new Staff << \unfoldRepeats{
      \basseintro
      \basse
    }  >>
    \new Staff << \unfoldRepeats{
      \harmonieintro
      \harmonie
    } >> 
  >>
\midi{ \tempo 2 = 100 }
}