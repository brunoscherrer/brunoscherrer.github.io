\version "2.20.0"
% automatically converted by musicxml2ly from 1.mxl
\pointAndClickOff

\header {
    encodingsoftware =  "Audiveris 5.2.4"
    source =  "/home/scherrer/valsa_do_sul/1.png"
    encodingdate =  "2021-12-19"
    }

#(set-global-staff-size 16.4494285714)
\paper {
    
    paper-width = 16.25\cm
    paper-height = 9.14\cm
    top-margin = 1.15\cm
    bottom-margin = 1.15\cm
    left-margin = 1.15\cm
    right-margin = 1.15\cm
    indent = 1.25\cm
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative f''' {
    | % 1
    f8. \rest ^ "" \stemDown <f,, b>4 c'2 \rest \stemUp f,4 ( | % 3
    R1 | % 4
    \stemUp f4 _\prall \stemUp e8 \stemUp b4. ~ s16 | % 6
    f''''2. \rest s4 | % 7
    \stemUp f,,,,8 [ \stemUp g8 ] \stemUp b8 [ \stemUp a8 ] \stemUp g8 [
    \stemUp a8 ] s4 | % 9
    \stemUp d8 [ \stemUp c8 ] f''8 \rest \stemUp b,,,8 [ \stemUp c8 ]
    \stemUp e4 ~ \arpeggio s8 | % 11
    \stemUp f8 [ \stemUp e8 ] \stemUp d8 [ \stemUp e8 ] e''8 \rest
    \stemUp g,,8 [ \stemUp f8 ] s8 | % 12
    \stemUp eis8 [ \stemUp f8 ] \stemUp a4. \stemUp g8 s4 | % 13
    \stemUp f8 [ \stemUp g8 ] \stemUp b8 [ \stemUp a8 ] \stemUp gis8 [
    \stemUp a8 ] s4 \break | % 14
    a'4 \rest \stemUp ais,8 ) [ \stemUp c8 ] \stemDown e8 [ \stemDown f8
    ( ] \stemDown g4 ) ~ | % 15
    \stemDown g8 [ \stemDown f8 ^\prall ] \stemDown eis8 [ \stemDown f8
    ] \stemDown a8 [ \stemDown g8 \stemDown g8 ] s8 | % 16
    \stemDown f2. a'8 \rest s8 | % 17
    b,,2 \rest \stemUp a4 ~ \bar "||"
    s4 | % 18
    \stemUp a4. \stemUp g8 \stemUp f8 [ \stemUp a8 ] s4 | % 19
    \stemUp d,8 [ \stemUp f8 ] \stemUp c8 [ \stemUp a8 ] \stemUp b4
    \stemUp g'4 | \barNumberCheck #20
    \stemUp f4 _\prall \stemUp e8 \stemUp b4. ( }

PartPOneVoiceThree =  \relative a''' {
    s1*9 \break | % 14
    s4. a8 \rest s4*13 \bar "||"
    }

PartPOneVoiceTwo =  \relative d' {
    s1 \stemUp d8 [ \stemUp f8 ] \stemUp b,8 [ \stemUp ais8 ] \stemUp b4
    \stemUp g'4 s1 \stemUp b,4. \stemUp a8 \stemUp e8 [ \stemUp e8 ]
    s4*21 \break | % 14
    \stemUp a'2 ( s4*13 \bar "||"
    }


% The score definition
\score {
    <<
        
        \new Staff
        <<
            \set Staff.instrumentName = "Voice"
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \voiceOne \PartPOneVoiceOne }
                \context Voice = "PartPOneVoiceThree" {  \voiceTwo \PartPOneVoiceThree }
                \context Voice = "PartPOneVoiceTwo" {  \voiceThree \PartPOneVoiceTwo }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 120 }
    }

