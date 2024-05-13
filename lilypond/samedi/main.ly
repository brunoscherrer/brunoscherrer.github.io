indent = 0

melodie =  \relative c''{
  \mark \markup \box \bold {A}
  \key c \major
  \numericTimeSignature
\repeat volta 2 {
  \time 3/4 f,2. \time 2/4 r2
  \time 3/4 r2. \time 2/4 r2 \break
  \time 3/4 r2. \time 2/4 r2
  \time 3/4 r2. \time 2/4 r4 f'8 ges | \break
  \time 3/4
  aes2.~ |  aes2 ges8 aes16 ges | f2.~ | f2 f8 ges | \break aes4. bes | c8 bes4 aes4 \tuplet 3/2 {ges16 aes ges} | f2.~ | f2 f8 ges |
  aes2.~ |  aes2 ges8 aes16 ges | f2.~ | f2 f8->[ ees] \break 
  \time 7/8
   f->[ ees] b[ aes f]  f'->[ ees] | f->[ ees] b[ aes f] f'->[ ees] | 
  f->[ ees] b[ bes] a[ aes ges] | 
} \break
  \mark \markup {\box \bold {B}(Solo 1)}
  \repeat volta 2 {\repeat unfold 2 {\time 3/4 r2. \time 2/4 r2}} \break 
  \mark \markup {\box \bold {C}(Solo 2)}
  \repeat volta 2 {\time 5/4
		   \repeat unfold 8 {r2. \noBreak r2 \noBreak } \break
		   \repeat unfold 8 {r2. \noBreak r2 \noBreak }
		 }
}



harmonie =  \chordmode{
  \repeat volta 2 {
  \repeat unfold 4 {\time 3/4 f2.:min7 | \time 2/4 ges2:maj7 } \break
  \time 3/4
  \repeat unfold 4 {f2.:min7 | ges2.:maj7 } \break
  des4./ees des | aes/c b  | bes:min f/a |  aes2.:min
  \time 7/8
  s2. s8
  s2. s8
  s2. s8
}
  \repeat volta 2 {\repeat unfold 2 {f2.:min7 ges2:maj7}} \break
  \repeat volta 2 {
    g1:min7 s2 s1 aes1:maj7 s2 s1 
    a1:min7 s2 s1 
    bes:maj7 s2 s1 \break
    ees:maj7 s2 s1
    e:min7 s2 s1
    f:maj7 s2 s1
    fis:3-.5-.7- s2 s1 \break}
}



\header {
  title = #(string-append "Samedi matin" ton )
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




