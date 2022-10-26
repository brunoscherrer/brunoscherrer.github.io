indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature \time 2/4
  
  <c e>4. <c ees>8~ <b ees> <bes d>4. <bes des>2 <bes des>8 <bes ees> <bes des>4
  <bes d>4. <g bes>8~ <g bes>8 <ais c>4. <a cis>2 r4 r8 fis |
  \repeat volta 1 {
    a a a a gis gis fis f bes bes g d  f  f f f |
  g g g g f f ees  d   f f d f  cis dis f gis | 
  a a a a gis gis fis f bes bes g d  f4  \tuplet 3/2 {f8 f f} |
  g g g g f f ees  d   f f d f  fis4  fis8 fis  |
  g g g g f ees d c | d2. r8 bes16 bes | a'8 a a a g g f c bes' bes f d g4. g8
  g g f g bes a g bes, d4 c bes4. g'8 | \break
  g g g g f ees d c
  d4 fis 
  \grace fis g2~ \break g2 
  r2 r2 r2 r2 r2 r2
  } \break
  g2~ g2~ g2~ g2 r2 r2 r2^\markup{\italic rall.} r2  r2 \fermata \bar "|."
  
}

harmonie = \chordmode {
  f1:maj7 bes:min7 e:3-.5-.7 
  a2:7/cis b4:min7/d cis:7  \break
  
  fis2:min7 aes:7 g:min7 d:min7 \break
  ees:maj7 f:7 bes cis:7 \break
  fis2:min7 aes:7 g:min7 d:min7 \break
  ees:maj7 f:7 bes d:7 \break
  ees:maj7 f:7 aes1:maj7.9.11+ \break
  f2 aes:maj7 bes4:min bes g2:7/b \break
  c:min f:11  d:7 g:min7 \break
  ees:maj7 f d:7/fis \break

  f1:maj7 bes:min7 e:3-.5-.7 a:7/cis 
  f1:maj7 bes:min7 e:3-.5-.7 f2:min7 g:min7  c1:7 \break
}




pa = \lyricmode {
  \repeat unfold 11 {\skip 1} 
  Tous les ma -- tins Gon -- tran se ré -- jou -- it d'être un gros "porc, "
  quand il se marre en vo -- mis -- sant ça fait "\"glou" "glou\"" les en -- fants crient "\"en" -- "core!\""
  et lors -- qu'ils le ta -- quinent en rapp' -- lant à son sou -- ve -- nir
  que le dé -- goût d'être un na -- bot ne le fe -- ra ja -- mais gran -- dir,
  il s'en -- fer -- me chez lui pour se re -- cueil -- lir,
  et il re -- "garde en" sou -- riant s'é -- ta -- ler sous ses grand yeux glou -- tons
  les sen -- ti -- ments vul -- gaires à la té -- lé -- vi -- sion
  les sen -- ti -- ments vul -- gaires à la té -- lé -- vi -- sion
}

pb = \lyricmode {
  \repeat unfold 11 {\skip 1} 
  De -- hors com -- plai -- sam -- ment les lé -- preux com -- pa -- rent leurs croûtes. \repeat unfold 2 { \skip 1 }
  En noir en rouge en blanc dans la rue par -- tout s'é -- ba -- ttent les scouts. \skip 1
  "\"Enfin" li -- "bres\"" crient -- ils en s'em -- bras -- sant a -- vec é -- moi
  Si \skip 1 hon -- teux hi -- er en -- core ils sont si fiers de leurs té -- nias
  de -- puis qu'ils savent que tou -- te la troupe en a
  tan -- dis qu'un jeune coeur meur -- tri chante a -- vec bruy -- an -- te pas -- sion
  ses sen -- ti -- ments vul -- gaires à la té -- lé -- vi -- sion
  ses sen -- ti -- ments vul -- gaires à la té -- lé -- vi -- sion
}

pc = \lyricmode {
  \repeat unfold 11 {\skip 1} 
  On sonn' c'est la voi -- sin' qui vient s'é -- cou -- ter par -- ler d'elle \repeat unfold 2 { \skip 1 }
  "\"moi" j'sui du genr' qui, j'suis comm ça, j'es  -- time a -- voir droit, j'suis pas d'celles et
  si j'ai chan -- gé j'y peux rien je le quitte "il le faut...\"" \repeat unfold 2 { \skip 1 }
  Mais au mi -- lieu de sa phras' " " Gontran l'é -- touffe a -- vec un poi -- reau
  Et jus -- que dans ses ul -- ti -- mes sou -- bre -- sauts
  L'on \skip 1 sent na -- ger en el -- le com -- me l'eau dans un pois -- son
  les sen -- ti -- ments vul -- gaires de la té -- lé -- vi -- sion
  les sen -- ti -- ments vul -- gaires de la té -- lé -- vi -- sion
}

