\version "2.24.0"  

% variable instrumentEn  choix possible "Bb", "C", "Eb", "A", "F"
instrumentEn = "Bb"

NomMorceau = "Togo"
compositeur = "Henri Texier"
compositeurSmall = "H. Texier"
indent = 0

% à partir de la note de l'instrument transpositeur, on définit la note cible
% pour la transposition : lorqu'un instrument en Si b joue un Do de sa partition
% la note obtenue est un Si b => il faut donc transposer d'un ton sa partition
% de c (do) vers d (ré)
noteCibleTransposition = #(cond ((equal? instrumentEn "C") #{c #})
			   ((equal? instrumentEn "Bb") #{d #})
			   ((equal? instrumentEn "Eb") #{a #})
			   ((equal? instrumentEn "A") #{e #})
			   ((equal? instrumentEn "F") #{g #})
			   (else #{c #}))

pied = #(string-append NomMorceau " (" compositeurSmall ")" " - instruments en " instrumentEn)
titre = #(string-append NomMorceau " (" instrumentEn ")")

melodie = \relative c''{
  \tempo 2 = 104
  \key f \major
  \numericTimeSignature   % juste pour l'écriture 4/4 au lieu du défaut qui est C
  \time 4/4

  \newSpacingSection   
  \override Score.SpacingSpanner.spacing-increment = #1
  \mark \markup \abs-fontsize #11 {  "                 Intro (basse/batterie)" }
  | r1 |  r1 | r1 | r1 | r1 | r1 | r1 |
  
  |r4  \mark \markup \abs-fontsize #11 { "     Thème" } a4 d4 a8 bes8~ | 
  \bar ".|:-|"
  | bes1  | a4 bes8 f8 r8 a8 e4~ | e1 | r2 r4 f8 f8 |  a4 a8 f8 r8 f8 d8 r8 |
  | d4 a'4 f4 d4 | e1 | r2 e4 e4 | f1 | a4 bes8 f8 r8 a8 e4~ | e1 | r2 r4 f8 f8 |
  | a4 a8 f8 r8 f8 d4 | d4 e4 f4 d4 | e1 | r4 a4 d4 a8 bes8 |
  \bar ":|."  
}


harmonie = \chordmode{

  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
  \set noChordSymbol = ""

    \key f \major
    \time 4/4
    
    | g1:min7 | g1:min7 | a1:7 | a1:7 | g1:min7 | g1:min7 | a1:7 | a1:7 | 
  \bar ".|:-|"
  | g1:min7 | g1:min7 | a1:7 | a1:7 | g1:min7 | g1:min7 | a1:7 | a1:7 |
  | g1:min7 | g1:min7 | a1:7 | a1:7 | g1:min7 | g1:min7 | a1:7 | a1:7 |
    \bar ".|:-|"
}

harmoniebis = \chordmode{

  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
  \set noChordSymbol = ""

    \key f \major
    \time 4/4
  \bar ".|:-|"    
    | g1:min7 | g1:min7 | a1:7 | a1:7 |
    \bar ".|:-|"
}

basse = \relative c{
  \newSpacingSection   
  \override Score.SpacingSpanner.spacing-increment = #1
  \key f \major
  \numericTimeSignature   % juste pour l'écriture 4/4 au lieu du défaut qui est C
  \time 4/4
  \clef bass
  \bar ".|:-|"
   | g4 r8 d'8~ d4 g4 | r4 r8 d8~ d4 g,4 | a4 r8 e'8~e4 a4 | r4 r8 e8~ e4 a,4 |
  \bar ":|."  
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% essai de modif de représentation pour les accords
% (actuellement très peu d'accords...)

chExceptionMusic = {
      <c e g b>1-\markup {\super "M7" }
      <c e g bes>1-\markup {\super "7" }
      <c ees g bes>1-\markup {"m" \super "7" }
      <c ees ges bes>1-\markup {"m" \super "7 " \super \flat \super "5"}
      <c e g bes aes dis'>1-\markup {\super "7 Alt" }
}

chExceptions = #( append
        ( sequential-music-to-chord-exceptions chExceptionMusic #t)
    ignatzekExceptions)

%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\header {
  title = \titre
  tagline = \pied
  composer = \compositeur
}

\score {
  <<
  \new ChordNames {
     \transpose c \noteCibleTransposition
         \harmonie
    }
  \new Staff  
     \transpose c \noteCibleTransposition
        \melodie 
  >>

  \layout {
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 4 48)
    }
  }
}

\markup {
   \column {
      \vspace #0   
        \line {Ligne de basse de base}
           }
	}

\score {
  <<
  \new ChordNames {
     \transpose c \noteCibleTransposition
         \harmoniebis
    }
  \new Staff  
     \transpose c \noteCibleTransposition
        \basse
  >>

  \layout {
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 4 48)
    }
  }
}



