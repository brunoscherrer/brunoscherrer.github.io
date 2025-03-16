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
%  \mark \markup \box \bold A
%  \mela

%  \mark \markup \box \bold {B}
%  \time 7/8
%   \repeat volta 2 { \melb }

  \mark \markup \box \bold {B'}
  \repeat unfold 2 {g'8 aes[ aes] bes[ bes] c[ c] |}
  {a8 bes[ bes] c[ c] d[ d] |} \break {a8 bes[ bes] c[ c] ees[ ees] |}
  {a,8 bes[ bes] c[ c] e[ e] |} {a,8 bes[ bes] c[ c] f[ f] |}
 \break
  \time 9/8
  c'2~ c8 bes2  a1~ a8~
  a1~ a8
  r1 r8 r1 r8 \break
  
  
  %\repeat unfold 16 { r2. }
  %cis,8 d[ d] e[ e] fis fis a  a4. cis8 | cis b[ b] fis[ fis] e | e2 r8 fis | \break
  %g a g fis d b | b'2 b4 | bes2. | r2.
  %d,8 e[ e] fis[ fis] g g a  a4. cis8 | c a a fis fis d | d2 r8 a'8 | \break
				%gis2. | c2. | bes2. | a

  \mark \markup \box \bold C
  
  \repeat volta 2 {fis,2~ fis8 g2 a2~a8 b2 | fis2~ fis8 d2 b1~ b8 | fis'2~ fis8 g2 |  a2~ a8 b2 | f2~ f8 d2 bes1~ bes8 | \break
		   fis'2~ fis8 g2 a2~ a8 b2 | fis2~ fis8 d2 c1~ c8 | fis2~ fis8  gis2 | b2~ b8 cis2 | b1~ b8~ | b1~ b8 }
}



harmonie =  \chordmode{  
  \time 3/4
  \repeat volta 2 {\repeat unfold 2 {d2.:min9 | s | e:min9 | s}}
  \time 7/8
  \tuplet 8/7 {
    \repeat volta 2 {bes1:maj7 | s | d:min9 | s | bes:maj7 | s | ees:maj7 | s }
  }
 % \time 3/4
 % \repeat volta 2 {\repeat unfold 2 {d2.:min9 | s | e:min9 | s}}
 %  \time 7/8
 % \tuplet 8/7 {
				%   \repeat volta 2 {bes1:maj7 | s | d:min9 | s |  bes:maj7 | s | ees:maj7 | s }%
  %}
  \tuplet 8/7 {
    aes:maj7 | s | a:3-.5-.7 | s |  a:3.5+.7 | s | 
  } 
  \time 9/8 
  \tuplet 8/9 {
  s1 s s s s
  \repeat volta 2 {d:maj7 s  | e:min9 s  | g:maj7 s | bes:maj7 s  \break
		   b:min9 s | d:7/c  s | e:7  s   g:maj7  s}
}				%  b:min9 | s | d:7/c | s | e:7 | e:5+.7 |  a:5+.7 | s
  
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




