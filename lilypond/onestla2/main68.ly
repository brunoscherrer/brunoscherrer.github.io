indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 6/8
  \partial 4. e8 r d |
  c2. r4. e8 r f | g2. r4. e8 r f | \break
  g r g  g r g  g r f  e r f | d2. r4. d8 r e | \break
  f r f  f r f  f4.  e8 r d | e r e  e r e  e4.  d8 r c | \break
  d r d  d r d  d r c  b r d | c2. r4. e8 r d | \break
}

  
melodieb =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 6/8
  \partial 4. e8. d8 c16~ |
  \repeat volta 2 {
    c2. | r4. e8. f8 g16~ | 
    g2. | r4. e8. f8.  | \break 
g8. g8  g8. g8. g16~ | g8 f4  e8. f8 d16~ | d2. r4. d8. e8. | 
  f8. f8.~ f8  f8. f16~|  f4. e8. d8. | \break
  e8. e8.~ e8  e8. e16~|  e4. d8. c8. | 
  d8. d8.~ d8 d8. d16~ | d8 c8. b8. d8. c16~ | c2. r4. e8. d8 c16~ | \break
}
}



harmonie =  \chordmode{  
  \partial 4. r4.
  c1.  | s | s | g | f  | c | g | c |
}

harmonieb = \chordmode{
  \partial 4. r4.
  \repeat volta 2 {
    c2.:maj7  d:min7 | e:min7 e4.:3-.5-.7 a:7 |
  d2.:min7 a:7 | d:min7 g:7 | f:maj7 f:min7/aes | c/g fis:3-.5-.7 |
    f:maj7 e:min7 | d:min7 des:7  |
    }
}



\header {
  title = #(string-append "Carole Grosjean-360 comme devant (on est là)" ton )
  tagline =  ""
  composer = ""
}


%\markup {
%  Arrangement original:
%}

%\score{
 % <<
  %  \new ChordNames {
  %    \transpose c \noteCibleTransposition{
%	\harmonie
%      }
%    }
%    \new Staff { 
%      \transpose c \noteCibleTransposition {
%      \melodie
%      }
%    }
%  >>
%  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
%}

%\markup {
%  Arrangement jazzy:
%}

\score{
  <<
    \new ChordNames {
      \transpose c \noteCibleTransposition{
	\harmonieb
      }
    }
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodieb
      }
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}