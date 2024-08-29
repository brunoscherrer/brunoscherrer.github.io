


indent = 0

melodie =  \relative c'{
  \key aes \major
  \numericTimeSignature
  \time 4/4
  \partial 4 c4
  aes'4. g8 aes g aes g | f2 r8 f aes bes | c4. c8 des c bes aes | aes2 r4 g | \break
  bes4. aes8 bes aes bes aes | g2 r8 g aes bes | c4 bes aes g | g2 r4 f | \break
  ees4. ees8 ees g bes des | c2 r4 c,4 | c4. c8 c8 e g bes | des2 c4 f, | \break
  bes4. aes8 bes aes bes aes | g2 r8 g aes bes | c4 bes aes g | g2 r4 c, | \break

  \key f \major
  a'2 \tuplet 3/2 {f4 e f} | a2 \tuplet 3/2 {a4 gis a} | c4. c8 d c a f | f2 e4 c | \break
  bes'2 \tuplet 3/2 {g4 fis g} | bes2 \tuplet 3/2 {bes4 a bes} | e4. d8 c bes a gis | gis2 r4 c, \break
  a'2 \tuplet 3/2 {f4 e f} | a2 \tuplet 3/2 {a4 gis a} | c4. c8 d c a f | e'2 r4 d | \break
  d2 \tuplet 3/2 {d4 e f} | f4. a,8 g f e' d | c4. bes8 a g a g | g2 f4 r | \break

}




harmonie =  \chordmode{  
  \partial 4 s4
  f1:min9 | g:dim | aes:6 | bes2:min7 c:7 |
  des1:maj7 | ees:6 | c:7/e | f:3-.6.9 |
  ees:7 | c:9-/e | c:7/e | f:min7 |
  des1:maj7 | c:7 | des:maj7 | c:aug

  f1:maj7 | fis:dim | g:min7 | c:7 |
  g:min7 | bes:maj7 | c:7 | c:aug |
  f1:maj7 | fis:dim | g:min7 | c2:7/bes bes |
  e1:7 | f:maj7 | c:7 | f:maj7
}





\header {
  title = #(string-append "La révolte" ton )
  tagline =  ""
  composer = "Sébastien Faure (arrangement B. Scherrer)"
}


\paper {
   ragged-bottom = ##t 
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

\pageBreak

\markup {
    \hspace #47 \bold{"La révolte (S. Faure)"}
}
\markup {
  \vspace #2
  \fill-line {
    \hspace #1
    \column {
      \line{ Nous sommes les persécutés }
      \line{ De tous les temps et de toutes les races}
      \line{ Toujours nous fûmes exploités}
      \line{ par les tyrans et les rapaces}
      \line{ Mais nous ne voulons plus fléchir}
      \line{ Sous le joug qui courba nos pères}
      \line{ Car nous voulons nous affranchir}
      \line{ de ceux qui causent nos misères}
      \vspace #1
      \line{ \bold{Refrain:} }
      \line{ Église, Parlement, Capitalisme,}
      \line{ État, Magistrature,}
      \line{ Patrons et Gouvernants,}
      \line{ libérons nous de cette pourriture}
      \line{ Pressant est notre appel,}
      \line{ donnons l'assaut au monde autoritaire}
      \line{ Et d'un coeur fraternel}
      \line{ nous réaliserons l'idéal libertaire}
      \vspace #1
      \line{ Ouvrier ou bien paysan}
      \line{ Travailleur de la terre ou de l'usine}
      \line{ Nous sommes dès nos jeunes ans}
      \line{ Réduits aux labeurs qui nous minent}
      \line{ D'un bout du monde à l'autre bout}
      \line{ C'est nous qui créons l'abondance}
      \line{ C'est nous tous qui produisons tout}
      \line{ Et nous vivons dans l'indigence}
      \vspace #1
      \line{ (Refrain)}
      \vspace #1
      \line{ L'Etat nous écrase d'impôts}
      \line{ Il faut payer ses juges, sa flicaille}
      \line{ Et si nous protestons trop haut}
      \line{ Au nom de l'ordre on nous mitraille}
      \line{ Les maîtres ont changés cent fois}
      \line{ C'est le jeu de la politique}
      \line{ Quels que soient ceux qui font les lois}
      \line{ C'est bien toujours la même clique}
    }
    \hspace #2
    \column {
      \line{ (Refrain)}
      \vspace #1
      \line{ Pour défendre les intérêts}
      \line{ Des flibustiers de la grande industrie}
      \line{ On nous ordonne d'être prêts}
      \line{ À mourir pour notre patrie}
      \line{ Nous ne possédons rien de rien}
      \line{ Nous avons horreur de la guerre}
      \line{ Voleurs, défendez votre bien}
      \line{ Ce n'est pas à nous de le faire}
      \vspace #1
      \line{ (Refrain)}
      \vspace #1
      \line{ Déshérités, soyons amis}
      \line{ Mettons un terme à nos tristes disputes}
      \line{ Debout! ne soyons plus soumis}
      \line{ Organisons la Grande Lutte}
      \line{ Tournons le dos aux endormeurs}
      \line{ Qui bercent la misère humaine}
      \line{ Clouons le bec aux imposteurs}
      \line{ Qui sèment entre nous la haine}
      \vspace #1
      \line{ (Refrain)}
      \vspace #1
      \line{ Partout sévit l'Autorité}
      \line{ Des gouvernants l'Internationale}
      \line{ Jugule notre liberté}
      \line{ Dont le souffle n'est plus qu'un râle}
      \line{ L'heure a sonné de réagir}
      \line{ En tous lieux la Révolte gronde}
      \line{ Compagnons, sachons nous unir}
      \line{ Contre tous les Maîtres du Monde}
      \vspace #1
      \line{ (Refrain) }
    }
    \hspace #1
  }
}
  