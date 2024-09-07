indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 4/4

  \mark \markup \box A
  c8 (    d   )  e  e ~    e    d  e  (  f )    g (    f )  f  e    e4.   d8      d4    e   r  d  e4.    d8    e    d (  c )  b    \break
  b (    c4. )   r4  b8    c     dis (    e )  dis  c    dis    c  b  a      a    b4.   r4  d8    d    d4     c    c8 (    b )  a4  | \break
  c8    d  e  e    e4    e    f    e   \times 2/3  {    e8 (    f  e )  }  d  c      b (    c )  d4   r4.  c8  d  (    es )  d  c    d    c  b  a    | \break  gis (    a )  b4   r4.  a8  b (    c )  b  a    b    a (  gis )  f      e1~  | e2 r2  | r1 | r1  \break
   \mark \markup \box B
  b'2 \acciaccatura {    b4  }  a    gis    a    gis    f e    e1 r8 e    dis  e    f    fis  g  gis    | \break
  a4    a ~    a    b8  c    cis (    d )  c4   \acciaccatura {    d  }  c    b      a8 (    b ) ~  b4   r  c  b  (    a )  gis  a  \break
  b2 \acciaccatura {  b4 }  a    gis    a    gis    f e    e1    r8  e    dis  e    f    fis  g  gis    \break
  a4    a ~    a    b8  c  cis (    d )  c4   \acciaccatura {    d  }  c    b      a8 (    b ) ~  b4   r  c  b  (    a )  b  c  \break
  \mark \markup \box C
  \repeat volta 2 {
     \grace {  cis } d1  r1 r1 r1  \break
    cis8 (    d )  c4    c    \acciaccatura {  c }  b       b8    c ~  c4  r8  b    a  gis    a2.  gis8 (    a )      b2 \acciaccatura {  b4 } a    gis \break
    a    gis  f  e  cis8 d8~ d2  e8    f    gis (    a  ) ~  a4   r  b8 (    c )      cis (    d )  c4 
    \times 2/3  {    b8 (    c  b )  }  a4 \break
    gis8 (    a )  gis4   \times 2/3  {    f8 (    gis  f )  }  e4      d8 (    e ) ~  e4 ~    e2~ e1  }

  \mark \markup \box D
  r1 r1 \break
			
}



harmonie =  \chordmode{  
  \time 4/4
  c1 s e:7 s a:min b:7 e:7 s
  a:min e:7/gis g fis:3-.5-.7 f:maj7 s e:7 s2 d2:min7 
  e1:7 s2 d2:min7 | e1:7  s2 d2:min7  e1:7  s1 
  a1:min d:min7 e:7 s2 d:min7 e1:7 s2 d:min7 e1:7 s
  a1:min d:min7 e:7 s2 d:min7
  \repeat volta 2 {
    \acciaccatura {s} e1:7  s2 d:min7 e1:7  s2 d:min7
    e1:7 a:min s d:min7 s d:min7 s d:min7 s  e:7 s
  }
  e:7 d2:min7 g:7
  
}



\header {
  title = #(string-append "Grana Od Bora" ton )
  tagline =  ""
  composer = "Traditionnel (arr. Bojan Z)"
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




