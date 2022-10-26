indent = 0



melodie =  {
  \key ees \major
  \numericTimeSignature
  \time 4/4
  \relative c''' {
    \repeat volta 2 {
      g2 aes4 bes | aes g g2 | f g4 aes | g f f2 | ees f4 g | fis ees d c | c1 | b1  
    } \break
    c2 d4 ees | e d c g | c2 d4 ees | d c g e | c'2 des4 ees | des c bes aes | b2 d4 f | g2 ges4 f |
  \break
  %\key c \major
    \repeat volta 2 {
      e2 f4 g| f e d c | f e d c  | \break f e c a | f' e d c | e d b g |
    } 
    c1 \fermata \break
    }
}



harmonie =  \chordmode{  
  \repeat volta 2 {
    c1:min7  | b:min7  | bes:sus6  | a:3-.5-.7 | aes:maj7 | fis:3-.5-.7- | g:5+ | g:7 |
  }
  aes:maj7 | c:maj7.9 | aes:maj7 | c | des:maj7 | s | d:3-.5-.7- | g:7
  \repeat volta 2 {
    c:maj7.9 | g:7/b | bes:sus2 | f/a | aes2:sus6 aes:5+ | g:6 g:7 | 
  }
  c1
}





\header {
  title = #(string-append "Mineur/Majeur" ton )
  tagline =  ""
  composer = "B. Scherrer"
}





