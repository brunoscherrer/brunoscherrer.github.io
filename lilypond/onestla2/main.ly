indent = 0

global = { \key c \major  \numericTimeSignature  \time 4/4 }


melodie =  \relative c''{
  \partial 2 {\tuplet 3/2 {e4. d4 c8~}} |
  \repeat volta 2 {
    c1 |  r2 \tuplet 3/2 {e4. f4 g8~} |    g1 | r2 e4 f4  | \break 
    \tuplet 3/2 {g4. g4  g8~} \tuplet 3/2 {g4 g4. g8~} | \tuplet 3/2 {g4 f2}  \tuplet 3/2 {e4. f4 d8~}
    | d1 | r2  d4 e4 | \break
  f4 f8~ f4  f4 f8~|  f2 e4 d4 | 
  e4 e8~ e4  e4 e8~|  e2 d4 c4 | \break
    d4 d8~ d4 d4 d8~ | \tuplet 3/2 {d4 c2} \tuplet 3/2 { b4. d4 c8~} | 
    c2 r2 | r2 \tuplet 3/2 {e4. d4 c8 \laissezVibrer} | \break
  }
}

paroles = \lyricmode {
  On est là, on est là, même si Ma -- cron ne veut pas, nous on est là, pour l'hon -- neur des travail -- leurs et pour un monde meil -- leur, même si Ma -- cron n'veut pas, nous on est là
  }


voixa = \relative c''{
  \partial 2 r2 |
  b1 | c | d | d2 des |
  c1 | des | c | d |
  f1 | f | e | e |
d | d | c | b
}

voixb = \relative c''{
  \partial 2 r2 |
  g1 | a | b | b2 a |
  a1 | a | a | b |
  c1 | ees | c | c |
  c | b | a | aes
}

voixc = \relative c'{
  \partial 2 r2 |
  e1 | f | g | g |
  f | g | f | g |
  a1 | c | b | a |
  a | g | f | f
}

voixd = \relative c'{
  \partial 2 r2 |
  c1 | d | e | e |
  d | e | d | f |
  f1 | aes | g | fis |
f | e | d | des
  
}

harmonie = \chordmode{
  \partial 2 {r2} |
  \repeat volta 2 {
    c1:maj7  d:min7 | e:min7 e2:3-.5-.7 a:7 |
    d1:min7 | a:7 | d:min7 | g:7 |
    f:maj7 f:min7/aes | c/g fis:3-.5-.7 |
    f:maj7 e:min7 | d:min7 des:7  |
    }
}



\header {
  title = #(string-append "Carole Grosjean-360 comme devant (on est là)" ton )
  tagline =  ""
  composer = ""
}




\score {
   <<
     \new ChordNames="accords" { \transpose c \noteCibleTransposition{  \harmonie      }    }
%     \new Staff="Melody" {
     \new Voice = "m"  { \transpose c \noteCibleTransposition{\global \melodie } }
     \new Lyrics = "paroles" \lyricsto "m" { \paroles  }
     \new Voice = "v1" { \transpose c \noteCibleTransposition{\global \voixa } }
     \new Voice = "v2" { \transpose c \noteCibleTransposition{\global \voixb } }
     \new Voice = "v3" { \transpose c \noteCibleTransposition{\global \voixc } }
     \new Voice = "v4" { \transpose c \noteCibleTransposition{\global \voixd } }
%}
   >>
    \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   }}
}



\markup{
  Réharmonisation dédiée à Mme Grandjean, députée de Meurthe-et-Moselle,
}
\markup{
  rapportrice du projet de loi sur la réforme des retraites,
}
\markup{
  prétendant avoir une vision ''très 360'' du sujet,
}
\markup{
  ayant participé à bloquer (avec son groupe LREM) une enquête parlementaire
}
\markup{
  sur l'insincérité de l'étude d'impact.
  }