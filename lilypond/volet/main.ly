indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 3/4
  \repeat volta 2 {
    \mark \markup {\box \bold A}
    c2 \p c4  | c4 b a8 b8~ | b2 g8 e8~ | e2. | \break
  c'2~ c8 c | c4 d c8 b8~ | b2 g8 e8~ | e2. | \break
  bes'2 bes4 | bes a g | f2 d8 bes~ | bes2~ bes4 | \break
    d4. ees4. | c2. | r2. | r \break}
  \mark \markup {\box \bold B}
  des'2 \mf des4  | des4 c bes8 c8~ | c2 aes8 f8~ | f2. | \break
  r4 des' des | des ees des8 c8~ | c2 aes8 f'8~ | f2. | \break
  b,2 b4 | b ais gis | fis2 dis8 b'8~ | b2. | \break
  b4. a4.  | a4 r2 | r2. | r2.
}



harmonie =  \chordmode{
  \repeat volta 2 {
  d2.:min7 | s | c:maj7 | s
  d2.:min7 | s | c:maj7 | s
  ees:maj7 | s | bes:maj7 | s
  aes:maj7.9 | s | s | s
}
  ees:min7 | s | des:maj7 | s
  ees:min7 | s | des:maj7 | s
  e:maj7  | s | b:maj7 | s
  a:maj7 | s | s | s
}



\header {
  title = #(string-append "Coucher de soleil (derrière un volet bloqué)" ton )
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

\markup{
  \column {
  \line { A:  II / I / II / I // IV / I // IV }
  \line { B:  II / I / II / I // IV / I // IV }
}
}