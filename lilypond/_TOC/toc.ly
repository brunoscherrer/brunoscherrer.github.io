\version "2.20.0"


\header {
  title = "Huit miniatures"
  composer = "Igor Stravinsky"
}

\book{

\markuplist \table-of-contents
\pageBreak

\tocItem \markup "Première partie"
\score {
  {
    c'4
    \tocItem \markup "Passage spécifique de la première partie"
    d'4
  }
}

\pageBreak

\tocItem \markup "Seconde partie"
\score {
  {
    e'4
   %\tocItem actI \markup "Acte I"
    f'4
  %  \tocItem actI.sceneI \markup "Scène 1"
    g'4
  %  \tocItem actI.sceneI.recitativo \markup "Récit."
    a'4
  }
}

}