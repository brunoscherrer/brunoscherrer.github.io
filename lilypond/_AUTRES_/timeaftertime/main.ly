indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 4/4
  \mark \markup \box {Intro}
  r4 b a d | b2 a | g4. g8 g2~ | g4 c g4. ges8 | \break
  f4. f8 f2~ | f4 b f4. e8 | e1 | r4 c e g | \break
  c1~ | c2 d | g,1~ | g4 c, e g \break
  c1~ | c2 e | g,1~ | g1 \break
  \mark \markup \box {Thème}
  e2 c4. d8 | c2. d4 | e a g e | c2. d4 | \break
  e b' a e | d2. c4 | d1~ | d2. e4 | \break
  c'2 a4. b8 | a2. b4 | a g fis g | e2 bes'4 a | \break
  g f e f | g2. f4 | d1~ | d4 b c d | \break
  e2 c4. d8 | c2. d4 | e a g e | c2. d4 | \break
  e b' a e | d2. c4 | c'1~ | c2. c4 | \break
  e2 c4. d8 | c2. d4 | d e c4. d8 | c2. d4 | \break
  d e c d | c2 b | c1~ | c2 r2 | \break
  
}




harmonie =  \chordmode{  
  f1:maj7 | g:9 | e:min7 | a2:min7 ees:9 |
  d1:min7 | g:7.9- | c:maj7 | c:6 |
  a2:min a:min7/g | fis:3-.5-.7 f:min6 | e1:min7 | c/e
  a:min7 | d:9 | g:sus | g:9

  c1:maj7 | d2:min7 g:sus | c1:maj7 | d2:min7 g4:sus g:9 |
  c1:maj7 | a:min7/c | b:3-.5-.7 | e:7.9- |
  a2:min a:min/g | fis2:3-.5-.7 b:7.9- | e1:min7 | a:7.9- |
  d:min7 | e2:3-.5-.7 a:5+.7 | d1:9 | g2.:sus g4:7.9-

  c1:maj7 | d2:min7 g:sus | c1:maj7 | d2:min7 g4:sus g:9 |
  c1:maj7 | g2:min7 c:7 | f1:maj7 | f2:min7  f:min6 |
  c1:6/g |  fis2:3-.5-.7 f:min7 | e1:min7 | d2:sus d:7 |
  c1:6/g | d2:min7 g:7.9- | c1:6 | s
}



\header {
  title = #(string-append "Time After Time" ton )
  tagline =  ""
  composer = "J. Styne"
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




