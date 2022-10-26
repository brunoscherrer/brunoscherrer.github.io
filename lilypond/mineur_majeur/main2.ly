indent = 0



melodiea = {
g'8 c' ees' g' c' ees' aes' c' ees' bes' c' ees' aes' b d' g'  
  b  d' g' b d' f' b d' f' bes d' f' bes d' g' bes  
  d'  aes' bes d' g'  a c'  f' a c' f' a c' ees' a c' ees'  
  aes  c' ees' aes c' f' aes c' g' aes c' fis' a c' ees' a  
  c'  d' a b c' b a c' f g c' f g c' f g  
  c'  f g b f g b f g b f g b f g
}

melodieb = {
  c'8  g aes c' g aes d'  g aes  ees' g aes e'4. d'  c' g
  c'8  g aes c' g aes d' g aes  ees'  g aes d'4. c' g e
  c'8 f aes   c' f aes    cis' f aes   ees' f aes   cis' f aes  c' f aes  bes f4  aes8 f4
  b8 f aes  b f aes  d' f aes  f' f aes   g' b d'  g' b d'  ges' b d'   f' b d' 
}

melodiec = {
 e'8  g c' e' g c' f' g c' g' g c' f'  g b  e' g  b  d' g b c' g b f' bes c' e' bes c' d' bes c'4   bes8 c'  f'  a c'  e' a c' d' a c'4  a8 c'  f' aes  c' e'  
  aes  c' d' aes c'4  aes8 c' e' g c' d' g c' d' g  b4  g8 b
}

melodied = {
  <g c' e'>4. <g c' e'>  <g c' f'>   <g c' g'>
  <g b  f'>  <g b  e'> <g b  d'> <g b  c'>
  <bes c' f'> <bes c' e'> <bes c' d'> <bes c'>
  <a c' f'>  <a c' e'> <a c'> a
  <aes c' f'> <aes c' e'> <aes c' d'> <aes c'>
  <f g b e'> <f g b d'> <f g b> <f g> 
}


maingauchec = {
  
<c' c,>2.~ | <c c,>8 c8 c,4 c'8 c, | <b' b,>2. | b,4. b'4. | <bes bes,>2.~ | bes,4. bes'4. |
<a a,>2.~ | a,4. a'4. | <aes aes,>2.~ | aes,4. aes'4. | <g g,>2. | g,4. g'4. |

}
  

maingauched = {

<< {r8 g' c r c g r c g r c g } \\ {c,2.~ c2.} >> 
<< {r8 g' b r b g r b g r b g } \\ {b,2.~ b2.} >> 
<< {r8 f' bes r bes f r bes f r bes f } \\ {bes,2.~ bes2.} >>
<< {r8 f' a r a f r a f r a f } \\ {a,2.~ a2.} >>
<< {r8 f' aes r aes f r aes f r aes f } \\ {aes,2.~ aes2.} >>
   << {r8 f' g r g f r g f r g f } \\ {g,2.~ g2.} >>
   
 }

melodie =  {
  \key ees \major
  \numericTimeSignature
  \time 6/8
  \transpose c c' {
    \repeat volta 2 { \melodiea } \break
    \melodieb \break
    \key c \major
    \repeat volta 2 { \melodied } 
  }
  <e' g' c''>2. \fermata \break
}

maingauche =  \relative c{
  \key ees \major
  \numericTimeSignature
  \time 6/8
  \repeat volta 2 {
  c2.~ c | b~ b | bes~ bes | a~ a | aes~ aes | ges~ ges | g~ g | g~ g |
  }
  aes4. ees' aes ees | c8 g' c4 c8 g8~ g8 c8 g4 c8 g8 | aes,4. ees' aes ees | c8 g' c4 c8 g8~ g8 c8 g4 c8 g8 | 
  <des des,>2.~ | <des des,>2.~ | <des des,>2. | <<{des4 des4. des8}\\ {des,2.}>>
  <d'! d,!>2. | d!4. d,! | <g' g,>2. | g4. g, |
  \repeat volta 2 {
    \key c \major
    \maingauched
  }
  <c g' c>2.
}


harmonie =  \chordmode{  
 
}





\header {
  title = #(string-append "Mineur/Majeur" ton )
  tagline =  ""
  composer = "B. Scherrer"
}





