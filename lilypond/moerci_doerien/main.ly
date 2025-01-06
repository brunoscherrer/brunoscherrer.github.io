indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 5/4
  \mark \markup \box \bold A
  \repeat volta 2 {
    <g c>2. \tuplet 3/2 {bes8 g f} ees4 | f4 \tuplet 3/2 {c4 ees8} r2.
    \tuplet 3/2 {r4 c8~} \tuplet 3/2 {c4 ees8~} \tuplet 3/2 {ees4 fis8} a4 r  | r2. r2 | \break
    <g c>2. \tuplet 3/2 {bes8 g f} ees4 | f4 \tuplet 3/2 {c4 ees8} r2.
    \tuplet 3/2 {r4 c8~} \tuplet 3/2 {c4 ees8~} \tuplet 3/2 {ees4 fis8} a4 fis!8 ees  | fis fis ees c ees4 c8 bes c4 | \break
    <ges' c>2. \tuplet 3/2 {bes8 ges! f} ees4 | f4 \tuplet 3/2 {c4 ees8} r2.
    \tuplet 3/2 {r4 c8~} \tuplet 3/2 {c4 ees8~} \tuplet 3/2 {ees4 fis8} a4 fis!8 ees  | fis fis ees c ees4 c8 bes c4 | \break
    <g' c>2. \tuplet 3/2 {bes8 g! f} ees4 | f4 \tuplet 3/2 {c4 ees8} r2.
    \tuplet 3/2 {r4 ees8~} \tuplet 3/2 {ees4 d8~} \tuplet 3/2 {d4 des8} c4 r  | r2. r2 | \break
    g''8. f ees des  \tuplet 3/2 {fis4 e d} | f8. ees des b \tuplet 3/2 {ees4 d des} | c4 r2 r2 | r2. r2
  }
  \repeat volta 2 {
    \mark \markup \box \bold {solos}
    \repeat percent 4 { <bes ees>2. <a d>2  <bes ees>2. <c f>2 } \break
    \repeat percent 4 { <des ges>2. <c f>2  <des ges>2. <ees aes>2 } \break
    \repeat percent 4 { <e a>2. <dis gis>2  <e a>2. <fis b>2 } \break
    \repeat percent 4 { <g c>2. <fis b>2  <g c>2. <a d>2 } \break
  }
    
}



harmonie =  \chordmode{  
  \time 5/4
  \repeat unfold 8 {c2.:min7 c2:min6/ees}
  \repeat unfold 4 {ees2.:min7 ees2:min6/fis}
  \repeat unfold 4 {c2.:min7 c2:min6/ees}
  a2.:5+ aes2:5+ | g2.:5+ ges2:5+   \repeat unfold 2 {c2.:min7 c2:min6/ees}
  \repeat unfold 8 {c2.:min7 c2:min6/ees}
  \repeat unfold 8 {ees2.:min7 ees2:min6/fis}
  \repeat unfold 8 {fis2.:min7 fis2:min6/a}
  \repeat unfold 8 {a2.:min7 a2:min6/c}
}



\header {
  title = #(string-append "Moerci Doerien" ton )
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




