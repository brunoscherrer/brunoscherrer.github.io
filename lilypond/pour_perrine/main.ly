indent = 0

\paper {

  system-system-spacing =
    #'((basic-distance . 0) 
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 50)) 
}


melodie =  \relative c'{

\numericTimeSignature
\time 3/4

\mark \markup {\box \bold A}
 {
\key c \major
r8 f4-. a-. c8-. | b4( g f8 \grace{ges} g~  | g2.) | r2. | \break
r8 f4-. a-. c8-. | b4( c d  | \grace{bes} <g b e>2.) | r2. | \break
r8 a4-. bes-. cis8-. | e4( f g | \tuplet 4/3 {g f e f} | <c f aes>2) g'8 f | \break

\break
\mark \markup {\box \bold B}
<g, c e>2.   <aes c f> <<  {g'2( f4)} \\ {<bes, d>2.} >> 
<g c e>2.   <aes c>  <<  {ees'4( d c)} \\ {bes2.} >>
\break

\mark \markup {\box \bold C}
%\key ees \major
r8 aes4-. ees'-. c8-. | d4( c bes8 \grace{des} d8~ | d2. | c) | \break
r8 f,4-. aes-. c8-. | b4( g f8 ees8~ | ees2. |  e) | \break
r8 f8( g aes bes c |  d4 ees f | \grace{des} d2~d8 c16 bes| c2.) | \break
%r8 f4 g aes8 | bes4 c d | d2. | c2. |
r8 c4-. f,-. aes8-. | c2. | r8-. d4-. f,-. g8-. |  d'4( c8 b a g) | \break



\mark \markup {\box \bold A'}
\key c \major
r8 f4-. a-. c8-. | b4( g f8 \grace{ges}  g~  | g2.) | r2. | \break
r8 f4-. a-. c8-. | b4( c d  | \grace{bes} <g b e>2.) | r2. | \break
r8 a4-. bes-. cis8-. | e4( f g |  \grace{ges}g2. | f) \break

f4.( aes, g e' | \grace{bes} b2.) | 
r4 a8( b a g | \break
f'4. aes, g e') | <b e g>8-. <b e g>4-. <b e g>-. <b e g>8-. | <b e g>4-. r2 |
}

}



harmonie =  \chordmode{  

 
 {

   d2.:min7 | g:7 | c:maj7 | s |
   d:min7 | g:7 | c:maj7 | s |
   e:min7.5- | a:7 | d:min7 | f:min |
 
   c | aes:6 | bes:6 |
   c | aes:6 | bes:6 |
   
   f:min7 | bes:7 | ees:maj7 | aes:maj7 |
   d:min7.5- | g:7 | c:min7 | c:7 |
   f:min7 | bes:7 | ees:maj7 | aes:maj7 |
   d:min7.5- | s | g:7 | s
 
   d2.:min7 | g:7 | c:maj7 | s |
   d:min7 | g:7 | c:maj7 | s |
   e:min7.5- | a:7 | d:min7 | s |
   
   d:min7.5- | des:7 | c:maj7 | c:maj7 |
   d:min7.5- | des:7 | c:maj7 |  s |
   
}


\break
%\newSpacingSection
%\override Score.SpacingSpanner.spacing-increment = #.5
d2.:min7 \mark \markup {\bold Pont/Intro (facultatif):} | g:7 | e:min7.5- | a:7 | \break
d:min7 | g:7 | c:maj7 | a:7.5-.6- | \break
  d2.:min7 | g:7 | e:min7.5- | a:7 | \break
  d:min7 | g:7 | c:maj7 | c:maj7 | 

\break
c \mark \markup \bold {Solos et 6/6 possibles sur B:}   | aes:6 | bes:6 | c | aes:6 | bes:6 
 
}

\header {
 title =  #(string-append "La demoiselle de Montréal (Pour Perrine)" ton)
 tagline =  ""
 composer = "Bruno Scherrer"
}

\score {
  <<
  \new ChordNames {
     \transpose c \noteCibleTransposition
      \harmonie
    }

  \new Staff  <<
    \transpose c \noteCibleTransposition 
    \melodie
  >>
>>
  \layout {
    \context {
      \Score
%      \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #30
      %proportionalNotationDuration = #(ly:make-moment 4 20                                )
    }
  }
}


