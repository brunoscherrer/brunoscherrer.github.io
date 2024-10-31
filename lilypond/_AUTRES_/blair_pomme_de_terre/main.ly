indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature \time 2/4
  \repeat volta 1 {
    c4 d8 ees d4 c | aes8 c f c f,2 |
    d'8 d c8 bes ees4 ees8 ees | f f ees c b4 g |
    ees' d8 c f4. g8 | ees ees d c f8 f4 f8 |
    g g f ees f f ees c | b4  a8 b ees4 d
    ees8 ees d8 c f4. g8 | ees ees d c  f8 f8 f8 f8 |
    g g f ees f f ees c | b8 b a8 b ees ees d c | b8 b a8 b
    c4. c8 f4. f8 g g f ees  f4. f8  ees g f ees  f ees d4 |
  }
  c4 d8 ees | d4 c | aes8 c f c | f,2 |
  d'4  c8 bes | ees4 ees | f8 f ees c | b4 g |
  ees'4 d8 c | f4 f8 g8 | ees ees d c | f4 f8 f8 |

  g g f ees | f f ees c | b8 b  a8 b | ees4 d8 b
  g' g f ees | f f ees c | b8 b  a8 b | ees4 d8 b
  
  ees8 ees d8 c f4 f8 g8 | ees ees d c  f4. f8 |
  g g f ees f f ees c | b4 a8 b ees ees d c | b4 a8 b
  c4. c8 f4. f8 g g f ees  f4. f8  ees g f ees  f ees d4 |

}

harmonie = \chordmode {
  \repeat volta 1 {
  c2:min c:min/ees | aes:maj7 f:7 | bes c:min | f:7 g \break
  c:min f:7 | c:min f:7 | c:min f:7 | g2 | s2 \break
  c2:min f:7 | c:min f:7 | c:min f:7 | g f:7 | g \break
  c2:min f:7 | c2:min f:7 | c4:min f:7 | g2 \break
}
  c2:min c:min/ees | aes:maj7 f:7 | bes c:min | f:7 g \break
  c:min f:7 | c:min f:7 |  c:min | f:7 | g2 | s2 \break
  ees:maj7 | f:7 | g2 | s2 
  
  c2:min f:7 | c:min f:7 | c:min f:7 | g f:7 | g \break
  c2:min f:7 | c2:min f:7 | c4:min f:7 | g2 \break

  f:min7 aes:maj7 bes ees
  f:min7 
  
}




pa = \lyricmode {
  Pom -- me de terre i -- ner -- te dans un champ,
  ni \skip 1 sang ni nerfs ni pen -- sée ni sen -- ti -- ments,
  Boud -- dha au ra -- bais, nir -- va -- na d'oc -- cas -- ion, \skip 1
  qu'est-ce que t'at -- tends res -- tes pas là plan -- qué comme un con, si
  tu \skip 1 con -- ti -- nues, tu vas pren -- dre ra -- ci -- ne, \skip 1
  Ar -- rêtes de ri -- go -- ler en con -- tem -- plant \skip 1 ton u -- rine
  en con -- tem -- plant \skip 1 ton u -- rine
  cou -- ler sur tes chaus -- sures en cuir.
  Est-ce que ça te fait vrai -- ment "rire ?"
}

pb = \lyricmode {
  Pom -- me de ter -- re, rien n'a d'in -- té -- rêt;
  tout \skip 1 m'in -- dif -- fère, les \skip 1 gens sen -- tent mau -- vais;
  les pe -- tits ois -- eaux s'en -- cu -- lent sur les bran -- ches,
  le com -- man -- dant Cous -- teau dé -- coupe un en -- fant en tran -- ches,
  Mè -- re Té -- ré -- sa, vend de la co -- ca -- ïne,
  à la sor -- tie des ma -- ter -- nelles et
  tu con -- tem -- ples ton u -- rine, et tu con -- tem -- ples ton u -- rine,
  qui coule, sur tes chaus -- sures en cuir.
  Est-ce que ça te fait vrai -- ment "rire ?"
}

pc = \lyricmode {
  Pom -- me de terre ob -- ser -- ve sans se plaindre 
  tou -- tes ses lu -- mières une \skip 1 à u -- ne s'é -- teindre;
  vi -- sage im -- mo -- bile, re -- gard in -- ex -- pres -- sif, \skip 1
  quel -- ques ger -- mes font leur ap -- pa -- ri -- tion sur le pif;
  pour -- quoi tu t'laisses al -- "ler ?" pour -- quoi tu te dé -- bi -- "nes ?"  Et pour -- quoi est-ce que tu t'marres en  con -- tem -- plant \skip 1 ton u -- rine
  en con -- tem -- plant \skip 1 ton u -- rine
  qui coule, sur tes chaus -- sures en cuir.
  Est-ce que ça te fait vrai -- ment "rire ?"

  
}

pd = \lyricmode {
  Pom -- me de terre un jour a ren -- con -- tré
  pom -- me de fer qui l'a so -- do -- mi -- sé,
  pas -- sé à ta -- bac, pen -- du par les tes -- ti -- cu -- les.
  Pom -- me de terre ou pas quand on souffre on est ri -- di -- cu -- le;
  le mon -- de des hu -- mains n'est pas fait pour les tu -- ber -- cu -- les.
  Sur son vi -- sage en -- core pour -- tant par -- fois se des -- sine
  un sou -- rire nos -- tal -- gique à la vue de son u -- rine,
  à la vue de son u -- rine,
  qui coule sur ses chaus -- sures en cuir,
  a -- vant ça le fai -- sait tant rire

  na na na na na na 
}




\header {
  title = #(string-append "Pomme de terre" ton )
  tagline =  ""
  composer = "Blair (arr. BS)"
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
      \pa \pd
    }
    \new Lyrics \lyricsto "one" {\set fontSize = #-1
      \pb
			       }
    \new Lyrics \lyricsto "one" {\set fontSize = #-1
				 \pc
			       }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}


