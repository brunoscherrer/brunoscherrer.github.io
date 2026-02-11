indent = 0


mela = \relative c'{
  bes8 f'16 bes bes f bes4. | r8 f16 bes bes f bes4. | r16 f bes c des ees  des8\trill c16 bes c a | bes8. c16 bes a bes4. |
  r8 f16 des' c des bes4. | r8 aes16 bes c des c8\trill bes16 aes ges f  | r8 ges16 aes bes c bes8\trill aes16 ges f ees |
}

melodie =  \relative c'{
  \key bes \minor
  \numericTimeSignature
  \time 6/8
  \partial 2. {r4. r8 f16 ees des c}
  \repeat volta 2 {
    \mela
    \time 3/8 f8 ges16 ees f des |
    \time 6/8 ees8 ees16 f ges bes r8 f16 ees des c
    \mela
    f8~ f16 ges f ges aes4. |
    \time 3/8 r4.
    \time 6/8
    r8 f16 des' des c des4. | r8 bes16 c des ees des8\trill c16 bes aes g | r8 g16 aes bes c bes8\trill aes16 g! f e |
    des8 c16 c' g bes aes4. | r8 ces,16 ces' g bes aes4. | r8 aes16 bes b des b!8\trill bes16 aes ges f | r8 f16 ges aes bes aes8 ges16 f ees d | b8 bes16 bes' f aes ges4. |
    r8 a,16 a' f aes ges4. | r8 ees16 fes ges a aes8 ges16 aes! a c | a8 ges16 a! c des c8\trill a!16 c des ees | r8 aes,16 des des aes des4. |
    r8 aes16 fes' ees fes des4. | r8 des16 ees fes ges fes!8\trill ees16 des c des | ees8~ ees16 fes c des ees4. | c8 des ees16 des ees4. | r2.
    des8~ des16 ees fes ees fes!4. | r2. | r2. | r2.
    r8 a, c des\trill c16 a! c des | ees8 fes16 des ees c des8\trill c16 a aes g | aes!8~ aes16 a g aes a8~ a16 c gis a! |
    c8~ c16 des a c des8~ des16 ees c des | ees8~ ees16 f d ees ges f ees des c bes | ees8\trill des16 c bes a ges f ees f ges a! |

    \mela
 \time 3/8 f8 ges16 ees f des |
    \time 6/8 ees8 ees16 f ges bes r8 f16 ees des c
    \mela
    f8 ges16 ees f des ees8 f16 ees des ces |
    \time 3/8 r4.
    \time 6/8
    \repeat unfold 2 {
      r8 des16 ees f ges f8 ees16 des c bes | r8 c16 des ees f ees8 des16 c bes a | bes4 des16 ees f4. |
    }
    \repeat unfold 2 {r8 c16 des ees f ees8 des16 c bes a | bes4 des16 ees f4. | }
    r8 c16 des ees f ees8 des16 c bes a 
    }
  }
}



harmonie =  \chordmode{  
  \partial 2. {s2.}

  \repeat volta 2 {
    
  \mark \markup \bold \box{A1}
  bes2.:min | bes:3-.7+/a | bes:min7/aes | g:3-.5-.7 \break
  ges:maj7 | f4.:min7 bes:min7 | ees:min7 aes:7 | des4.:maj7 | c:3-.5-.7 f:7 \break

  \mark \markup \bold \box{A2}
  bes2.:min | bes:3-.7+/a | bes:min7/aes | g:3-.5-.7 \break
  ges:maj7 | f4.:min7 bes:min7 | ees:min7 aes:7 | des aes:min | des:7 \break

  \mark \markup \bold \box{B}
  ges2.:maj7 |  g4.:3-.5-.7  g:3-.5-.7/f |  e:3-.5-.7- des:3-.5-.7-  | c:7 f:min7 | \break
  f2.:3-.5-.7 | f2.:3-.5-.7/ees | d4.:3-.5-.7- b:3-.5-.7+ | bes:7.9- ees:min7 | \break
  ees2.:3-.5-.7 | aes:7 | aes:7.9-/c | \break

  \mark \markup \bold \box{C}
  des:min7 | des:min7/ces | bes:3-.5-.7 | ees4.:3-.5-.7 a:7.11+ | \break
  aes2.:7.9- | aes2.:7.9- | a4.:maj7 a:3-.5-.7+ | \break
  a4.:maj7 a:3-.5-.7+ | des2.:7.9- |  des2.:7.9-  \break

  \mark \markup \bold \box{D}
  ges4.:min7 ges:min7/fes | ees2.:7.9- | aes4. a/g | \break
  aes/ges des:min/fes | ees:min7 ees:min7/des | c:3-.5-.7 f:7.9- \break

  \mark \markup \bold \box{A1}
  bes2.:min | bes:3-.7+/a | bes:min7/aes | g:3-.5-.7 \break
  ges:maj7 | f4.:min7 bes:min7 | ees:min7 aes:7 | des4.:maj7 | c:3-.5-.7 f:7 \break

  \mark \markup \bold \box{A2}
  bes2.:min | bes:3-.7+/a | bes:min7/aes | g:3-.5-.7 \break
  ges:maj7 | f4.:min7 bes:min7 | ees:min7 aes:7 | des aes:min | des:7 \break

  \mark \markup \bold \box{E}
  ges2.:maj7 | c4.:3-.5-.7 f:7  |  bes:min7 des:7 |  \break
  ges2.:maj7 | c4.:3-.5-.7 f:7  |  bes:min7 des:7 | \break

  \mark \markup \bold \box{F}
  c4.:3-.5-.7 f:7  |  bes:min7 des:7 | \break
  c4.:3-.5-.7 f:7  |  bes:min7 des:7 |
  c4.:3-.5-.7 f:7  |  

  }
}



\header {
  title = #(string-append "Dance of Fire" ton )
  tagline =  ""
  composer = "Aziza Mustafa Zadeh"
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




