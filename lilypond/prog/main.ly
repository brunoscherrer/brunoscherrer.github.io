indent = 0


bassea = \relative c, {
  \time #'(3 3 3 3 2) 14/8
  c4 c'8 g bes c8 r ees r d r g, bes c |
  c,4 c'8 g bes c8 r f r ees r g, bes c |
  c,4 c'8 g bes c8 r ees r d r g, bes c |
  \time 12/8
  g' ees c  f d bes  ees c aes  d bes g | 
}

basseb = \relative c, {
  \time #'(3 3 3 3 2) 14/8
  ees4 ees'8 bes des ees8 r aes r g r bes, des ees8 |
  ees,4 ees'8 bes des ees8 r g r f r bes, des ees8 |
 ees,4 ees'8 bes des ees8 r aes r g r bes, des ees8 |
 \time 12/8
 bes' g ees   aes f des  g ees c   f d bes
}

maingauche = \relative c, {

  \repeat volta 2 {
    \key ees \major
    \repeat volta 2 { \bassea }
    %\key aes \major
    \repeat volta  2 { \basseb }
  }
  
  \key ees \major
  \repeat volta 2 {
    \time #'(3 3 3 3 3 2 3) 20/8
    \repeat unfold 4 {
      c4 ees8 ees4 f8 f4 g8 g4 bes8 bes8~ bes2  bes,8 bes c  |
    }
  }
}



silence =\relative c'{

  \time 14/8
  \repeat unfold 3 {r1 r2. |}
  \time 12/8
  r1.
  
}

ma = \relative c'{
  \time #'(3 3 3 3 2) 14/8
  c4 ees8 d g fis f bes g ees'4  c8 r c |
  ees4 d8 c f d ees c r8 r2 c8 |
  ees4 f8 d aes' g f ees r2 c8 d |
  \time 12/8
  ees g c, d ees g f ees d c bes g |
}

mb = \relative c''{
  \time #'(3 3 3 3 2) 14/8
  g' bes, ees    aes bes, ees   bes' bes, ees  aes bes, ees  g bes, |
  aes' des, ees   bes' des, ees   c' des, ees   bes' des, ees  aes des, | \break
  aes' c, ees   bes' c, ees   c' c, ees   bes' c, ees  aes c, |
  \time 12/8
  g' aes g    f ees c   f ees c    bes g f | \break
}


melodie =  \relative c'{

  \repeat volta 2 {
    \key ees \major 
    \repeat volta 2 { \ma } 

    %\key aes \major
    \repeat volta 2 { \mb }


  }
  
  \key ees \major
  \repeat volta 2 {
    g'4 f8 g4 c ees d c4~ c2 c8 d ees | 
    ees4 d8 c4 bes g f g4~ g2 g8 f ees | \break
    aes4 g8 f4 ees bes' g f4~ f2 f8 g d | 
    ees4 c8 d4 g f bes,8 c4. g'8 f ees d ees bes c \break
  }
  
}



chant = \relative c'{

  \repeat volta 2 {
    \key ees \major
    \repeat volta 2 { \silence }
    
    %\key aes \major
    \repeat volta 2 {
    \time  #'(3 3 3 3 2) 14/8
    ees4 g8 g g f4 ees bes ees f8 |
    f4 aes8 aes aes g4 bes aes g ees8 |
    ees4 c'8 c c bes4 aes g aes bes8 |
    \time 12/8
    bes4 c8 ees g aes g ees f d bes ees | 
  }
  }
  
}

harmonie =  \chordmode{

  \repeat volta 2 {
    \repeat volta 2 {
      \time 14/8
      \tuplet 8/14 {
	c1:min |  bes/c | aes/c | 
      }
      \time 12/8
      c4.:min   bes/c  aes/c  g:min/c
    }
    \repeat volta 2 {
      \time 14/8
      \tuplet 8/14 {
	ees1 |  des/ees | aes/ees | 
      }
      \time 12/8
      ees4.  des/ees  aes/ees  bes/ees 
    }
  }
  
\time 20/8
\repeat volta 2 {
  \tuplet 8/20 {
    c1:min |  bes/c | aes/c | g:min/c 
  }
}
}



\header {
  title = #(string-append "Prog-to-log 2000" ton )
  tagline =  ""
  composer = "B. Scherrer"
}


\score {
  <<
  \new ChordNames {
      \transpose c \noteCibleTransposition{ \harmonie }
    }

  <<
    \new Staff { \transpose c \noteCibleTransposition{ \melodie } }
    \new Staff { \transpose c \noteCibleTransposition{ \chant } }
    \new Staff { \transpose c \noteCibleTransposition{ {\clef bass \maingauche} } }
  >>
>>
  \layout {
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 4 36)
    }
  }
}



