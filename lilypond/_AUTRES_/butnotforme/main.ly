indent = 0

melodie =  \relative c''{
  \key ees \major
  \numericTimeSignature
  \time 4/4
  \mark \markup \box {Intro}
  bes4 bes bes bes | bes aes aes2 | g4 g g g | g f f g |  \break
  ees2 bes'2 | \tuplet 3/2 {r4 d, ees} f4 g | ees2 c'2~ | c2  r2 | \break
  d4 d d d | d c c2 | b4 b b b | b a a b | \break
  g2 d'2 |  \tuplet 3/2 {r4 fis, g} a4  b | g2 r4 g | fis g aes! g | \break
  bes4. aes8 g4 f | bes4. aes8 g4 f | bes1  | r4 c ees d | \break
  bes4. aes8 g4 f | bes4. aes8 g4 f | ees1~ | ees4^\fermata f g f  | \break
  \mark \markup \box {Thème}
  \repeat volta 2 {
    g2 f4 ees~ | ees f g f | g1 | r4 f g f \break
    g2 f4 ees~ | ees f g f | g1 | r4 g aes bes | \break
  }
  \alternative {
    { b2 c4 ees | r f, g aes! | a2 bes!4 ees | r ees, f g | \break
     g2 aes4 ees' | r c aes! g | f1 | r4 f g f | \break }
    { b2 c4 ees | r f, g aes! | a2 bes4 ees | r ees c aes! | \break
     g1 | f1 | ees1 | r4 f g f  | \break }
  }
  
    
}



harmonie =  \chordmode{  
  ees2:maj7 d:5+.7 | des:9 c:5+.7 | f:min7 g:min7 | aes:maj7 bes:7.9 |
  ees:6 s | f:min7 bes:7 | ees:6.9 s | a:min7 d:7 |
  g:maj7  fis:5+.7 | f:9 e:5+.7 | a:min7 b:min7 | c:maj7 d:9 |
  g:6 s | a:min7 d:7 | g:6 s | g:6 e:dim7 |
  f:min7 s | bes:7 s | ees:6 s | c:min7 s |
  f:min7 s | bes:7 s | ees:6 s | f4:min7 f:min7 bes2:7 |
  \repeat volta 2 {
    ees2:maj7 s | f:min7 bes:7 | ees2:maj7 s | s s |
    f:9 s | bes:sus bes:7 | ees:9 s | bes:min7 ees:sus
  }
  \alternative {
    {  aes1:maj7 | des:9 | ees:maj7 | s |
       f:min7 | s2 c:5+.7 | f1:min7 | bes:7 }
    {aes1:maj7 | des:9 | ees:maj7 | g2:5+.7 c:5+.7 |
       f1:min9 | bes:7 | ees:maj7 | f2:min7 bes:7}
  }


  
}



\header {
  title = #(string-append "But Not For Me" ton )
  tagline =  ""
  composer = "G. Gershwin / I. Gershwin"
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




