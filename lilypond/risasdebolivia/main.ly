indent = 0

melodie =  \relative c'{
  \key c \major
  \numericTimeSignature
  \time 3/4


  \mark \markup { \bold\box{A} }
  r2 r8 d32 e f g |
  \repeat volta 2 {a8  r16 a  r a  r a  c8 a | g8 r16 g r a r a   r8  d,32 e f g |
		   a8  r16 a  r a  r a  g8 e | \break} 
  \alternative {
    {d8  r16 d  r e  r e   r8 d32 e f g |}
    {d8  r16 d  r d  r d   e8 c  |}
  }
  d8   r16 d  r d  r d   e8 c |
  d2 a'16 d8 d16 | 

\repeat volta 2 {  d8 r16 bes r bes r bes d8 c | a2   d,16 e f g  | a8 r16 g r f r e d8 c | \break} 
  \alternative { {d2  a'16 d8 d16}
	      { d,8  r16 d r d r d  e8 c } }
  d8  r16 d r d r d  e8 c | d2 r4 \break

  d'8. c8 bes16  a8 a c | g e16 c8 e16  d4.
  d'8. c8 bes16  a8 a c | g e16 c8 e16  d4 f16 a \break
  g8 e16 c8 e16 d8 d  f16 a | g8 e16 c8 e16 d4 f16 a
  g8 e16 c8 e16 d8 d  f16 a | g8 e16 c8 e16 d4. 
  | r2. | \break
  
  \mark \markup { \box{Solos} }
  \repeat volta 2 { \repeat unfold 2 { r2. }}
  \repeat volta 2 { \repeat unfold 2 { r2. }}

%%%
  
   \mark \markup { \bold\box{B} }
  r2 d16 e f g |
  \repeat volta 2 { a2 c8 g | a2   d,16 e f g |
		    a2 g8 e |  \break
		  }
  \alternative {
    {d2  d16 e f g }
    {d2 f8 e}
  }
   | d2   f8 e | d2 a'8 d8 
\repeat volta 2 {  d4 bes  d8 c | a2   d,16 e f g  | a4 g  f8  e  | \break} 
  \alternative { {d2  a'8 d8 }
	      { d,2  f8 e } }
  d2 f8 e | d2 r4 \break

  d'8. c8 bes16  a8 a c | g e16 c8 e16  d4.
  d'8. c8 bes16  a8 a c | g e16 c8 e16  d4 f16 a \break
  g8 e16 c8 e16 d8 d  f16 a | g8 e16 c8 e16 d4 f16 a
  g8 e16 c8 e16 d8 d  f16 a | g8 e16 c f e d4.~ 
  | d2 r4 | \break
}



harmonie =  \chordmode{  
  s2.
  \repeat volta 2 {| d2:min7  e4:min7/a | f2:maj7/d e4:min7/a |d2:min7  e4:min7/a  }
  \alternative { {f2:maj7 e4:min7/a} {d2:min7 e4:min7/a} }
  d2:min7 e4:min7/a | d2.:min7
  \repeat volta 2 {bes2 c4:7 | f2:maj7 g4:min7 | a2.:min7 |}
  \alternative { {d2.:min7} {d2:min7 e4:min7/a} }
 d2:min7 e4:min7/a | d2.:min7
  \repeat unfold 2 { bes4.:maj7 f:maj7 a:min7 d:min7 }
  \repeat unfold 4 { a2:min7 d4:min7} d2.:min7 \break

  %%
  
  \repeat volta 2 {\repeat unfold 2 { d2:min9 a4:min } } 
  \repeat volta 2 { {d2:min7  e4:min7/a | f2:maj7/d e4:min7/a } } \break

%%%
  
  d2.:min7
  \repeat volta 2 {d2:min  d4:3-.7+/cis | d2:min7/c d4:min6/b |
  bes2:maj7  a4:min7 | 
}
  \alternative {
    { g2:min f8 a:min/e}
    { g2:min f8 a:min/e}
  }
 | d2:min f8 a:min/e |d2.:min

  \repeat volta 2 { bes4:maj7 bes:maj7/a  g:min7 f a:min/e d:min7  a:7/cis a:7 a:7/cis }
  \alternative {    {d2.:min7} {d2:min7 f8 a:min/e  } }
  d2:min f8 a:min/e |d2.:min

  \repeat unfold 2 {bes4.:maj7   b:3-.5-.7   c  b:3-.5-.7}
  bes:maj7 a:min7 g:min7 a:min7 bes:maj7 a:min7
  g4:min7 f16 a16:min/e d4.:min7 s2.
}



\header {
  title = #(string-append "Risas de Bolivia" ton )
  tagline =  ""
  composer = "Trad. Bolivie, Arr. B. Scherrer"
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




