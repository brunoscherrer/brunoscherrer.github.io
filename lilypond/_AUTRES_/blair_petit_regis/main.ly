indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature \time 4/4
  \repeat volta 2 {
  r1 r1 r1 \break
  g4 fis g c   b ais b fis'   fis e d a  c a fis d
  g b ais b   a2 d  g,4 b c b   d c a fis \break
  bes' g f g  f d cis ais   b' ais c b   c b b bes   b2 bes4 b  c b b ais   dis dis cis dis e  dis  dis cis  b1 | r1 | r \break }
}

pa = \lyricmode {
  Ce soir on va au ci -- né -- ma
  Pe -- tit Ré -- gis rends -- moi ser -- vice
  On ren -- tre -- ra très tard
  Peux -- tu gar -- der bé -- bé ce soir?
  Dé -- so -- lé ma -- da -- me je suis bien trop oc -- cu -- pé je suis con -- fus.
  Mais vous sem -- blez si na -- vrée c'est bon c'est bon n'in -- sis -- tez plus
}

pb = \lyricmode {
  Res -- to ci -- né bel -- le soi -- rée
  Rien que nous deux
  Li -- bres joy -- eux
  Il est mi -- nuit moins dix
  Mer -- ci mer -- ci Pe -- tit Ré -- gis
  Dé -- so -- lé ma -- da -- me j'ai cas -- sé vo -- tre bé -- bé  je suis con -- fus.
  Je vou -- lais seule -- ment jou -- er je ne re -- com -- men -- ce -- rai plus
}

harmonie = \relative c'' {
  \key c \major
  %\clef F
  \time 4/4 \numericTimeSignature
  \repeat volta 2 {
  <fis ais cis>4 <g b d a> <fis ais cis dis> <f a c d>
  <g ais cis> <g b d> <g e b> <e b>
  <g, ais dis> <g a d> <g ais cis> <g d' b>
  %
  <c g' e'>4 <c g' dis'> <c g' d'> <c g' cis>
  <b b' d> <b g' ais>  <ais b'> <ais fis' ais>
  <a gis' cis> <a e' g b d> <gis dis' c dis fis> <a e' cis g>
  <a c d fis> <e a d gis> <f dis' a> <fis b>
  <g d' b'> <g b d> <fis ais cis g> <g d' fis a>
  <a d fis> <e a g' c> <f d' gis b> <fis c' a'>
  <g cis ais'> <g b e> <g ais dis gis ais> <g b d>
  <a fis> <b g c> <c gis> <e, b' c fis a>
  %
  <dis' ais' g>1
  <d a' f ais>2 <cis e g ais>
  <b d f gis>2 <a c f>4 <a b f'>
  <gis c e> <gis b e> <fis b cis> <fis ais cis>
  <b dis fis>2 <ais cis g ais>4 <a b d fis>
  <gis c e> <gis b e> <fis b cis > <fis ais cis>
  <b dis fis>2 <cis e g ais>4 <dis fis b>
  <e gis c> <e gis dis' c> <fis cis' b> <fis cis' ais>
  <g b d>1
  <e gis b d>
  <fis d b' d>}
}



\header {
  title = #(string-append "Petit Régis" ton )
  tagline =  ""
  composer = "Blair"
}



\score{
  <<
    %\new ChordNames {
    %  \transpose c \noteCibleTransposition{
%	\harmonie
 %     }
 %   }
    \new Voice = "one" { 
      \transpose c \noteCibleTransposition {
      \melodie
      }
    }
    \new Lyrics \lyricsto "one" {
      \pa
    }
    \new Lyrics \lyricsto "one" {
      \pb
    }
    \new Staff {
      \transpose c \noteCibleTransposition{
	\harmonie
      }
    }
    
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




