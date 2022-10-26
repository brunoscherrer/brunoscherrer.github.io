indent = 0

melodie =  \relative c'{
  \key f \major
  \numericTimeSignature
  \time 4/4
  \repeat volta 2 {d2\f d4 d8 e | f4 f8 g a4 e | f f f g | e4.( d8) cis2 | d2\mf d4 d8 e | f4 f8 g a4 f |
  f\cresc f f g | e2. r4 | r1 | r1 | r1 | d2\f d4 d8 e | f4 f8 g a4 f | f f f g | e4.( d8) c4 r4 | a\mf a8 bes8 c4 f |
		   e2. f4 | e2. f4 | e2 r4 a4 | g f8\cresc e f4 e8 d | e4 d8 c d4 c |}
  \alternative { { f\f e8( d) e4 c | a2. r4 |}
		 { g'8\f( f) e d e4 c | a2. r4 | }}
  \repeat volta 2 {a'2\mf g8( f) e d | c4.( d8) e2 | r1 | r1 | bes'2\mf a8( g) fis e | d4.( e8) fis2 | r1 | r1 |
		   g4(\p f) f( ees) | ees( d) d( c) | c( bes) bes( a) | a2. fis'4\f | g fis8 e f4 d8( c) | bes2 r4 g'\mf|
		   g g g e | c4.( bes8) a4 f' | f f f d | b4.( a8) gis4 e' | e e e cis | d d8\cresc cis d4 d8 e |
		   f( e) f g f g a f | f4 f f g | e4.( d8) cis4 r4 | d'2.\f d4 | c2. c4 | bes2. bes4 | a2. r4 |
		   g2.\mf g4 | f2 f | g4(\< f) e2\! | f2 r4 f4\f | bes8( a) g f e d cis d | f4 e8 d cis4 cis | d2. r4 |
		 }
}



\header {
  title = #(string-append "Cibel, voix 2" ton )
  tagline =  ""
  composer = "B. Scherrer"
}



\score{
  <<
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodie
      }
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




