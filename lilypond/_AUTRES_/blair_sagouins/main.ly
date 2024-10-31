indent = 0

melodie =  \relative c''{
  \key g \major
  \numericTimeSignature
  \time 4/4

  \mark \markup \box \bold {Intro}
  e2. d4~ | d b8 c b4 g | e'2. d4~ | d1 \break

   \mark \markup \box \bold {A}
  r2 a | f4 g a g~ | g e d cis~ | cis d cis r | \break
  r2 a' | f4 g a g~ | g e d cis~ | cis d e r | \break
  r2 a |f4 g a e~ | e a2 b4~ | b a b c~ | c4 g2 fis!4~ | fis! e d e | 
  e a a b4~ | b a b2 | c4 g2 g4 | c g2 r4 | \break

   \mark \markup \box \bold {B}
  r4 a a a | a a a b | g g g g | a a a g | 
  g1 | r | 
  r4 g g g | g g g a | f f e d | e e d c | 
  <d e'>2. d'4~ | d b8 c b4 g | e'2. d4~ | d1 \break
}



harmonie =  \chordmode{  
  g1:6 | s | s | s |
  d1:min7 | d2.:min7/b  c1  a:7 s4
  d1:min7 | d2.:min7/b  c1  a:7 s4
  d1:min7 | d2.:min7/b  a1:min7  g:7/b  c  d:7 s4
  a2.:min7  e1:min7 s4 | f1 | g:sus
  
  d:min7 | d:min7/b | e:min7 | f | c | s | 
  g | e:min7 | d:min7 | c | g:6 | s | s | s 
}


pa = \lyricmode {
  \repeat unfold 8 {\skip 1}
  Qui sont ces sa -- gouins dans le bois sa -- cré
  Où les mar -- cas -- sins vien -- nent s’a -- breu -- "ver ?"
  Qui leur a fait croire que leur bon -- heur é -- tait beau à voir,
  Et qui leur a ven -- du le droit de s’é -- mou-- "voir ?"

  Et tan -- dis qu’en chœur ils se mou -- chent dans la nap -- pe de soie fine,
  Je m’oc -- cupe à noy -- er des mou -- ches dans l’é -- vier de la cui -- sine.
}
pb = \lyricmode {
  \repeat unfold 8 {\skip 1}
Com -- ment ra -- brou -- er leur joie si sin -- cère
"Et ne" pas par -- ta -- ger leurs pe -- tites mi -- "sères ?"
Mais si tu leur cèdes, ils vont te ma -- quil -- ler comme une pute
Et si tu ne veux pas te sou -- mettre à leur rut

En -- fi -- le ton gros pull en haine et re -- gar -- de ces culs -- de -- jatte,
Qui cou -- rent jus -- qu’à perdre ha -- leine a -- près les pe -- tits my -- o -- pathes.
}
pc = \lyricmode {
  \repeat unfold 8 {\skip 1}
On te porte aux nues dans tous les fau -- bourgs
"Et on" voit tes sta -- tues à tous les carre -- fours
Et l’on me ban -- ni -- ra quand je les bri -- se -- rai pour rire
Et si l’on ne se re -- voit pas à l’a -- ve -- nir

Je m’en i -- rai au Pa -- ra -- guay dans u -- ne mai -- son de vieil -- lesse
Et j’y dis -- sé -- querai des pou -- lets pour é -- ga -- yer d’an -- ciens S -- S.
}
pd = \lyricmode {
\repeat unfold 54 {\skip 1}
Je m’en i -- rai vers d’au -- tres cieux où la fla -- tu -- len -- ce des hommes
N’as -- phy -- xie pas ce pe -- tit dieu qui dis -- pa -- raît quand on le nomme. 
  }

\header {
  title = #(string-append "Les sagouins" ton )
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




