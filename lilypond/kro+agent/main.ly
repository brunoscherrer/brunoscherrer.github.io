indent = 0

melodieintro =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 5/4
  \mark \markup {\box \bold Intro}
  \repeat unfold 7 {r4 r1} | r2. e4 d
}

melodiea =  \relative c''{
  %\key c \major
  \numericTimeSignature
  \time 5/4
  \partial 2 e4 d
  \mark \markup {\box \bold KRO-A}
  \repeat volta 2 {
  b2. a4 g | a4. b fis2  | g4. e8~ e2. | r2. d'4 cis | \break
  b2. a4 g | a4. b fis2 | e4~ e1 | r2. e4 fis | \break
  g2. fis4 g | a2. g4 a | b2. c8 b a g | fis4. e d4 e~ \break
  | e4~ e1 |
  \repeat unfold 2 { r1 r4 | } |
}
  \alternative{
    {r2. e'4 d |}
    {r1 r4}
  } \break
}

melodieb = \relative c''{
  %\time 5/4
  \mark \markup {\box \bold B}
  bes2. a4 g | a4. bes c4 d | d4. c4. a2~ | a4~ a1 |
  aes2. g4 f | g4. aes bes4 c | b4. g'4. fis4 f4~ | f1 e4 |
  ees2. d4 c | d4. ees f4 g | g4. aes4. des,2~ |
  des2. c4 bes | b4~ b1 | \repeat unfold 2 {r1 r4 |} r2. e4 d 
}

melodie = {
  \repeat volta 2 {
    \melodiea
    \melodieb
  }
}

basseintro = \relative c,{
  \clef bass
  \key c \major
  \numericTimeSignature
  \time 5/4
  \repeat unfold 2 {
    e4. b' d4 e | d,4. a' c4 d | c,4. g' b4 c  | c,4. g' fis4 e~ \break
  }
}
  
bassea = \relative c,{
  \clef bass
  \key c \major
  \numericTimeSignature
  \time 5/4
  \partial 2 s2
  \repeat volta 2 {
    \basseintro 
    e4. b' d4 e | fis,4. a d4 e | g,4. b d4 e | fis4. e d4 b | \break
    c,4. g'4. d'4 e | c,4. g'4. c4 d | c,4. g'4. b4 c | 
  }
  \alternative{
    {c,4. g' fis4 e | }
    {c4 e g fis e| } \break
  }
}

basseb = \relative c{
  %\time 5/4
  g d' g bes d |  g,, d' g bes d | fis,, c' fis a c | fis,, c' fis a c | \break
  f,, c' f aes c | f,, c' f aes c | g, d' g b d |  g,, d' g b d  \break
  c,, g' d' ees g | c,, g' d' ees g | des, aes' ees' f aes | des,, aes' ees' f aes | \break
  g, d' g b d |  g,, d' g b c |  g, d' g a b | g,4. g' fis4 d |  
}

basse = {
  \repeat volta 2 {
    \bassea
    \basseb
  }
}


harmonieintro =  \chordmode{
  \time 5/4
  \repeat unfold 2 { \tuplet 4/5 {
    e1:min7 | d | c:maj7 | s |
  }}
}

harmoniea =  \chordmode{  
  \time 5/4
  \partial 2 s2
  \repeat volta 2 {
    \tuplet 4/5 {
      e1:min7 | d | c:maj7 | s |
      e:min7 | d | c:maj7 | s |
      e:min | fis:3-.5-.7 | g:maj7 | b:min |
      c:maj7 | s | s |
    }
  }
  \alternative {
    \tuplet 4/5 {s | }
    \tuplet 4/5 {s | }
  }
}


harmonieb =  \chordmode{  
  \tuplet 4/5 {
    g:min | s | fis:3-.5- | s |
    f:min | s | g:7 | s |
    c:min | s | cis:maj7 | s |
    g:7 | s | s | s |
  }
}

harmonie = {
  \repeat volta 2 {
    \harmoniea
    \harmonieb
  }
}



melodiec =  \relative c''{
  \mark \markup {\box \bold Agent-C}
  %\key c \minor
%  \numericTimeSignature
%  \time 5/4
  \repeat volta 2 {
  aes8 g8~ g1 | fis8 g-. r1 | 
  aes8 g8~ g1 | c8 g-. r1 | \break
  aes8 g8~ g1 | ees8 des-. r1 |
  c4~ c1 | r4 r1 | \break
}
  \mark \markup {\box \bold D}
  aes'8 g8~ g1 | fis8 g8~ g1 | 
  aes8 g8~ g1 | c8 g8~ g1 | \break
  aes8 g8~ g1 | ees8 des8~ des1 |
  c4~ c1 | r4 r1 | \break
}


  
bassec = \relative c{
  \clef bass
  \key c \major
  \numericTimeSignature
  \time 5/4
\repeat volta 2 {\repeat percent 2 {
  c4. g' bes4 c | c,4. g' bes8 bes g4 | 
}
  des4. g bes4 c | des,4. g bes4 g4 | 
  c,4. g' bes4 c | c,4. g' bes8 bes g4 | 
}
}


harmoniec =  \chordmode{  
%  \time 5/4
  \tuplet 4/5 {
\repeat volta 2 {
    c1:min9 | s | s | s
    des:maj7 | s | c:min9 | s
    }
    f:min7 | fis:3-.5- | g:7.9- | aes:maj7 |
    ees:maj7 | des:maj7 | c:min9 | s
  }
}



\header {
  title = #(string-append "Kronembourg-Virus + Agent 000" ton )
  tagline =  ""
  composer = "B. Scherrer"
}



\score{
  <<
    \new ChordNames {
      \transpose c \noteCibleTransposition{
	%\harmonieintro
	\harmonie
	\harmoniec
      }
    }
    \new Staff {
      \transpose c \noteCibleTransposition{
	%\melodieintro
	\melodie
	\melodiec
      }
    }
%    \new Staff { 
%      \transpose c \noteCibleTransposition {
%	\basseintro
%	\basse
%      }
%    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




