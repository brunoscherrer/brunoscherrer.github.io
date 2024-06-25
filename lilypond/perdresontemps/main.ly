indent = 0

melodie =  \relative c''{
  \key aes \major
  \numericTimeSignature
  \mark \markup {\box \bold 4/4}
  \time 4/4
  \repeat volta 2 {
  \parenthesize c4 r ees8 c ees c~ | c1 | r2 ees8 c ees f~ | f ees~ ees c bes4 g8 c~ | \break
  c4 r ees8 c ees c~ | c1 | r2 ees8 c ees f~ | f ees~ ees c ees4 f8 f~ | \break
  f4 r  bes8 g bes g~ | g1 | r2 bes8 g bes c~ | c bes~ bes g f4 ees8 f~ | \break
  f4 r ees8 c ees c~ | c2. bes8 g | f bes g2. | r1 | \break
}
  \repeat volta 2 {
  c2 r8 d ees f~ | f2 r8 ees f g~ | g2 r8 f g b~ | b4. g8~ g8 b8~ b8 c | \break
  c2 r8 bes g bes~ | bes2 r8 g f g~ | g1 | r8 c bes g f ees d b \break
}
  \mark \markup {\box \bold 7/8}
  \time 7/8
  \repeat volta 2 {
  c4 r ees8[ c ees]  | c2. r8 | r2 ees8[ c ees]  | f4 ees c8[ bes g]  | \break
  c4 r ees8[ c ees]  | c2. r8 | r2 ees8[ c ees]  | f4 ees c8[ ees f]  | \break
  f4 r  bes8[ g bes]  | g2. r8 | r2 bes8[ g bes]  | c4 bes g8[ f ees]  | \break
  f4 r ees8[ c ees]  | c2 r8 bes8[ g] | f[ bes] g2 r8 | r2 r4 r8 | \break
}
  \repeat volta 2 {
    c2 r8 d[ ees] | f2 r8 ees[ f]  | g2 r8 f[ g]  | b4. g4 b4  | \break
    c2 r8 bes[ g] | bes2 r8 g[ f]  | g2 r4 r8 | r4 c8[ bes] g[ f ees]  \break
  }
  \mark \markup {\box \bold 3/4}
  \time 3/4
  \repeat volta 2 {
  c2  \tuplet 3/2 {ees8 c ees}  | c2.  | r2 \tuplet 3/2 {ees8 c ees}  | \tuplet 3/2 {f4 ees8~} \tuplet 3/2{ees c8 bes} \tuplet 3/2 {bes g c~}  | \break
  c2 \tuplet 3/2 {ees8 c ees}  | c2.  | r2 \tuplet 3/2 {ees8 c ees}  | \tuplet 3/2 {f4 ees8~} \tuplet 3/2 {ees ees c} \tuplet 3/2 {ees f f~}  | \break
  f2 \tuplet 3/2 { bes8 g bes}  | g2.  | r2 \tuplet 3/2 {bes8 g bes}  | \tuplet 3/2 {c4 bes8~} \tuplet 3/2 {bes g f} \tuplet 3/2 {f ees f~}  | \break
  f2 \tuplet 3/2 { ees8 c ees}  | c2 \tuplet 3/2 {r8 bes g} | \tuplet 3/2{f bes g8~} g2 | r2. | \break
}
  \repeat volta 2 {
    c2 \tuplet 3/2 {r8 d ees} | f2 \tuplet 3/2 {r8 ees f}  | g2 \tuplet 3/2 {r8 f g}  | b4 g4 \tuplet 3/2 {b4 c8~}  | \break
    c2 \tuplet 3/2 {r8 bes g} | bes2 \tuplet 3/2 {r8 g f}  | g2. | r4 \tuplet 3/2 {c8 bes g} \tuplet 3/2 {f ees c~}  \break
  }
}



harmonie =  \chordmode{  
\repeat volta 2 {
  c1:sus | des:maj7 | ees:6 | des:maj7 |
  c:sus | des:maj7 | ees:6 | f:min7 |
  g:min7 | aes:maj7 | bes: | b:3-.5-.7- |
  c:sus | des:maj7 | ees:6 | des:maj7 |
}
\repeat volta 2 {
  aes:maj7 | a:m7.5- | bes:6 | b:3-.5-.7- |
  c:m7 | des:maj7 | aes:maj7 | g:7.9- |
}
\tuplet 8/7 {
\repeat volta 2 {
  c1:sus | des:maj7 | ees:6 | des:maj7 |
  c:sus | des:maj7 | ees:6 | f:min7 |
  g:min7 | aes:maj7 | bes: | b:3-.5-.7- |
  c:sus | des:maj7 | ees:6 | des:maj7 |
}
\repeat volta 2 {
  aes:maj7 | a:m7.5- | bes:6 | b:3-.5-.7- |
  c:m7 | des:maj7 | aes:maj7 | g:7.9- |
}
}
\repeat volta 2 {
  c2.:sus | des:maj7 | ees:6 | des:maj7 |
  c:sus | des:maj7 | ees:6 | f:min7 |
  g:min7 | aes:maj7 | bes: | b:3-.5-.7- |
  c:sus | des:maj7 | ees:6 | des:maj7 |
}
\repeat volta 2 {
  aes:maj7 | a:m7.5- | bes:6 | b:3-.5-.7- |
  c:m7 | des:maj7 | aes:maj7 | g:7.9- |
}
}



\header {
  title = #(string-append "Perdre son temps" ton )
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




