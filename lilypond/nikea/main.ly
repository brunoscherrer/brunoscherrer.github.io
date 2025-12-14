indent = 0

melodie =  \relative c''{
  \key ees \major
  \numericTimeSignature
  \time 7/8
  
  \mark \markup \box \bold {A}
  
  \repeat volta 2 {
    r2 c8[ d ees] | f4 g c, f8 | ees2~ ees8[ d c] | b2. r8 | \break
    r2 c8[ d ees] | f4 g c, f8 | ees2~ ees8[ d c] | \grace cis d2. r8 | \break
    c2~ c8[ d ees] | f4 g b, f'8 | ees2~ ees8[ f g] | bes4 c e, bes'8 | \break
  }
  \alternative{
    {aes2~ aes8[ g f] | d2~ d4. |}
    {aes'2 g8[ aes b] | d4 g d ees8  | c2~ c4. | r2 r4. \break}
  }

  \mark \markup \box \bold {B}
  r8 bes,4 c des4 | ees4 des c bes8 | des2~ des8[ c bes] | a2 r4. | \break
  r8 bes4 c des4 | ees4 des c bes8 | des2~ des8[ c des] | c2 r4. | \break

  \mark \markup \box \bold {C}
  bes4 bes8 f4 bes4 | bes2 des8[ c bes]
  bes4 bes8 f4 bes4 | bes2 d!8[ c bes] \break
  bes4 bes8 f4 bes4 | bes2 des8[ c bes] 
  bes4 bes8 ges4 bes4 | bes2 r4. | \break
  r8 e[ ges g] a[ bes c] | des4 c bes a8 |  c4 a8 f4 ees | f2 r4. \break 
  r8 f[ ges a] bes[ c des] | ees4 des c bes8 | b4 aes g f8 | g4 f ees d8 \break

  \mark \markup \box \bold {A'}
  c2~ c8[ d ees] | f4 g c, f8 | ees2~ ees8[ d c] | b2. r8 | \break
  r2 c8[ d ees] | f4 g c, f8 | ees2~ ees8[ d c] | \grace cis d2. r8 | \break
  c2~ c8[ d ees] | f4 g b, f'8 | ees2~ ees8[ f g] | bes4 c e, bes'8 | \break
  aes8 g4 aes b4 | d4 g4 d ees8  | c2 r4. | r2 r4. \break

}

melodieb =  \relative c'{
  \key ees \major
  \numericTimeSignature
  \time 7/8
  \repeat volta 2 {
    <c c'>2 <c b'>4. |  <c bes'!>2 <c a'>4. | <c aes'!>2 <c g'>4. | f4 g aes b8 | 
    <c, c'>2 <c b'>4. |  <c bes'!>2 <c a'>4. | <c aes'!>2 <c g'>4. | f4 g aes b8 | 
    aes,2 a4. | bes2 b4. | c2 d4. | ees2 e4. | 
  }
  \alternative{
    {f2 fis4. | g2.~ g8 } 
    {f2 g4. | aes2 b4. | c2 b4. | bes2 a4. } 
  }
  bes2 a4. | aes2 g4. | ges2 f4. | ees2 f4. | 
  bes2 a4. | aes2 g4. | ges2 f4. | ees2 f4. | 
  des2~ des4.~ |  des2~ des4. | c2~ c4.~ | c2~ c4. 
  d2~ d4.~ | d2~ d4. | ees2~ ees4.~ | ees2~ ees4. 
  e2~ e4.~ | e2~ e4. |  f2~ f4.~ | f2~ f4. | 
  fis2~ fis4.~ | fis2~ fis4. |
  g2~ g4.~ | g2~ g4. | 

  <c, c'>2 <c b'>4. |  <c bes'!>2 <c a'>4. | <c aes'!>2 <c g'>4. | f4 g aes b8 | 
    <c, c'>2 <c b'>4. |  <c bes'!>2 <c a'>4. | <c aes'!>2 <c g'>4. | f4 g aes b8 | 
    aes,2 a4. | bes2 b4. | c2 d4. | ees2 e4. | 
  f8 g4 aes b4 | d4 g4 d ees8  | c2 r4. | r2 r4.
}
  
harmonie =  \chordmode{
  \repeat volta 2 {
    c2:min c4.:3-.7+ |  c2:min7  c4.:min6 | c2:3-.6- c4.:min | f2:min7 g4.:7 
    c2:min c4.:3-.7+ |  c2:min7  c4.:min6 | c2:3-.6- c4.:min | f2:min7 g4.:7
    aes2:maj7 a4.:3-.5-.7 | bes2:maj7 g4.:7/b | c2:min bes4./d | ees2:maj7 e4.:3-.5-.7
  }
  \alternative {
    { f2:min7 fis4.:3-.5-.7- | g2:7 s4. }
    { f2:min7  g4.:7 | aes2:maj7 g4.:7/b | c2:min c4.:3-.7+ |  c2:min7  c4.:min6}
  }

  bes2:min bes4.:3-.7+ |  bes2:min7  bes4.:min6 | bes2:3-.6- bes4.:min | ees2:min7 f4.:7
  bes2:min bes4.:3-.7+ |  bes2:min7  bes4.:min6 | bes2:3-.6- bes4.:min | ees2:min7 s4. |
  des2:6.7+ s4. | s2 s4. | c2:4.7 s4. | s2 s4. |
  bes2/d s4. | s2 s4. | ees2:min7 s4. | s2 s4. | 
  e2:3-.5-.7- s4. | s2 s4. | f2:7 s4. | s2 s4. |
  ges2:maj7 s4. | s2 s4. g2:7 s4. | s2 s4.

  c2:min c4.:3-.7+ |  c2:min7  c4.:min6 | c2:3-.6- c4.:min | f2:min7 g4.:7 
  c2:min c4.:3-.7+ |  c2:min7  c4.:min6 | c2:3-.6- c4.:min | f2:min7 g4.:7
  aes2:maj7 a4.:3-.5-.7 | bes2:maj7 g4.:7/b | c2:min bes4./d | ees2:maj7 e4.:3-.5-.7
  f4.:min7 g2:7 | aes2:maj7 g4.:7/b | c2:min s4. |  s2 s4.
  
}



\header {
  title = #(string-append "Opération Nikea (pour Pascal)" ton )
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
%     \new Staff { 
 %     \transpose c \noteCibleTransposition {
 %     \melodieb
 %     }
  %  }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




