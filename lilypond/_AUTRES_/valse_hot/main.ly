indent = 0

melodie =  \relative c''{
  \key aes \major
  \numericTimeSignature
  \time 3/4
  \mark \markup {\box Intro}
  bes8( ees bes des c4) |  bes8( ees bes des c4) |  bes8( ees bes des c4~ | c2) r4 |
  ees8( aes ees ges f4) |  ees8( aes ees ges f4) |  ees8( aes ees ges f4~ | f2) r4 |
  \mark \markup {\box Tune}
  \repeat volta 2 {
    aes,4( ees8 f g aes | bes c c ees f aes | g f ees f g4-.) | r2 f8( ees | 
    des ees f g f4-.) | r4 g8( f ees des | c des ees4-.) r | r e,8( f f' ees! |
    des c bes aes des4-.) | r4 e,8( aes bes aes | c4-.) r4 des~( | des c8 des a f |
    c'4-.) c-- aes!8( f | bes c des ees c g | bes aes aes g aes4-.) | r2. | 
  }
}



harmonie =  \chordmode{  
  \repeat unfold 3 { bes4:min ees:7 aes:maj7 }  s2.
  \repeat unfold 3 { ees4:min aes:7 des:maj7 }  s2.
  \repeat volta 2 {
    aes:maj7 | s | c:min | f:7 |
    bes:min | ees:7 | aes:maj7 | f:7.5+ |
    bes:min | des:min | c:min | f:7.5+ |
    bes:min | ees:7 | aes:maj7 | ees:7
  }
}



\header {
  title = #(string-append "Valse Hot" ton )
  tagline =  ""
  composer = "Sonny Rollins"
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
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 46     )   } }
}




