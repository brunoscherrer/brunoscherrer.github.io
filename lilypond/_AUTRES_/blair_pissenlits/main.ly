indent = 0


melintro = \relative c'{
  
  r8 d f a a g g e | d4 fis g f |
  r8 d f a a g g e | d8 f4 d8 d g4 d8 | \break
}

mela = \relative c'{
  d8 d d f a4 a4 | d8 d d c a4 a4 | %\break
  d8 d d d c d c bes | a2 r2 |  %\break
  d8 d d d cis bes bes4 |  a8 a a a gis e g4 | %\break
  bes8 bes bes bes a a g f |  a4 d e4. f,8 %\break
  f8 g a c d c c bes  a4 a bes a8 g | %\break
  f8 f g a bes a a f e4 e f e \break
}

melb = \relative c' {
  c'8[ a f] c'[ a f] c' a d c c bes a2 | %\break
  a8[ f d] a'[ f d] a' f bes a a f e4 f8 g |% \break

  aes8 c, f aes aes  g g4 
  f8 f bes des des c c4 %\break

  r8  a8 d f f  e e d a2 r2
  r8 a8 d f f  e e d  a2 r2 \break

}

melpont = \relative c'' {
  r8 a d f f e e d | aes4 d e2 |
  r8 a, d f f e e d | g,4 d' e2 |
  r8 d, f a a g g e | d1 | \break
  
}

melbb =  \relative c' {
  c'8[ a f] c'[ a f] c' a d c c bes a2 | %\break
  a8[ f d] a'[ f d] a' f bes a a f e2 |% \break
  c'8[ aes f] c'[ aes f] c' aes des c c aes g2 | %\break
  a8[ f d] a'[ f d] a' f bes a a f e2 |% \break

  r8 f a d d4 c | a1\fermata \break

}

melc = \relative c'' {
  d2 cis8 d e4 | f4 d c b | c2 bes8 c bes4 | a g f e |% \break
  d' d  cis d8 e | a8 g f e f4 d | c2. d8 c | c4 bes a g %\break
  a2 g8 a g4 | f2 e8 fis gis4 | a1~ | a1 \break
}


meld = \relative c'' {
  b2 bes8 b des4 | d b a aes | 
  a a g8 a g4 | ges e d des | %\break
  b' b bes b8 des | ges e d des d4 b8 b | 
  a2~ a8  a8 b a | a4 g ges e | %\break
  ges4 ges8 ges e ges e4 | d4 d8 d8 des ees f4 | 
  ges4  ges8 ges ges aes bes4 | des b ges' d | %\break
  des  a aes f | ges1  
  fis4. e fis4 | e1 | %\break
  e4. d e4 | d1 | r | r

}

melodiea =  \relative c'{
  \key d \minor
  \numericTimeSignature \time 4/4

  \mark \markup \box \bold {Intro}
  \melintro 

  \mark \markup \box \bold {A1}
  \mela

}
melodieb =  \relative c'{
  \repeat volta 2 {
    \mark \markup \box \bold {A2-A3}
    \mela
    \mark \markup \box \bold {B2-B3}
    \melb
  }
      
  \mark \markup \box \bold {C}
  \melc

  \mark \markup \box \bold {A4}
  \mela

  \mark \markup \box \bold {B4}
  \melb

  \mark \markup \box \bold {Pont}
  \melpont
  
  \mark \markup \box \bold {A5}
  \mela

  \mark \markup \box \bold {B'}
  \melbb
  
  \mark \markup \box \bold {Outro}
  \meld
  
}

melodie = { \melodiea \melodieb }

pa = \lyricmode {
J'ai tout jus -- te huit ans et je suis un en -- fant 
J'ai -- me les gros mots  et j'ai peur des gens 
Les gens ils ne sont ja -- mais
Que les en -- fants qu'ils é -- taient
et moi les en -- fants je sais com -- ment c'est fait
Je les vois qui com -- plo -- tent pen -- dant l'in -- ter -- clas -- se
L'in -- sou -- ciant gé -- no -- ci -- de de ceux de ma ra -- ce
}

pb = \lyricmode {
  J'ai-bien -- tôt dix- -- huit ans et je suis un en -- fant
  Je lan -- ce des re -- gards in -- dif-- fé -- rents
  Aux for -- mes qui à grands pas
  Me croisent et ne me voient pas
  L'a -- ve -- nir me semble un douil -- let ma -- te -- las
  Je de -- vi -- ne le bruit de leurs vies plei -- nes d'ac -- tes
  Sur leurs vi -- sa -- ges d'en -- fants qui se pu -- tré -- fac -- tent
}

