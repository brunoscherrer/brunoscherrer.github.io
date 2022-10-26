\version "2.18.2"	

noteCibleTransposition =   d   % c         % d pour Si b %  a, pour Mi b

ton = " (si bémol)"

\include "main.ly"

\score{
  <<
    \new ChordNames {
      \transpose c \noteCibleTransposition{
	\harmonie
      }
    }
    \new Staff  {
      \transpose c \noteCibleTransposition{ \melodie }
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}


