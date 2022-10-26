indent = 0

#(set-default-paper-size "a4" 'landscape)

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 4/4
  \override TupletBracket.bracket-visibility = ##t
  b4 fis'32 fis cis b a'8~ a16 \grace c g e8 e16 a8 fis16 | % %\break
  \tuplet 3/2 {g16 c f,} a8 \tuplet 3/2 {e16 r d} c'8~ \tuplet 5/4 {c \grace c a g f d} | %\break
  cis8. d32 g e2. | %%\break
  c32 e d f  e g, f' d  \tuplet 3/2 {a'16 c e,} \tuplet 5/4 {e32 f e d a} \tuplet 7/4 {bes16 c c d d e f} \tuplet 7/4 {a g, g d' f, f e} %\break
  b'2  \tuplet 3/2 {  \tuplet 5/4 {b16 cis cis b d} \tuplet 5/4 {f a, a bes cis} \tuplet 6/4 {e a bes f c g} } %%\break
  a4~ a16 a'8.~ a8 a8~ a8. a,16~ | %\break
  a4 b'~ b16 cis,8. cis8 e~ |
  e8. cis16~ cis4 \tuplet 3/2 { \tuplet 5/4 { b16 c c a d } \tuplet 5/4 { ees g, g a f} \tuplet 6/4 {e g g f f d'} } | %\break
  cis1~ |
  cis!4 b8 b32 a gis d' \tuplet 3/2 {e,16 b' a} \tuplet 5/4 {cis32 a a b gis} \tuplet 5/4 {r16 a gis f e} | %\break
  \tuplet 5/4 {gis'16 fis cis e fis,} \tuplet 5/4 {gis'16 fis cis e fis,~} fis2~ | 
  fis2 gis'32[ a gis16] gis32[ a gis16]  gis[ b,32 a'] fis cis b' fis | %\break
  r8 fis32[ gis e b] r8 r8    fis'32[ gis e b] r8 r8  fis'32 gis e b |
  \tuplet 3/2 {a'4 gis8[ fis] \tuplet 7/4 {e'4 fis, fis8 b gis} c16[ b a a] \tuplet 5/4 { gis16 a fis e e } } | %\break
  fis4 fis,32 b b a b8~  b16 \grace cis b fis8~ fis16 gis8 b,16 |
  \tuplet 3/2 { c16 bes' f} ees'8 \tuplet 3/2 { bes16 r bes } c8~ \tuplet 5/4 {c8 \grace ees aes, d ges bes,}  | %\break
  ees 8. des32 f c2. |
  c32 e d f e g, f' d \tuplet 3/2 {a'16 c f,} \tuplet 5/4 { e32[ f e d a] } \tuplet 7/4 { bes16 c c d d e f} \tuplet 7/4 {a g, g d f f e} | %\break
  b'2 \tuplet 3/2 {  \tuplet 5/4 {b16 cis cis b d} \tuplet 5/4 {f a, a bes cis} \tuplet 6/4 {e a bes f c g}  } |
  a4~ a16 a'8.~ a8 a8~ a8. a,16~ | %\break
  a4 b4~ b16 cis8.~ cis8 e ~ |
  e8. cis16~ cis4 \tuplet 3/2 {  \tuplet 5/4 {b16 c c a d} \tuplet 5/4 {ees g, g a g} \tuplet 6/4 {e g g f f bes}   } | %\break
  b1~ |
  b4 a8 a32 g fis c' \tuplet 3/2 {d,16 a' g} \tuplet 5/4 {b32 g g a fis} \tuplet 5/4 {r16 b e, a fis} | %\break
  \tuplet 5/4 { fis'16 e b d e,} \tuplet 5/4 { fis'16 e b d e,~} e2 |
  r8 \tuplet 5/4 {r32 fis g c b} \tuplet 5/4 {fis' g e a fis} g[ fis fis e] \tuplet 11/8 {d'[ a a b c e b b c g, a']} \tuplet 11/8 {b[ e, e g g d' fis, fis a e b]} | %\break
  \tuplet 3/2 { a'4 c, c} g'2
 \tuplet 3/2 { \tuplet 5/4 {r16 ees[ bes' aes f]} \tuplet 5/4 {f[ g ees bes aes']} \tuplet 6/4 {c bes bes aes aes f} }  \tuplet 11/8 {bes32 ges ges aes f des des ees g, aes' f } \tuplet 11/8 { f ees ges f des ees aes des, ges f, ees} | %\break
  c'1 \bar "|." 
}



harmonie =  \chordmode{  
  \repeat unfold 4 {g1:2 | bes:2}
  \repeat unfold 7 {d:2}
  ges1:2 | ges:2 | bes:2 | g1:2 | bes:2 | g1:2 | bes:2
  \repeat unfold 5 {c:2}
  des2:2 b:2
  aes1:2
}



\header {
  title = #(string-append "The Black Page #1" ton )
  tagline =  ""
  composer = "Frank Zappa"
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
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 1/8     )   } }
}




