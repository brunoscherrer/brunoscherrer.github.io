indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 4/4
  \mark \markup \box \bold A

  \repeat volta 2 {
  e2 \tuplet 3/2 {e8( f e} \tuplet 3/2 {d c) d(} \tuplet 3/2 {e f gis,~} gis2.) | r4 a b c | \tuplet 3/2 {d4 d c} \tuplet 3/2 {d c e~} | \break
  e2 \tuplet 3/2 {e8( f e} \tuplet 3/2 {d c) d(} \tuplet 3/2 {e f gis,~} gis2.) | r4 a b c | \tuplet 3/2 {d4 d c} a2 | \break
}
  \alternative {
    {r4 <f a> <g b> <a c> | <b d>2 <c e>4 <d f> | <c e>2 <b d>2 | <a c>2. <e a>4 | <a d>1 | r1 \break}
    {r4 <f a> <g b> <a c> | <b d>2 <a c>4 <b d> | <c ees>2 <as c>2 | <bes d>2 <f bes> | <a cis>1 | r1 \break}
  }
  
  \mark \markup \box \bold B
  \repeat volta 2 {
  a'4 \tuplet 3/2 {bes8 a g}   a4 g   fis4 \tuplet 3/2 {d4 fis8}   r2 
  a4 \tuplet 3/2 {bes8 a g}   a4 g   fis4 \tuplet 3/2 {d4 b8}   r2 \break
  \tuplet 3/2 {g'4 a8} \tuplet 3/2 {g f g~}   g2  | \tuplet 3/2 {f4 g8}  \tuplet 3/2 {f d f~}   f4 \tuplet 3/2 {d4 c8~}  
  c1   r1 \break
}
\mark \markup \box \bold C
   e2 \tuplet 3/2 {e8( f e} \tuplet 3/2 {d c) d(} \tuplet 3/2 {e f gis,~} gis2.) | r4 a b c | \tuplet 3/2 {d4 d c} \tuplet 3/2 {d c e~} | \break
  e2 \tuplet 3/2 {e8( f e} \tuplet 3/2 {d c) d(} \tuplet 3/2 {e f gis,~} gis2.) | r4 a b c | \tuplet 3/2 {d4 d c} a2 | \break

  r4 <f a> <g b> <a c> | <b d>2 <c e>4 <d f> | <c e>2 <b d>2 | <a c>2. <e a>4 | <g c>1 | r1 \break
  
}



harmonie =  \chordmode{  
  \time 4/4
  % A
  \repeat volta 2 {
    \repeat unfold 2 {
      a1:min7   a:3-.7+/gis   a:min7/g   a:min6/fis   
    }
  }
  \alternative {
    { f:maj7   g:7   e:7/gis   a:min7   bes:maj7  s  }
    { f:maj7   g:7   aes:maj7   bes:maj7   a:maj7  s  }
  }
  % B
  \repeat volta 2 {
    bes2:maj7    s   g:maj7   s  bes2:maj7    s   g:maj7   s  
    ees2:maj7    s   bes:maj7   s   aes2:maj7    s   s   s
  }
  % C
  \repeat unfold 2 {
      a1:min7   a:3-.7+/gis   a:min7/g   a:min6/fis   
    }
  f:maj7   g:7   e:7/gis   a:min7   aes:maj7   s s s
}




\header {
  title = #(string-append "Croisière sur le Styx" ton )
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




