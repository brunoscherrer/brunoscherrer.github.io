indent = 0





guita =  \relative c'{
  \key g \major
  \numericTimeSignature
  \time 3/4
  \set stringNumberOrientations = #'(down)
  \override StringNumber.transparent = ##t
  \partial 2 {e8 b fis' b,}
  \repeat volta 2 {
    g'8 b, g fis'8 g b,  | a' b, c\3 g'8 a b,| b' b, a' b, b' b, | c' b, b' b, a' b, | \break
    g' b, g fis'8 g b, | fis' b, a  e' fis b, | e b g e g b  |
  }
  \alternative  {
    {g'4   e8 b fis' b,}
    {r8 <gis\4 b'>4 <c\4 e'> <b\4 d'>8}
  } \break
  c'8 b, ees\3 a,\4 c'8 b, | b' e,\2 d\3 gis,\4 b' e,\2 | a b, c\3 fis, a' b, | g' b, g e  g' b, | \break
  \repeat unfold 2 {\tuplet 3/2 {b' b, d\3} \tuplet 3/2 {a' b, c\3} \tuplet 3/2 {g' b, ais}  |  \tuplet 3/2 {g' b, ais} \tuplet 3/2 {fis' b, a} \tuplet 3/2 {fis' b, a}} \break
  \tuplet 3/2 {b'8 b, d\3} \tuplet 3/2 {b' b, d\3} \tuplet 3/2 {c' b, d\3} |  \tuplet 3/2 {a' b, c\3}  \tuplet 3/2 {a' b, c\3} \tuplet 3/2 {b' b, c\3} |  \tuplet 3/2 {g' b, ais} \tuplet 3/2 {g' b, ais} \tuplet 3/2 {a' b, ais} | \tuplet 3/2 {fis' b, a} fis'2 \break
  b4 b, d\3  b' b, d\3    a' b, c\3  a' b, c\3    g' b, ais g' b, ais    fis' b, a  <a b fis'>2.
}


guitb =  \relative c {
  \set stringNumberOrientations = #'(up)
  \override StringNumber.transparent = ##t
  \key g \major
  \partial 2 {s2}
  \repeat volta 2 {
    e2. | fis2. | g4\4 fis g\4 | a\4 g\4 fis | e2. | b2 dis4 | e,2. |
  }
  \alternative {
    {<e' g b> 4 s2}
    {e,2. }
  }
  a'2.\4 | gis\4 | fis | e
  \repeat unfold 2 {e4\5 d\5 c | e b dis |}
  e4\5 aes2\4 | d,4\5 ges2\4 | c,4\5 e2\4 | b4 dis2
  e2.\5 aes\4 | d,\5 ges\4 | c,\5 e\4 | b dis
}



\header {
  title = #(string-append "Sérénade" ton )
  tagline =  ""
  composer = "B. Scherrer"
}



\score {
  <<
    \new Staff { \clef "G_8" << {\guita} \\ {\guitb} >> }
    \new TabStaff { << {\guita} \\ {\guitb} >> }
  >>
}





