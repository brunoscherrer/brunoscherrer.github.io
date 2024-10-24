indent = 0

accompagnement =  \relative c''{
  %\key c \major
  \numericTimeSignature
  \time 3/4
  \repeat volta 2 {
  \repeat unfold 2 {<c e>4 <d f> <e g> <bes d> <g c> <f g>}
  <c' e> <d f> <e g> <g bes> <f a> <d f> |
  <e g> <bes d>  <g c> <g bes> <f g>2 \break
}

  \repeat volta 2 {
    \repeat unfold 2 {<e' g>4 <f a> <g bes> <f a> <f a> <e g>}
  }
  \alternative {
    \repeat unfold 2 {<c e>4 <g c> <g c> <g bes> <f g>2 }
    \repeat unfold 2 {<ees' g>4 <c ees> <c ees> <bes d> <f bes>2}
  } \break
  
  \repeat volta 2 {
  <des' f>4 <ees g> <f aes> <c ees> <c ees> <bes des>
  <des f>4 <ees g> <f aes> <ees g> <f aes> <g bes>
  \repeat unfold 2 {
    <aes c> <ees g> <c ees> <bes ees> <aes c> <ees aes>
  }
  } \break
  
  <bes' des> <c ees> <des f>  <bes des> <ges bes> <des ges>
  <bes' des> <c ees> <des f> <c ees> <bes des> <c ees>
  \repeat unfold 2 { <des f> <bes des> <bes des> <aes c> <f aes>2 }
  <bes des>4 <c ees> <des f>  <bes des> <ges bes> <des ges>
  <cis' e!> <dis fis> <e gis> <dis fis> <cis e> <dis fis>
  <e g> <fis a> <g b> <fis a><e g> <fis a>
  <f! a> <g b> <f a> <e g> <d f> <c e> \break

  
 }

voix_b = \relative c'''{
  %\key c \major
  \numericTimeSignature
  \time 3/4
  \repeat volta 2 {
    g2~ g8 a   e4  r2 | r8  g-. g-.  g-.   g-.   a-.  d,2~  d8  c | d2. | r2. r2. r2.
  }

  \repeat volta 2 {f2~ f8  g f2. | f2~ f8  g  | a2~  a8  bes |}
  \alternative {
    {g2. | r2. r2. r2.}
    {a2. | r2. r2. r2.}
  }
				%
  \repeat volta 2 {
     g2~ g8  f16  ees  c8-. r8 r2 | r8  g'-.  g-.  g-.   g-.  f-.  aes4. g4   f16  ees |  bes4. c~ | c2. r2. r2.
   }
  
  ees2~ ees8 des | c2~ c8 bes | c2~ c8 des | ees2~ ees8 f | f2.~ | f2~ f8 aes | f2.  r
  ees2~ ees8 des | c2~ c8 bes | a2~ a8 gis | fis2~ fis8 e | fis2.~ | fis | f!~   f |
  
}
voix_a= \relative c''{
  %\key c \major
  \numericTimeSignature
  \time 3/4
  \repeat volta 2 {
    bes2~ bes8 c g4 r2 | r8 bes-.   bes-.  bes-.   bes-.   c-.  f,2~ f8  g  | f2. | r2. r2. r2.
  }
  
  \repeat volta 2 { a2~ a8  bes  a2. | a2~ a8 bes c2~ c8 d  |}
  \alternative {
    {c2. | r2. r2. r2. }
    { d2. | r2. r2. r2.}
  }
				%
  \repeat volta 2 {
    des2~ des8 c16 bes16 f8-. r8 r2 | r8 bes-.   bes-.  bes-.   bes-.   aes-.  c2~ c8  bes16 aes | g4. aes~ | aes2. r2. r2.
  }
  
  ges'2~ ges8 f | ges2~ ges8 f | ges2~ ges8 f | f2~ f8 des | c2.~ | c2~ c8 des | c2.  r
  ges'2~ ges8 f | ges2~ ges8 f | e2~ e8 dis | e2~ e8 fis | g2.~ |  g~ | g~ | g 
}


harmonie =  \chordmode{  
  \repeat volta 2 {
    c1.:7  s  bes:maj7  c:7 
  } \break

  \repeat volta 2 {
    f1.:maj7  s
  }
  \alternative {
    {c:7  s }
    {ees:maj7  s} \break
  } \break
  \repeat volta 2 {
    ees1.:7  s  aes:maj7  s 
  }
  ges1.:maj7  s  des:maj7  s \break 
  ges1.:maj7   a:maj7  g:maj7 g:7  \break
}



\header {
  title = #(string-append "Bolerototo" ton )
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
      \voix_b
      }
    }
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \voix_a
      }
    }
%    \new Staff { 
%      \transpose c \noteCibleTransposition {
%      \accompagnement
%      }
%    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 20    )   } }
}




