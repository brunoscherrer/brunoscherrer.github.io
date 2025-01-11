indent = 0

melodie =  \transpose c a {

  \relative c'{

  \key ees \major
  \numericTimeSignature
  \time 7/8
  \mark \markup \box \bold {Intro}
  \repeat unfold 16 { r2 r4. }
  \mark \markup \box \bold {A}
  c2~  c4. |  c2~ c8 c4 | d2~ d8 d4 | d2~ d8 d4 | ees2~ ees8 ees4 | e2~ e8 e4 | f2~ f8 f4 | fis4 fis4  fis8 fis4 |
  g2 r4. | r2 r8 a4 | bes2~ bes8 bes4 | b2~ b8 b4 | c2~ c8~ c4~ | c2 b4. | c2 r4. | r4. c4 c4  |
  \mark \markup \box \bold {B}
  c4 bes4.~ bes4 | bes4 bes4 bes4. | bes4 a4. a4 | a4 aes8~ aes2 |
  g2~ g8 c4 | c4 f,8~ f4 f4 | e2~ e8 e4 | f2~ f8 b,4 | c4. c4. c8~ | c4 r4 r4. |
  \mark \markup \box \bold {C}
  f2~ f8 f4 | f2~ f8 f4 | g2~ g8 g4 | a2~ a8 a4 | bes2~ bes8 bes4 | b2~ b8 b4 | c2~ c8 c4 | d2~ d8 d4 | ees2 r4. | r2 r8 ees4 |
  \mark \markup \box \bold {D}
  d2~ d8 c4 | d2~ d8 d4 | b2 r8 r4 | r4 r8 c4 c4 | c4 bes4.~ bes4 | bes4 aes8~ aes2 |
  aes4 g8~ g2  | g2~ g8 f4 | f4 ees8~ ees2 | d4 d4~ d8 c4 | c2 r4. | r2 r4. |
}
}



harmonie =  \chordmode{
  \transpose c a {
  \time 7/8
  \tuplet 8/7 {				%
    c1:min f1:min/c | bes1/d ees1 | c1:5+.7 f1/a | g1:7/b c1:min  \break
    g1:sus ees1/g | d1/fis des1/f | g1:7/f c1/e | d1:3-.5-.7/f g1:7 |  \break

    c1:min aes1/c | d1:3-.5-.7/c g1:7/b | \break
    c1:min c1:7/bes | f1:min/aes fis1:dim7  | g1 fis1:dim7/g | \break
    g1:min g1:7/f | c1:7/e g1:7/d 
    c1:min c1:5+ \break |
    
    d1:3-.5-.7 c1:7 | f1:7 b1:dim7 | \break
    c1:7 des1:maj7 | c1:7 b1:dim7 | c1 | c1:5+.7 | \break
    
    f1 bes1/d | ees1 c1:dim7 | \break
    bes1:min d1:dim7 | c1:min g1 | c1:min d1:7 | \break
    e1:3-.5-.7 f1:dim7 | g1:7/f | } c4.:7/e c2:min/ees | \tuplet 8/7 { bes1/d aes1/c |
    b1:dim7 a:3-.5-.7 | g1:7 | s1 | c1:min | s1
								     }
  }
}

pa = \lyricmode {
  %\repeat unfold 11 {\skip 1} 
What power are you who from be -- low
has made me rise un -- wil -- ling -- ly and slow
from beds of e -- ver -- las -- ting snow?
Don't you see   how stiff I am  sti -- ff and won -- drous old
far, fa -- r un -- fit to bear the bit -- ter cold?
 I can scar -- cely move or draw my breath
 can scar -- cely move or draw my breath
 Let me free -- eeze a -- gain 
 let me free -- eeze a -- gain to death
 let me free -- eeze a -- gain to death
 
}



\header {
  title = #(string-append "Chanson froide réchauffée (d'après Cold Song)" ton )
  tagline =  ""
  composer = "H. Purcell (arr. BS)"
}



\score{
  <<
    \new ChordNames {
      \transpose c \noteCibleTransposition{
	\harmonie
      }
    }
    \new Voice = "one" { 
      \transpose c \noteCibleTransposition {
	\melodie
      }
    }
    \new Lyrics \lyricsto "one" {\set fontSize = #-1
      \pa
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




