\version "2.20.0"


voixa = \relative c' {

  e4 e e2 | e4 e e2 | e4 g c,4. d8 | e2. r4 | f f f f | \break
  f4 e e2 | e4 d d e | e2 g4 r | e e e2 | e4 e e2 | \break
  e4 g c,4. d8 | e2. r4 | f f f f | f e e e8 e | g4 g f d | c2. r4 | \break 
  
  \repeat volta 2 {g4 e' d c | g2. r4 |  g4 e' d c | a2. r4 | \break a4 f' e d | b g' g g  | a g f d |}
  \alternative { {e1} {c2 g'4 r4} }
  \bar "|."
}

voixb = \relative c' {

  c4 c c2 | c4 c c2 | c4 e a,4. b8 | c2. r4 | a a a a |
  g4 g g2 | f4 f f c' | c2 b4 r | c c c2 | c4 c c2 |
  c4 e a,4. b8 | c2. r4 | a4 a a a | g g g c8 c | b4 g a f | e2. r4 |
  
  \repeat volta 2 {g4 e' f g | g,2. r4 |  g4 e' f g | a,2. r4 | a4 f' g a | b2 b4 b  | c b a f |}
  \alternative { {g1} {e2 g4 r4} }
  \bar "|."
}

voixc = \relative c' {

  c4 c c2 | a4 a a2 | g4 g g4. f8 | e2. r4 | c' c c c | 
  c4 c c2 | c4 c c f, | g2 g4 r | c c c2 | a4 a a2 | 
  g4 g g4. f8 | e2. r4 | c'4 c c c | c c c g8 g | g4 b c a | g2. r4 |
  
  \repeat volta 2 {g2. g4 | g2. g8 g |  g2. g4  | a2. a8 a | a2. a4 | b1~ | b4 b a a |}
  \alternative { {g1} {c2 g'4 r4} }
  \bar "|."
}


\new StaffGroup <<
  \new Staff {\voixa}
  \new Staff {\voixb}
  \new Staff {\voixc}
>>



\score{
\new StaffGroup <<
  \new Staff  \unfoldRepeats{\voixa}
  \new Staff  \unfoldRepeats{\voixb}
  \new Staff  \unfoldRepeats{\voixc}
>>

\midi{\tempo 4 =176}
}