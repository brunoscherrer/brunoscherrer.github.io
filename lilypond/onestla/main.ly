indent = 0

global = { \key c \major  \numericTimeSignature  \time 4/4 }


melodieb =  \relative c''{
  \partial 2 {\tuplet 3/2 {e4. d4 c8~}} |
  \repeat volta 2 {
    c1 |  r2 \tuplet 3/2 {e4. f4 g8~} | 
    g1 | r2 e4 f4  | \break 
\tuplet 3/2 {g4. g4  g8~} \tuplet 3/2 {g4 g4. g8~} | \tuplet 3/2 {g4 f2}  \tuplet 3/2 {e4. f4 d8~} | d1 | r2  d4 e4 | \break
  f4 f8~ f4  f4 f8~|  f2 e4 d4 | 
  e4 e8~ e4  e4 e8~|  e2 d4 c4 | \break
    d4 d8~ d4 d4 d8~ | \tuplet 3/2 {d4 c2} \tuplet 3/2 { b4. d4 c8~} |
    c2 r2 | r2 \tuplet 3/2 {e4. d4 c8 \laissezVibrer} | \break
  }
}

paroles = \lyricmode {
  On est là, on est là, même si Ma -- cron ne veut pas, nous on est là, pour l'hon -- neur des travail -- leurs et pour un monde meil -- leur, même si Ma -- cron n'veut pas, nous on est là
  }


harmonieb = \chordmode{
  \partial 2 {r2} |
  \repeat volta 2 {
    c1:maj7  d:min7 | e:min7 e2:3-.5-.7 a:7 |
  d1:min7 a:7 | d:min7 g:7 | f:maj7 f:min7/aes | c/g fis:3-.5-.7 |
    f:maj7 e:min7 | d:min7 des:7  |
    }
}



\header {
  title = #(string-append "On est là (même si Macron ne veut pas)" ton )
  tagline =  ""
  composer = "Trad. stade de foot manif / Arr. B Scherrer"
}




\score {
   <<
     \new ChordNames="accords" {      \transpose c \noteCibleTransposition{  \harmonieb      }    }
%     \new Staff="Melody" {
       \new Voice = "m"  { \transpose c \noteCibleTransposition{ \global \melodieb }}
       \new Lyrics = "paroles" \lyricsto "m" { \paroles  }
%     }
   >>
    \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   }}
}

