indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 7/8
  \repeat volta 2 {
    \mark \markup {\box \bold A}
  \repeat unfold 2 {
  g'4 g4. ees4 | fis fis4.  d4 |  f4  f4. des4  | e4. \tuplet 3/2 {c8 bes g} f8[ ees] | \break
  g'4 g4. ees4 | fis fis4.  d4 |  f4 f4. ees4 | c4. \tuplet 3/2 { f,8[ fis g]} ais[ c]| \break
}
    \mark \markup {\box \bold B}
  c4 c4. des4 | c c4. des4 | ees4 ees4. f4 | des4 c8[ bes aes ges f] | \break
%  \override TupletNumber.text = #tuplet-number::calc-fraction-text
  c'4 c4. des4 | c c4. des4 |   ees4 ees4. f8. bes16~ |  bes8 aes8. ges8. f8[ ees8 des] | \break
  c4 c4. des4 | c c4. des4 | ees4 ees4. f4 | des4 c8[ bes aes ges f] | \break
}
  \alternative {
  {b4 b4. cis4 | dis4 dis4. f4 | fis4 fis4. gis4 | a4 r8 r2 | \break}
  {a4 a4. gis4 | fis4 fis4. e4 | dis4 dis4. cis4 | b4 r8 r2 |}
  }
  
}



harmonie =  \chordmode{  
\tuplet 4/7
{
  \repeat volta 2 {
  \repeat unfold 2 {
  ees2:maj7  d:7| des:maj7  c:7
  ees:maj7  d:7 | des:maj7  c:7
}
  \repeat unfold 3 {ges:maj7 aes:6 a:3-.5- bes:min}
}
  \alternative {
    {b:2.7 s s s}
{b:2.7 s s s}
  }
}
}



\header {
  title = #(string-append "Danse de (la fin de) l'abondance" ton )
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




