indent = 0

melodie =  \relative c'{
  \key ees \major
  \numericTimeSignature
  \time 4/4
  r1 r1 r1 r1 
  r1 r1 r1 r1 
  r4 c4 c4. c8 |  d4.  d8 d4. d8 | ees4. ees8  e4. e8  | f4. f8 fis fis fis fis | 
  g2 r4 a4 |  bes4. bes8 b4. b8 | c2.~ c8 b |  c2 r2 
  r1 | r2 c4. c8 |  c bes4 bes8 bes4. bes8 | bes8 a4 a8 aes4. aes8 | 
  g4. c8 c f,4 f8 | e4. e8 f4. b,8 | c4. c8 f2 | r1  
  r4 f8 f f4. f8 | g4. g8 a4. a8 | bes4.  bes8 b4. b8 | c4. c8 d4. d8 |
  ees2  r4 ees8 d |  d d d c8 d4. d8 | b2 r4 c8 c |  c8 bes8 bes4. aes8 aes aes | 
  aes4( g) g8 g g f8 | f8 ees ees ees d4. c8 | c2 r2 | r1
}



harmonie =  \chordmode{
  \time 4/4
  c2:min f:min | bes ees | c:5+.7 f/a | g:7/b c:min    \break
  g2:sus ees/g | d/fis  des/f | g:7/f c/e | d:3-.5-.7/f g:7 |  \break
  c2:min aes/c | d:3-.5-.7/c g:7/b | \break  c:min c:7/bes | f:min/aes a:dim7  
  g2 fis:dim7/g | \break g:min g:7/f | c:7/e d4:min7 g4:7/d | \break c2:min f:dim7 |
  fis2:dim7 g:7 | c2 c:5+ \break | d:3-.5-.7 c:7 | f b:dim7 | \break
  c2 des:maj7 | c:7 b:dim7 | c2 f2:min | bes:dim7  c | \break
  f2 bes/d | ees c:dim7 | \break bes:min d:dim7 | c:min g |
  c:min d:7 | \break e:3-.5-.7 f:dim7 | g:7/f c4/e c:min/ees | bes2/d aes/c |
  b:dim7 c:min/a | g1:7 | c1:min 
}


pa = \lyricmode {
  %\repeat unfold 11 {\skip 1} 
 What power art thou who from be -- low
Hast made me rise un -- wil -- ling -- ly and slow
From beds of e -- ver -- las -- ting snow?
"See'st" thou no -- t how stiff, how sti -- ff and won -- drous old
Far, fa -- r un -- fit to bear the bit -- ter cold?
 I can scar -- cely move or draw my breath
 can scar -- cely move or draw my breath
 Let me, let me, let me freeze a -- gain 
 let me, let me freeze a -- gain to death
 let me, let me, fr -- ee -- ze a -- gain to death
 
}



\header {
  title = #(string-append "Cold song (what power art thou)" ton )
  tagline =  ""
  composer = "H. Purcell"
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




