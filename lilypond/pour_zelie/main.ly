indent = 0

melodie =  \relative c'{
  
  \numericTimeSignature
  \time 3/4
  
\repeat volta 2
  {
  %A
  \mark \markup {\box \bold A}
  \key c \major
  ees4. c8 ees bes' | a2~ a8 g16 f | ees4 f4. c8 | ees2 r4 | \break
  ees4. c8 ees bes' | a2~ a8 g16 f | g4 bes4. d8 | d4. c4. | \break
  d,4 f a8 g8~ | g2~ g8 f16 ees | d4 a4. bes8 | g2. | \break
  d'4 f a8 g~ | g2~ g8 a | bes2~ bes8 c | <<{d4 c a}\\ {fis2.} >> | \break
}
\set Score.currentBarNumber = #33
%B
  \mark \markup {\box \bold B}
  %\key aes \major
  ees4. c8 ees aes | g4 f ees8 c8~  | c2~ c8 g8| bes2. | \break
  ees4. c8 ees aes | g4 f ees   | des2 c4 | b4. <f g>4. | \break
  %\key c \major
  f4 aes c8 <<{b8~}\\ {f8~}>> | << {b4.( g4.)}\\ {f2.} >> | <<{c'4( ees aes)}\\ {c,2.}>> |<< {g'4( ges f)}\\ {b,2.} >>  | \break

  %C
  \mark \markup {\box \bold C}
  e4. c8 e a | aes4.( aes,8) g'8 f | e2 b8   c8 | a4 <c e>4 a16( b c d | \break
  e4.) c8 e a | fis4 g a | gis4 a b8 e8~ | e2 e8 c'8~( | \break
  c4 b a8 e~ | e2.) | r8 d16( c d e  a,4  b8 | c2.) \break
  << {c8 a c a c a}\\ {f8 r f r f r }>> | <<{d'8 b d b d b}\\ {g8 r g r g r} >> | <<{e'8 c e c e c}\\ {a8 r a r a r}>> | <<{d4 b g}\\ {g2.}>> | \break

  
  %D
  \mark \markup {\box \bold D} 
  \repeat volta 2 {e4. c8 e a | aes4.( aes,8)  g'8 f | e2 b8  c8 | a4 <a c e>4 a16( b c d)| \break}
  \set Score.currentBarNumber = #69
  \repeat volta 2 {ees4. c8 ees! bes' | aes4.( aes,8)  g'8 f | e!2 b!8  c8 | a4 <a c e>  a16( b c d) | \break}
  
  
}

maingauche = \relative c {
  \time 3/4
  \numericTimeSignature

  \repeat volta 2 {
	%A
    \key c \major
  %\key bes \major
  \repeat unfold 2 {
    c8 ees bes'4 bes | f,8 c' <g' a>4 <g a> | c,8 ees bes'4 bes | f,8 c' <g' a>2 |
  }
  bes,8 f' a2  | ees,8  bes' g'2  | bes,8 d f2  | ees,8  bes' d2 |
  bes8 f' a2  | ees,8  bes' g'2  | ees,8  bes' fis'2  | d,8 a' d2  |
}
  %B
  %\key aes \major
  aes8 ees' g4 g |  ees,8  bes' g'4 g |  aes,8 ees' g4. r8 |  ees,8  bes' g'2 |
  aes,8 ees' g4 g |  ees,8  bes' g'4 g | des,8 aes' f'4 f | g,,4 d' b' |
  %\key c \major
  f8 aes c4 d | g,4 b d | f,8 aes c4 d | g,4 b d | 

  %C
  c8 e b'4 b | f,8 c' g'4 g | c,8 e8 b'4 r4 | f,8 c' g'2 |
  c,8 e b'4 b | b,,8( fis' b dis fis4 )   | e,8( b' e gis a b | e2.) |
  a,,8 e' <b' c>2 | g,8 d' <a' b>2 | fis,8 d' <g a>2 | f,8 c' <g' a>2 |
  <d f a c>2. | <e g b d> | <f a c e> | <g b d f> |

  %D
  \repeat volta 2 {c,8 e b'4 b | f,8 c' g'4 g | c,8 e8 b'4 r4 | f,8 c' g'2 |}
  \repeat volta 2 {c,8 ees bes'4 bes! | f,8 c' g'4 g | c,8 e8 b'4 r4 | f,8 c' g'2 |}
}


harmonie =  \chordmode{
  \repeat volta 2
  {
  c2.:min7 | f:7 | c:min7 | f:7 |
  c2.:min7 | f:7 | c:min7 | f:7 |
  bes:maj7 | ees:maj7 | bes:maj7 | ees:maj7
  bes:maj7 | ees:maj7 | ees:min7 | d:7
}

  {
     aes:maj7 | ees:maj7 | aes:maj7 | ees:maj7 |
    aes:maj7 | ees:maj7 | des | g:7 |
    f:min7 | g:7 | f:min7 | g:7 |
     c:maj7 | f:min7 | c:maj7 | f:maj7 |
     c:maj7 | b:7 | e | e |
     a:min7 | g | fis:3-.5-.7 | f:maj7 |
     d:min7 | e:min7 | f:maj7 | g:7 |
   }

  \repeat volta 2 { c:maj7 | f:min7 | c:maj7 | f:maj7 |}
  \repeat volta 2 { c:min7 | f:min7 | c:maj7 | f:maj7 |}
  
}



\header {
  title = #(string-append "Valse pour Zélie" ton )
  tagline =  ""
  composer = "B. Scherrer"
}





