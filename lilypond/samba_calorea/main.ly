indent = 0

melodie =  \relative c'''{
  \numericTimeSignature
  \time 7/4
  \repeat volta 2 {
    g4 f8 ees f c4 ees a, c g8 | g'4 g4. bes4 a r8 r2 | \break
    g4 f8 ees f c4 ees a, c g8 | ees'4 es4. c4 c r8 r2 | \break
    e4 d8 b d b4 cis a b cis8 | e4 d8 b d b4 cis r8 r2 | \break
    <e g>4 <d fis>8 <b e> <d fis> <b d>4 <cis e> <a cis> <b d> <cis e>8 | <ees g>2~ {g8 ees16 c} ees4 r4 r2  \break
    g4 e8 b e b4 c a c e8 | g4 g4. b4 a r8 r2 | \break
    g4 e8 b e b4 c a b c8 |
    }\alternative { 
      {bes4. aes4. c4 r4 r2}
      {bes4. aes4. c4 r4 bes'8 g f ees}
    }
}

pont =  \relative c''{
    \numericTimeSignature
  \time 11/4
  \repeat volta 2 {
    f1~ f2.  r2  g8 f ees c |
    ees1~ ees2. r2 d8 ees d c | \break
    d1~ d2.  r2 d8 c bes g |
    c1~ c2.  r2 bes'8 g f ees | \break }
}

bassepont = \relative c{
  \clef bass
    \numericTimeSignature
  \time 11/4
  \repeat volta 2 {
  \repeat unfold 4 { 
  c4. ees8 r4 c4. f8 r4 c4. ees8 r4  bes4 c | 
  }}}

harmonie =  \chordmode{  
  \time 7/4
  \scaleDurations 7/4 {
    \repeat volta 2 {
    c2:min7  f:7 | c:min7  f:7 |c:min7  f:7 | c:min7  f:7 |
    e:min7  a:7 | e:min7  a:7 | e:min7  a:7 | aes:maj7  s
    c:maj7  f:maj7 |c:maj7  f:maj7 |c:maj7  f:maj7 | }
    \alternative {
      {aes:maj7.9  s}
      {aes:maj7.9  s}
      }
    
  }
}

harmoniepont =  \chordmode{  
  \time 11/4 
  \scaleDurations 11/4 {
  \repeat volta 2 {  bes2/c  s  | aes/c  s |
    g:min7/c  s | c:min7  s }
  }
}


\header {
  title = #(string-append "Samba Calor-é-a" ton )
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
}
\score{
  <<
  \new ChordNames {
      \transpose c \noteCibleTransposition{ \harmoniepont }
    }
  \new PianoStaff <<
    \new Staff="up" \transpose c \noteCibleTransposition{ \pont }
    \new Staff="down" \transpose c \noteCibleTransposition {   \bassepont }
  >>
  >>
}




