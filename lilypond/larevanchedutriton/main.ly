indent = 0

melodie =  \relative c''{
  \key bes \major
  \numericTimeSignature
  \time 3/4
  a16 bes a g a bes16 r c r d r des~| des16 c16 bes aes bes2 | r4 aes16 bes16  r aes r g f8~ | f2.
  a!16 bes a g a bes16 r c r d! r des~| des16 c16 bes aes bes2 | r4 g16 aes16  r bes r c bes8~ | bes2.
  d!16 ees d c d2 | d16 ees d c d2  d16 ees d c d ees  r d r c c8~ | c2.
  bes16 c bes a! bes2 | aes16 bes aes ges aes2 | aes16 bes aes g! aes8~  aes4 bes16 a16~ | a2.

}



harmonie =  \chordmode{  
  c2.:min9  | ges:maj7  | aes:maj7 | bes:maj7 | \break
  c:min9  | ges:maj7  | aes:maj7 | ees:maj7 | \break
  g:min  | g:3-.7+/ges  | g:min7/f  | g:min6/e  \break
  ees:maj7  | ges:maj7 |  aes:maj7 |  bes:maj7 |  \break
}


melodieb = \relative c''{
  \key bes \major
  \numericTimeSignature
  \time 3/4
  <d f>8. <c ees>16 r16<d f>16 <c ees>4. |  <des f>8. <c ees>16 r16<des f>16 <c ees>4. | <c f>8. <bes ees>16 r16<c f>16 <bes ees>4 <a bes d>8~ | <a bes d>2. |
  <d f>8. <c ees>16 r16<d f>16 <c ees>4. |  <des f>8. <c ees>16 r16<des f>16 <c ees>4. | <c f>8. <bes ees>16 r16<c f>16 <bes ees>4 <g bes d>8~ | <g bes d>2. |
  <d' bes'>8. <bes g'>16 r16<d bes'>16 <bes g'>4. |  <d bes'>8. <a ges'>16 r16<d bes'>16 <a ges'>4. | <d bes'>8. <aes f'>16 r16<d bes'>16 <aes f'>4 <g bes e>8~ | <g bes e>2. |
  <d' f>8. <c ees>16 r16<d f>16 <c ees>4. |  <des f>8. <c ees>16 r16<des f>16 <c ees>4. | <c f>8. <bes ees>16 r16<c f>16 <bes ees>4 <a bes d>8~ | <a bes d>2. |  
}


basse = \relative c{
  \clef F
  \key bes \major
  \numericTimeSignature
  \time 3/4
  c8. g'16 d'8. c,8 g'8 d'16 | ges,,8. des'16 aes'8. ges,8 des'8 aes'16 |  aes,8. ees'16 g8. aes,8 ees'8 g16 | bes,8. f'16 a8. bes,8 f'8 a16 |
  c,8. g'16 d'8. c,8 g'8 d'16 | ges,,8. des'16 aes'8. ges,8 des'8 aes'16 |  aes,8. ees'16 g8. aes,8 ees'8 g16 | ees8. g16 bes8. ees,8 g8 bes16 |
  g8. bes16 d8. g,8 bes8 d16 |  ges,8. bes16 d8. ges,8 bes8 d16 |  f,8. bes16 d8. f,8 bes8 d16 |  e,8. bes'16 d8. e,8 bes'8 d16 |
  ees,8. g16 d'8. ees,8 g8 d'16 | ges,,8. des'16 aes'8. ges,8 des'8 aes'16 |  aes,8. ees'16 g8. aes,8 ees'8 g16 | bes,8. f'16 a8. bes,8 f'8 a16 |
}


\header {
  title = #(string-append "La revanche du triton" ton )
  tagline =  ""
  composer = "B. Scherrer"
}



\score{
  <<
    \new ChordNames {
      \transpose c \noteCibleTransposition{
	\harmonie
      }
    }
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodie
      }
    }
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodieb
      }
    }
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \basse
      }
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




