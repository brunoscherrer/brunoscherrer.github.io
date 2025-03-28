indent = 0

melodie =  \relative c''{
  \key bes \major
  \numericTimeSignature
  \mark\markup{\box \bold A}
  \time 3/4
  r2.\mf | r2. | r2. | r2.  \break
    r8 g bes a fis ees | \grace{ees} d2 r8 cis8 | e2 e8 bes'8 | ees,2 r4 | \break
    r8 g bes a fis ees | \grace{ees} d2 r8 cis8 | e2 e8 bes'8 | d2 r4 | \break 
  \mark\markup{\box \bold B}
  d8 bes4 g g16 gis | a2. | c8 bes4 g g16 gis | a2. | \break
  g4\< a bes | r8 d4.\f d4~ |
  \time 2/4
  d8 d4.  a16\mf bes a g a bes a g | \break

  \mark\markup{\box \bold A'}
  \time 3/4
  r2. | r2. | r2. | r2.  \break
    r8 g bes a fis ees | \grace{ees} d2 r8 cis8 | e2 e8 bes'8 | ees,2 r4 | \break
  r8 g bes a fis ees | \grace{ees} d2 r8 cis8 | e2 e8 bes'8 | ees2 r4 | \break

  \key b \major
  \mark\markup{\box \bold C}
  \time 4/4
  \repeat volta 2 {
  cis4\f b8 cis b4 gis16 fis gis8 | cis4 b8 gis dis' cis b gis | \repeat tremolo 3 {fis32 gis} fis16 gis8 fis8 dis2 |  \repeat tremolo 3 {fis32 gis} fis16gis8 fis dis2 | \break
  cis'4 b8 cis b4 gis16 fis gis8 | cis4 b8 gis dis' cis b gis | <fis ais>4 <gis cis>8 <fis ais> <dis gis>4 <cis fis>4 |
  r8 <fis, ais> <gis cis> <ais dis> <cis fis> <dis gis> <fis ais> <gis cis> }
}

harmonie =  \chordmode{  

  \repeat unfold 6 {
    g2.:min9 | f:min9
  }
  ees:maj7 | f:maj7 | g:min7 | bes4:maj7 bes:6 bes
  g:min g:min/ges g:min/f | s8 ees4.:maj7 s4
  \time 2/4 | s2 s2

  \repeat unfold 6 {
    g2.:min9 | f:min9
  }
  \repeat volta 2 {
  e1:maj7 | s | b | s |
  e:maj7 | cis:7 | fis:7 | s 
  }
}



\header {
  title = #(string-append "Satirikiki" ton )
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




