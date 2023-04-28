indent = 0

themea = \relative c'' {
  r2 f8[ ees c] ees8 r8 c8 r8 bes8 r8 aes | bes[ c]  f,4~ f4.~ | f2~ f4. | \break
  r2 f'8[ ees f] aes8 r8 bes8 r8 ces[ bes aes] | bes[ aes] f4~ f4.~ | f2~ f4.  | \break
  r2 f8[ ees c] ees8 r8 c8 r8 bes8 r8 aes | bes[ c]  f,4~ f8 g8 r8 aes2~ aes8 \tuplet 3/2 {g8 aes g} | \break
  f2~ f4.~ | f2~ f4. | r2 r4 r8 | r2 r4 r8
}

melodie =  \relative c''{
  \key aes \major
  \numericTimeSignature
  \time 7/8
  \mark \markup {\box \bold A}
  \repeat volta 2 { \themea } \break
  \mark \markup {\box \bold B}
  bes'2~ bes8[ aes g] f2~ f4. | f2~ f8[ e f] e r c r bes r c8 | \break
  des2~ des8[ ees des] c2~ c4. | bes2~ bes8[ aes g] f r e r c4 r8 | \break
  aes''2~ aes8[ g aes] g r f r c4 r8 | f2~ f8[ g f] e r c r bes r c8 | \break
  des2~ des8[ ees des] c2~ c4~ c8 | bes2~ bes8[ aes g] fis2~ fis4.~  | fis2~ fis4.~  | fis2~ fis4. \bar "|." \break
  \mark \markup {\box \bold C (contre-chant)}
  \repeat volta 2 {
    f2 f'4. | ees8 r ees8 r c4 ees8 | d2 bes4. | des8 r des r des4 ees8 \break
    c2 f,4. | f8 r f r f4 g8 | aes2 aes4. | aes8 r aes r bes4 aes8 }
}


harma =  \chordmode{
   f1:min9 % <f c'  g' aes' ees''>1 %aes1:maj7/f 
   aes:6.10 %<aes f' d''> %aes:6.10 |
   bes:9% <bes f' aes' c''> %bes:9 |
   ees:7%f:min7/ees%<ees' g' aes' c''> |
   f1:min9 % <f c'  g'  ees''>1 %aes1:maj7/f 
   aes:6.10 %<aes f' aes' d''> %aes:6.10 |
   bes:9%<bes f' aes' c''> %bes:9 |
   des:maj7%<des' f' aes' c''> |
}

harmonie =  \chordmode{
  \time 7/8
  \tuplet 8/7 {
    \repeat volta 2 { \repeat unfold 2 {\harma}}
    ees bes/d | bes:min/des c:7 | bes:min7 aes:6.10 | c:7/g c:7
    des c:5+.7 | b:3-.5- c:7 | bes:min7 aes:6.10 | c:7/g fis:5-.7+ | s s
    \repeat volta 2 {\harma}
    
  }
}



\header {
  title = #(string-append "Le meilleur est à venir" ton )
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
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




