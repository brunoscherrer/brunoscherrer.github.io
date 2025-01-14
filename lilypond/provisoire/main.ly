indent = 0


mela = \relative c'{
  \time 3/4
  \repeat volta 2 {d8 e[ e] f[ f] g | g a a4. c8 | c b[ b] g[ g] e | g2 r8 f16 e \break | f4 f f | f8 a e4. e16 d | e8 b b g b4~ | b2. \break }
}
melb = \relative c'{
  \repeat unfold 3 {d8 e[ e] f[ f] g[ g] |} c4 a f e8 \break
  \repeat unfold 2 {d8 e[ e] f[ f] g[ g] |} d8 ees[ ees] f[ f] g[ g] | bes4 a g4. \break
}


melodie =  \relative c'{
  \key c \major
  \numericTimeSignature
  \mark \markup \box \bold  A
  \mela
  \time 7/8
  \repeat volta 2 {
    \mark \markup \box \bold B
  \melb }
  \mark \markup \box \bold A
  \mela

  \mark \markup \box \bold {B}
  \time 7/8
   \repeat volta 2 { \melb }

  \mark \markup \box \bold {B'}
  \repeat unfold 2 {g'8 aes[ aes] bes[ bes] c[ c] |}
  {a8 bes[ bes] c[ c] d[ d] |} {a8 bes[ bes] c[ c] ees[ ees] |}\break
  {a,8 bes[ bes] c[ c] e[ e] |} {a,8 bes[ bes] c[ c] f[ f] |}
  \time 3/4 c'4. bes4. a2.~ \break
  a2. 
  \time 6/8
  r2. r \break
  
  
  %\repeat unfold 16 { r2. }
  %cis,8 d[ d] e[ e] fis fis a  a4. cis8 | cis b[ b] fis[ fis] e | e2 r8 fis | \break
  %g a g fis d b | b'2 b4 | bes2. | r2.
  %d,8 e[ e] fis[ fis] g g a  a4. cis8 | c a a fis fis d | d2 r8 a'8 | \break
				%gis2. | c2. | bes2. | a

  \mark \markup \box \bold C
  
  \repeat volta 2 {fis,4. g a b | fis d b2. | fis'4. g a b | f d bes2. |
		   fis'4. g a b | fis d c2. | fis4. gis | b4. cis | b2.~ | b2. }
}



harmonie =  \chordmode{  
  \time 3/4
  \repeat volta 2 {\repeat unfold 2 {d2.:min9 | s | e:min9 | s}}
  \time 7/8
  \tuplet 8/7 {
    \repeat volta 2 {bes1:maj7 | s | d:min9 | s | bes:maj7 | s | ees:maj7 | s }
  }
  \time 3/4
  \repeat volta 2 {\repeat unfold 2 {d2.:min9 | s | e:min9 | s}}
   \time 7/8
  \tuplet 8/7 {
    \repeat volta 2 {bes1:maj7 | s | d:min9 | s |  bes:maj7 | s | ees:maj7 | s }
    aes:maj7 | s | a:3-.5-.7 | s |  a:3.5+.7 | s | 
  }
  \time 3/4
  | s2. s s 

  \time 6/8
  s s
  \repeat volta 2 {d2.:maj7  s | e:min9  s | g:maj7 s | bes:maj7  s \break
  b:min9  s | d:7/c  s | e:7  s   g:maj7  s}
				%  b:min9 | s | d:7/c | s | e:7 | e:5+.7 |  a:5+.7 | s
  
}



\header {
  title = #(string-append "Provisoire" ton )
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




