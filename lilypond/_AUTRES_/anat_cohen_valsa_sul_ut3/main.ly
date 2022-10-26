indent = 0

aa = {
  r2 fis4~ |
    fis4. g8 a fis | dis fis b, ais b g' | fis4 e8 b4.~ | b8 ais b d c gis | b4. a8 e eis | \break
    fis gis b a gis a |     c4. b8 ais b | 
    d c b c e4~ |  e8 ees d dis fis4~ | fis8 e dis e g fis | \break
    eis fis a4. g8 | 
    fis g b a gis a | 
    ais cis e fis g4~ | g8 fis eis fis \tuplet 3/2 {a gis g} | fis2. | \break
%
    r2 a,4~ | a4. g8 fis a | dis, fis c ais b g' | fis4 e8 b4.~ | 
    b8 ais b d c gis | 
    b4. a8 e eis | \break
    fis gis b a gis a | c4. b8 ais b | 
    d c b c e4~ | 
    e8 ees d dis fis4~ | 
    fis8 e dis e g fis | \break eis fis a4. g8 | fis g b a gis16 a d8 ~| 
    d cis c a f c | 
  ais b c cis dis fis |
  }

melodiea =  \relative c'{
 
  \mark \markup {\box A}
  
  \repeat volta 2 {
    \aa
  }
  \alternative {
    {e2. | }
    {e8 r4. r4 | }
  }\break

}

melodieab = \relative c'{
  \mark \markup {\box A'}
  \aa
  e2. | \break
  \repeat unfold 6 {r2.} \break
}

melodieac = \relative c'{
  \mark \markup {\box A''}
  \aa
  \repeat unfold 2 {
    d'8 cis c a f c |  ais b c cis dis fis |
    }
  e8 r8 r2 | \break
  
}


melodieb = \relative c'{

  \mark \markup {\box B}
  \repeat volta 2 {
  | r4 e ees | d8 eis fis a c d | e dis d eis fis b~ | b eis, fis a~ \tuplet 3/2 {a gis g} | 
  fis e d cis c b | a g fis e dis fis |  \break
  c fis b, ais b g' | fis4. e8 b4~ | 
  b8 ais b d c gis |
				%
  b a gis a c4 | fis,8 b ais b e dis | \break
  d ees fis4. e8 | 
  dis e a g fis g | ais16 cis e fis g2~ | g16 fis e cis~ cis2 | r2. | \break
				%
  | r4 e, ees | 
  d8 eis fis a c d |
  e dis d eis fis b | r eis, fis a r eis | 
fis b r eis, fis a | r dis, fis b r dis, | \break fis a r b, dis a' | r b, dis g4 ais,8 | 
  b e8 g8 fis e d | c4. a8 gis a | c e a g fis e | \break
  g fis e a,4 g8 | 
e4 e8 g fis e | bes cis e g fis e | dis fis a bes b dis | e2. | r2. \break
}
}

melodiec = \relative c'{

  \mark \markup {\box C}
				% f c g d
  \repeat volta 2 {
    r2.
    r8 e dis e b' e |  gis fis e b a gis | e dis e b' e dis | cis4 r8 f,8 fis gis |
  a8 cis a' gis fis4 | \break
  r8 gis,8 a ais b e | b' a gis4 r8 fis8 |
  e dis fis e dis cis~ | cis  b ais b gis fis |
  e dis e g gis ais | \break
  b d dis g gis b | dis4 r8 b8 ais gis | e'4 r8 dis8 cis b |
  ais gis g e dis ais | b dis fis eis4 gis,8 | a cis e dis4 cis8 | \break
b4 fis'8 e4 b'8 | gis fis e b gis fis |
e dis e b' e dis | cis4 r8 f, fis gis | a cis a' gis fis4 | \break r8 gis, a ais b e | 
  b a gis4 r8 fis | e dis d e gis b | e' dis d4 r8 b | gis e dis d b gis |
  e dis  c4~ c8 e8 | fis gis a b c4~ | c8 gis f' dis~ dis4 | r8 fis cis c b fis'  | e2. \break
  }
}


ha = \chordmode{
     s2 dis4:3-.5- |
    s2. | s | e:min | e:min7 | a:min | b:7 |
    e:min | e2:7  a2.:min  b2.:7 s4 | s4 e2:min | s2. |
    fis | s | b:7 |
    
    s2 dis4:3-.5- s2. | s2. | e:min |
    e:min7  a:min | b:7 | e:min |
    e2:7  a2.:min b2.:7 s4 | s4 e2:min | s2. | f:7 |
    b:7
  
}

harmoniea =  \chordmode{  
  
  \repeat volta 2 {
    \ha
  }
  \alternative{
    {e2.:min |  }
    {e2.:min | }
    }    
}

harmonieab =  \chordmode{  
  
  \ha
  {e2. |  } 
  \repeat unfold 6 {s2.} 
   
}
harmonieac =  \chordmode{  
  
  \ha

  \repeat unfold 2 {
    f2.:7 | b:7 
  }

  e2.:min  
  
   
}




harmonieb= \chordmode {

\repeat volta 2 {
  s2.
  | d:7 | s | g | s | fis:3-.5-.7 |
  b:7 | e:m | e:7  a2:min   b2.:7 s4 |
  s4 e2:min | s2. | fis:7 |
  s2. | s2. | s | d:7 | s
  | g2. | s |   fis2.:3-.5-.7
				%b2.:7  | s2. | e:min | s  | b:7 |
  b:7 | e:m | e:7  a2.:min |  s2.|%b2.:7  |
  e2.:min | s | fis:7 | b:7 | e:m | s
  }

}

harmoniec= \chordmode {

\repeat volta 2 {
  s2.
  s2. | e2. | s2. | fis:min | s2  b2.:7 s4  | s4 e2 | s2. |
  s2. | s2. | s | gis2.:min7 | s | s |
  gis4.:min7 cis:7 | fis:min b:7 |
  e2. s | s | fis:min  | s2 b2.:7 s4 | s4  e2.
  s2 | s2. | s  | s4 a2.:min s4 f2.:7
  b2.:7 e s4 
  }
}




melodie = {
  
  \time 3/4

  \clef alto
  \key e \minor
  \melodiea

  \melodieb

  \melodieab

  \key e \major
  \melodiec

  \key e \minor
  \melodieac

  \bar "|."
}

harmonie = {

  \harmoniea

  \harmonieb

  \harmonieab

  \harmoniec

  \harmonieac

  

}



\header {
  title = #(string-append "Valsa do sul" ton )
  tagline =  ""
  composer = "Anat Cohen"
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




