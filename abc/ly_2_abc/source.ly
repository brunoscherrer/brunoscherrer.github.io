\version "2.20.0"



\score {

  \new Staff {
    \new Voice

	 { \relative c''

	   {
	     

	     \key aes \major
	     \numericTimeSignature
	     \time 7/8

	     r2 f8[ ees c] ees8 r8 c8 r8 bes8 r8 aes | bes[ c]  f,4~ f4.~ | f2~ f4. | \break
	     r2 f'8[ ees f] aes8 r8 bes8 r8 ces[ bes aes] | bes[ aes] f4~ f4.~ | f2~ f4.  | \break
	     r2 f8[ ees c] ees8 r8 c8 r8 bes8 r8 aes | bes[ c]  f,4~ f8 g8 r8 aes2~ aes8 \tuplet 3/2 {g8 aes g} | \break
	     f2~ f4.~ | f2~ f4. | r2 r4 r8 | r2 r4 r8


	     
	     \mark \markup {\box \bold B}
	     bes'2~ bes8[ aes g] f2~ f4. | f2~ f8[ ees c] e r c r bes r c8 | \break
	     des2~ des8[ ees des] c2~ c4. | bes2~ bes8[ aes g] f r e r c4 r8 | \break
	     aes''2~ aes8[ g aes] g r f r c4 r8 | f2~ f8[ g f] e r c r bes r c8 | \break
	     des2~ des8[ ees des] c2~ c4~ c8 | bes2~ bes8[ aes g] fis2~ fis4.~  | fis2~ fis4.~  | fis2~ fis4. \bar "|." \break

	     
	     
	   }
	 }
    }
  }