pd = \lyricmode {
  \repeat unfold 11 {\skip 1}
  Au tri -- bu -- nal, Gon -- tran se -- rein ex -- po -- se sa dé -- fense: \repeat unfold 2 { \skip 1 }
  "\"Dé" -- so -- lé j'au -- rais tant  pré -- fé -- ré pou -- voir re -- gret -- ter mon geste;
  Et n'al -- lez pas croire que j'a -- gisse ain -- si par mal -- veil -- lance,
  Mais pour en ai -- mer quel -- ques uns il me faut dé -- tes -- ter le "reste.\""
  Et tan -- dis qu'on le con -- duit à la po -- tence,
  Les " " re -- belles en trou -- peaux bé -- ni -- ssent dans leur com -- mu -- nion
  les sen -- ti -- ments vul -- gaires à la té -- lé -- vi -- sion
  les sen -- ti -- ments vul -- gaires à la té -- lé -- vi -- sion
}




\header {
  title = #(string-append "Gontran" ton )
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
      \pa
    }
    \new Lyrics \lyricsto "one" {\set fontSize = #-1
      \pb
			       }
    \new Lyrics \lyricsto "one" {\set fontSize = #-1
      \pc
			       }
    \new Lyrics \lyricsto "one" {\set fontSize = #-1
      \pd
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}


\markup {
	\small {
		\concat {
		  \column {
		    
		    "Tous les matins Gontran" "se réjouit d'être un gros porc," 
		    "quand il se marre en vomissant ça fait" "\"glou glou\" les enfants crient \"encore!\""
		    "et lorsqu'ils le taquinent" "en rapp'lant à son souvenir"
		    "que le dégoût d'être un nabot" "ne le fera jamais grandir,"
		    "il s'enferme chez lui pour se recueillir,"
		    "et il regarde en souriant" "s'étaler sous ses grand yeux gloutons"
		    "les sentiments vulgaires à la télévision"
		    "les sentiments vulgaires à la télévision"
		    " "
		    
		    "Dehors complaisamment les lépreux" "comparent leurs croûtes."
		    "En noir en rouge en blanc" "dans la rue partout s'ébattent les scouts."
		    "\"Enfin libres\" crient-ils" "en s'embrassant avec émoi"
		    "Si honteux hier encore" "ils sont si fiers de leurs ténias"
		    "depuis qu'ils savent que toute la troupe en a"
		    "tandis qu'un jeune coeur meurtri" "chante avec bruyante passion"
		    "ses sentiments vulgaires à la télévision"
		    "ses sentiments vulgaires à la télévision"
			  
			  
		  }
		  \hspace #3
		  \column {
		    "On sonn' c'est la voisin'" "qui vient s'écouter parler d'elle"
		    "\"moi j'sui du genr' qui, j'suis comm ça,"
		    "j'estime avoir droit, j'suis pas d'celles"
		    "et si j'ai changé j'y peux rien" 
		    "je le quitte il le faut...\"" 
		    "Mais au milieu de sa phras'"
		    "Gontran l'étouffe avec un poireau"
		    "Et jusque dans ses ultimes soubresauts"
		    "L'on sent nager en elle" "comme l'eau dans un poisson"
		    "les sentiments vulgaires de la télévision"
		    "les sentiments vulgaires de la télévision"
		    " "
		    
		    "Au tribunal, Gontran, " " serein expose sa défense:"
		    "\"Désolé j'aurais tant  préféré" "pouvoir regretter mon geste;"
		    "Et n'allez pas croire que" "j'agisse ainsi par malveillance,"
		    "Mais pour en aimer quelques uns" "il me faut détester le reste.\""
		    "Et tandis qu'on le conduit à la potence,"
		    "Les rebelles en troupeau" "bénissent dans leur communion"
		    "les sentiments vulgaires à la télévision"
		    "les sentiments vulgaires à la télévision"
			
			}
		}
	}
}

