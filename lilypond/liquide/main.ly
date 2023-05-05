indent = 0

mda =  \relative c'{
  \mark\markup{\box \bold A}
  \time 5/4 r4. c8( e a aes4. aes,8 \time 4/4 g'4. e4 c  d8~  \break
  \time 5/4 d4.) c8( e a aes4. aes,8 \time 4/4 g'4. e4 c  d8~ \break
  \time 5/4 d4.) a8( c e ees4. des8
  \time 3/4 d4. c4 b4.)  c8( b a aes) \break
  \time 5/4 r4. c4( <e a>4 a, <c e>8)
}
mdaa =  \relative c'{ \repeat volta 2 { \mda } 
		      \alternative {
    { r4. c4( <e a>4 a, <c e>8) }
    { \time 6/4 r4. c4( <e a>4 a,4.)  g'8( a8 } \break
  }
		    }

mdb = \relative c''{
  \mark\markup{\box \bold B}
  \time 5/4
  b4. a4. g4 fis)  bes4.( a4. g4 d) | 
  d'8([ ees d] bes[ g f] ees[ f ees] d |\time 6/4 c2) r2. g'8( a8 \break
  %\time 2/4 ees f g a
  \time 5/4 b4. a g4 fis)  d'4.( c bes4 d) | 
  d8([ ees d] bes[ g f] ees[ f ees] d | \time 6/4 c2) r4 r2. \break
  %\time 2/4 ees g aes c) \break
}
mdc= \relative c {
      \time 4/4  d'8[ f bes]  e,[ g c] fis,4~ | fis2 r2
}

mga = \relative c {
  \repeat unfold 2 {\time 5/4 a8 e' b'2  f,8 c' g'4  \time 4/4 a,8 e' b'4 a8 f,8 c' g' } 
  \time 5/4 fis,8 c' fis2  b,8 fis' b4 \time 3/4  d,,8 a' e'4 d  e,8 b'  e4 d
  \time 5/4 a8[ e'] b'4 a4  f,4 c'4 
  }

mgaa = \relative c {\time 5/4
  \repeat volta 2 { \mga }
  \alternative {
    { a8[ e'] b'4 a4  f,4 c'4 }
    { \time 6/4 a8[ e'] b'4 a4  f,4  r2}
  }
		  }

mgb = \relative c {
  e,8 b' e4 fis8 g4 fis4 b8
  g,8 d' g4 a8 bes4 d4 g,8
  ees,2. ees'2
  aes,8 ees' aes c  ees g ees2 r4  |
  %\time 2/4 aes2 |
  e,,8 b' e4 fis8 g4 fis4 b8
  g,8 d' g4 a8 bes4 d4 g,8
   ees,2. ees'2
  aes,2. r2.
  %\time 2/4 r2
}
mgc= \relative c {
      \time 4/4  bes4. c d4~ | d2 r2
}




ha = \chordmode {
  \time 5/4 a2.:min f2:maj7 \time 4/4 a2.:min f4:maj7
  \time 5/4 a2.:min f2:maj7 \time 4/4 a2.:min f4:maj7
  \time 5/4 fis2.:3-.5-.7 b2
  \time 3/4 d2.:min e4:7 s2
  \time 5/4 a2:min s8 f2:maj7 s8
}
haa = \chordmode {
  \repeat volta 2 { \ha }
  \alternative {
    {a2:min s8 f2:maj7 s8}
    {\time 6/4 a2:min s8 f2:maj7 s4.}
  }
}

hb = \chordmode {
  e1:m9 s4 | g1:min9 s4 | ees1:maj7 s4 | aes1:maj7 s2
  %\time 2/4 s2
  e1:m9 s4 | g1:min9 s4 | ees1:maj7 s4 | aes1:maj7 s2
  %\time 2/4 s2
}
hc = \chordmode {
      \time 4/4 bes4. c  d4 | s1     
    }







melodie = { \numericTimeSignature
	    \mdaa 
	    \mdb
	    \mdc
	  }
maingauche = { \numericTimeSignature
	       \mgaa
	       \mgb
	       \mgc
	     }


harmonie =  \chordmode{
 \haa
  \hb
  \hc

}



\header {
  title = #(string-append "Liquide" ton )
  tagline =  ""
  composer = "B. Scherrer"
}





