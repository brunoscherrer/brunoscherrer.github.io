\version "2.7.40"
\header {
  composer = "B. Scherrer"
  crossRefNumber = "1"
  footnotes = ""
  tagline = "Lily was here 2.22.1 -- automatically converted from ABC"
  title = "La revanche du triton"
}
voiceB =  {
  \set Score.defaultBarType = ""

  a'16 ^"Cm9"[   bes'16    a'16    g'16]    a'16[    bes'16]    r16   c''16
  r16   d''16    r16   des''16   ~    \bar "|"     des''16 ^"GbM7"[   c''16
  bes'16    aes'16]    bes'2    \bar "|"     r4 ^"AbM7"   aes'16[    bes'16]
  r16   aes'!16    r16   g'16[    f'8   ~]    \bar "|"     f'2. ^"BbM7"
  \bar "|"       a'!16 ^"Cm9"[   bes'16    a'16    g'16]    a'16[    bes'16]
  r16   c''16    r16   d''16    r16   des''16   ~    \bar "|"     des''16 ^"GbM7"[
  c''16    bes'16    aes'16]    bes'2    \bar "|"     r4 ^"AbM7"   g'16[
  aes'16]    r16   bes'16    r16   c''16[    bes'8   ~]    \bar "|"     bes'2.
  ^"EbM7"   \bar "|"       d''16 ^"Gm"[   ees''16    d''16    c''16]    d''2
  \bar "|"     d''16 ^"Gm7M/Gb"[   ees''16    d''16    c''16]    d''2    \bar "|"
  d''16 ^"Gm7/F"[   ees''16    d''16    c''16]    d''16[    ees''16]    r16
  d''16    r16   c''16    c''8   ~    \bar "|"     c''2. ^"Gm6/Eb"   \bar "|"
  bes'16 ^"EM7"[   c''16    bes'16    a'!16]    bes'2    \bar "|"     aes'16
  ^"GbM7"[   bes'16    aes'!16    ges'16]    aes'!2    \bar "|"     aes'16
  ^"AbM7"[   bes'16    aes'!16    g'!16]    aes'!4.    bes'16[    a'!16   ~]
  \bar "|"     a'!2. ^"BbM7"   \bar "|"
}
voiceC =  {
  \set Score.defaultBarType = ""

  <<   d''16[    f''16   >>   <<   d''16    f''16   >>   <<
    d''16    bes'16
  >>   <<   d''16    f''16   >>
}
voiceD =  {
  \set Score.defaultBarType = ""

  \clef "bass"
  c8.[    g16]    d'8.    c8    g8    d'16    \bar "|"   ges,8.[    des16]
  aes8.    ges,!8    des!8    aes!16    \bar "|"   aes,8.[    ees16]    g8.
  aes,!8    ees8    g16    \bar "|"   bes,8.[    f16]    a8.    bes,8    f8
  a16    \bar "|"     c8.[    g16]    d'8.    c8    g8    d'16    \bar "|"
  ges,8.[    des16]    aes8.    ges,!8    des!8    aes!16    \bar "|"   aes,8.[
  ees16]    g8.    aes,!8    ees8    g16    \bar "|"   ees8.[    g16]    bes8.
  ees8    g8    bes16    \bar "|"     g8.[    bes16]    d'8.    g8    bes8
  d'16    \bar "|"   ges8.[    bes16]    d'8.    ges!8    bes8    d'16
  \bar "|"   f8.[    bes16]    d'8.    f8    bes8    d'16    \bar "|"   e8.[
  bes16]    d'8.    e8    bes8    d'16    \bar "|"     ees8.[    g16]    d'8.
  ees'8    g8    d'16    \bar "|"   ges,8.[    des16]    aes8.    ges,!8    des!8
  aes!16    \bar "|"   aes,8.[    ees16]    g8.    aes,!8    ees8    g16
  \bar "|"   bes,8.[    f16]    a8.    bes,8    f8    a16    \bar "|"
}
voicedefault =  {
  \set Score.defaultBarType = ""

  % %score 1 2 3
  \time 3/4 \key bes \major
}

\score{
  <<

    \context Staff="1"
    {
      \voicedefault
      \voiceB
    }

    \context Staff="2"
    {
      \voicedefault
      \voiceC
    }

    \context Staff="3"
    {
      \voicedefault
      \voiceD
    }

  >>
  \layout {
  }
  \midi {}
}