pc = \lyricmode {Et je pè -- se vers l'a -- vant, je pè -- se vers l'ar -- rière
Tous de -- vant qui ti -- rent, tous de -- vant et moi der -- rière
Tous at -- te -- lés à mon corps bouf -- fi
Dont les mem -- bres s'a -- tro -- phient
Je vois leurs fa -- ces im -- pa -- tientes
Tor -- dues de fa -- tigue et d'at -- tente}

pd = \lyricmode {
  J'ai-trente ou qua -- rante ans et je suis un en -- fant
  Mais ça n'est plus mi -- gnon de -- puis long -- temps
  J'at -- tends la pé -- toche aux tripes
  Le bruit des pas du sale type
  Qui me fe -- ra pay -- er jus -- qu'au der -- nier slip
  La no -- te qui de -- puis le temps que je res -- quil -- le
S'al -- longe au fron -- ton de mon ca -- veau de fa -- mil -- le}

pe = \lyricmode {Et je plan -- te mes cro -- chets au ven -- tre des grands- -- mères
Tous de -- vant qui pei -- nent tous de -- vant et moi der -- rière
Ça y-est, j'ai tout lâ -- ché je dé -- rape
Mais je sens qu'on me rat -- trape
A -- vec des ver -- ges en o -- sier
Comme un ba -- lu -- chon de bou -- sier}

pf =  \lyricmode {La \repeat unfold 42 {la}}

pg = \lyricmode {
  J'ai-soix -- an -- te -- quatre ans, j'em -- mer -- de mes en -- fants
Je me poin -- te chez eux les burnes au vent
Je colle une claque au ca -- det
Qui m'a man -- qué de res -- pect
Je vais vous ap -- prendre à dres -- ser un mou -- flet
Je t'ai don -- né la vie tu me dois bien cent bal -- les
Ton grand -- père a cre -- vé, veille à ce qu'on l'em -- bal -- le}

ph = \lyricmode {Et je glis -- se mon che -- min des langes au ci -- me -- tière
Comme un sup -- po -- si -- toire tous de -- vant et moi der -- rière
Sous la pluie de su -- eur et de sang
Je gri -- gnote en rê -- vas -- sant
Les pis -- sen -- lits par les deux bouts
Les pis -- sen -- lits par les deux bouts}
		 
pi = \lyricmode {
		 J'ai-qua -- tre -- vingt -- quinze ans et
		 je suis un en -- fant
		 J'ai -- me les gros mots et j'ai peur des gens
		 Mais a -- près une vie d'ef -- forts
		 Je leur fais peur plus en -- core
		 De -- puis près d'un siè -- cle que je pue la mort
		 J'a -- chève en si -- ro -- tant ma ti -- sane au gin -- gem -- bre
		 Ma car -- riè -- re sub -- ven -- tion -- née d'ex -- clu en cham -- bre}

pj =  \lyricmode {La \repeat unfold 61 {la}}

pk = \lyricmode {
  Vous cro -- yez, m'en -- tend -- on di -- re
  Me faire cre -- ver de ja -- lou -- sie
  Mais je pré -- fère mes re -- grets à vos dé -- sirs
  Mes or -- gies de sou -- ve -- nirs
  A vos par -- tou -- zes d'en -- fants mon -- go -- liens
  Et si vous vou -- lez bien
  Lais -- sez -- moi prendre en paix
  Mes ves -- sies pour des feux fol -- lets
  hmm mm mm mm hmm mm mm mm
}

harmintro = \chordmode {
  d2:min7 c b:min7 bes:6 d:min7 c f:maj7 a:7
}
harma = \chordmode {
  d:min7 f:maj7 bes:maj7 f:maj7
  bes:maj7 c:7 a:3-.5-.7 f:7 
  bes:maj7 e:3-.5-.7-  d:min7 e4:7 a4:7/g
  bes2:maj7 ees:7+.11+ d:min f:maj7 
  g:min7 e:3-.5-.7 e:min7 a:7/g
d:min7/f f:7/c e:7 a:7  
}
harmb = \chordmode {
  f1:maj7  bes2:maj7 a:7
  d4.:min7 bes4.:maj7 s4 a1:7.9- 
  f2:min7 g:7 bes:min c:7.9-  
  d2:min7 c b:min7 bes:maj7 d:min7 c f:maj7 a:7
}
harmpont = \chordmode {
  bes2:maj7 a:7 | d:3-.5-.7 e:7 |
  g:min7 ges:7 | e:min7 a:7 |
  d:min7 c | f:maj7 a:7 |
}

harmbb = \chordmode {
  f1:maj7   bes2:maj7 a:7
  d4.:min7 bes4.:maj7 s4 a1:7.9- 
  f2:min7 des:maj7 bes:min c:7.9-  
  d4.:min7 bes4.:maj7 s4 a1:7.9-
  d2:min7 c b:min7 s
}

harmc = \chordmode {
  bes:maj7 a:7 d:min7 g:7 c:7 s a:7 s 
  bes:maj7 a:7 d:min7 g:7 f:maj7 s c:7 s 
  a:7 s d:min7 e:7 a:7 s s s 
}
harmd = \chordmode {
  g2:maj7 ges:7 | b:min7 e:7 | a:7 g:7 | ges:7 s | 
  g:maj7 ges:7 | b:min7 e:7 | a:7 s | e:min7 s | 
  ges:7 s  | b:min7 des:7 | ges:7 s | b:min7 e:7 
  a:7 des:7 | d:maj7 s |
  a1:3-.6   | d:6/fis  | 
  bes:maj7 | ges:7 | s | e:3-.6
}

harmonie = \chordmode {
  %intro
  \harmintro

  \harma
  
  \repeat volta 2 {
    \harma
    \harmb
  }
  
  \harmc
  
  \harma
  \harmb

  \harmpont
  \harma
  \harmbb
  
  %outro
  \harmd
  
}



\header {
  title = #(string-append "Les pissenlits par les deux bouts" ton )
  tagline =  ""
  composer = "Blair"
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
				 \repeat unfold 23 {\skip 1}
				 \pa \pb \pc  \pf \pg \ph \repeat unfold 28 {\skip 1} \pi \pj \pk
			       }
    \new Lyrics \lyricsto "one" {\set fontSize = #-1
				 \repeat unfold 96 {\skip 1}
				 \pd \pe
			       }


  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




