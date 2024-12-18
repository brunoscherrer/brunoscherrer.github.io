indent = 0

melodie =  \relative c''{
  \key ees \major
  \numericTimeSignature
  \time 5/4

  \mark \markup \box \bold A

  \repeat volta 2 {
  
  r8. g c d \tuplet 3/2 {ees4 ees ees}
  f8. ees d c  bes8 g f bes
   g8 r8 r1 | r2. r2 \break
  
  r8. g c d \tuplet 3/2 {ees4 ees ees}
  f8. ees d c  bes8 g e bes'
  aes8 r8 r1 |  r2. r2 \break

  r8. aes c d \tuplet 3/2 {ees4 ees ees}
  \tuplet 3/2 {f ees f} r2.
  r8. aes, c d \tuplet 3/2 {ees4 ees ees}
  \tuplet 3/2 {f ees f} r2. \break

  r8. aes, c d \tuplet 3/2 {ees4 ees ees}
  \tuplet 3/2 {f ees d~(} d4~   d8 b aes d |
  c2. bes4. aes8 | g2.) r2 \break
  }

  \mark \markup \box \bold B

   {r8. bes ees f} \tuplet 3/2 {ges4 ges ges}
   {aes8. ges f ees}  c!8 bes  aes c!
   bes2. r2 | r2. r2 \break
  
   {r8. bes ees f} \tuplet 3/2 {ges4 ges ges}
   {aes8. ges f ees}  des8 bes  g des'
   ces2. r2 | r2. r2 \break
  

   {r8. ces ees f} \tuplet 3/2 {ges4 ges ges}
  \tuplet 3/2 {aes ges aes~} aes4 r2
   {r8. ces, ees f} \tuplet 3/2 {ges4 ges ges}
  \tuplet 3/2 {aes ges aes~} aes4 r2 \break

   {r8. ces, ees f} \tuplet 3/2 {ges4 ges ges}
  \tuplet 3/2 {aes ges f~(} f4  f8 d b f' |
  ees2. d4. c8 | bes2. aes2)
  
}


harmonie =  \chordmode{  
  \time 5/4
  \repeat volta 2 {
  c2.:min7 bes2:7/d | ees2.:maj7 f2:min7 |  c2.:min7 bes2:7/d |  ees2.:maj7 f2:min7 |
  c2.:min7 bes2:7/d | ees2.:maj7 e2:3-.5-.7 |  f2.:min7 g2:min7 | aes2.:maj7 bes2:7  
  f2.:min7 g2:min7 | aes2.:maj7 bes2:7 |f2.:min7 g2:min7 | aes2.:maj7 bes2:7 |
  f2.:min7 g2:min7 | aes2.:maj7 b2:dim7 | c2.:min7 bes2:7/d | ees2.:maj7 f2:min7 |
}
  ees2.:min7 f2:min7 | ges2.:maj7 aes2:7 |  ees2.:min7 f2:min7 |  ges2.:maj7 aes2:7 |
   ees2.:min7 f2:min7 | ges2.:maj7 g2:3-.5-.7 |  aes2.:min7 bes2:min7 | ces2.:maj7 des2:7  
  aes2.:min7 bes2:min7 | ces2.:maj7 des2:7 |aes2.:min7 bes2:min7 | ces2.:maj7 des2:7 |
  aes2.:min7 bes2:min7 | ces2.:maj7 b2:dim7 | c2.:min7 bes2:7/d | ees2.:maj7 f2:min7 |
}




\header {
  title = #(string-append "Cinq à sept" ton )
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




