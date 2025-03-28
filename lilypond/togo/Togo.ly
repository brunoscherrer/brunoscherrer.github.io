\version "2.20.0"  

% variable instrumentEn  choix possible "Bb", "C", "Eb", "A", "F"
instrumentEn = "Eb"

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
  \tempo 4 = 100
  \key g \major
  \numericTimeSignature   % juste pour l'écriture 4/4 au lieu du défaut qui est C
  \time 4/4

  \newSpacingSection   
  \override Score.SpacingSpanner.spacing-increment = #1
  \mark \markup \abs-fontsize #11 {  "                 Intro (basse/batterie)" }
  |             r1 |  r1              | r1                                                        |
  
  |r2 r8 \mark \markup \abs-fontsize #11 { "     Thème" } b8 e8 b8 | 
  \bar ".|:"
    | c2 b8 c16 g16~g16 b16 fis8~ | fis2. r8 g16 g16 | b8  b16 g16~ g16 g8  e16~ e16 e16 b'8 g8 e8  | fis2. fis8 fis8
    | g2 b8 c16 g16~g16 b16 fis8~ | fis2. r8 g16 g16 | b8  b16 g16~ g16 g8  e16~ e16 e16 fis8 g8 e8 | fis2 r8 b8 e8 b8 | 
  \bar ":|."  
}


harmonie = \chordmode{

  \set Score.markFormatter = #format-mark-box-alphabet
  \set noChordSymbol = ""

    \key g \major
    \time 4/4
    
    | a1:min7 | b1:7 | a1:min7 | b1:7 | 
    \bar ".|:"
    | a1:min7 | b1:7 | a1:min7 | b1:7 | 
    | a1:min7 | b1:7 | a1:min7 | b1:7 | 
    \bar ".|:"
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
  \midi {
    \Score
    }
}



