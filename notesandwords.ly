wx =	%	7 syllables
\lyricmode{
vi -- gnes, vi -- gnes, vi -- gno -- let, 
}

wy =	%	2 syllables
\lyricmode{
Mar -- got,
}

wz =	%	2 syllables
\lyricmode{
bien -- tot.
}


wa = 	%	8 syllables
\lyricmode{
Mar -- got, la -- bou -- rez les vi -- gnes, 
}

wb = 	%	8 syllables
\lyricmode{
En re -- ve -- nant de Lor -- rai -- ne, 
}

wc =	%	8 syllables
\lyricmode{
Ren -- con -- trai trois ca -- pi -- tai -- nes,
}

wd = 	%	8 syllables
\lyricmode{
Ils m'ont ap -- pe  -- le vi -- lai -- ne,
}

we = 	%	8 syllables
\lyricmode{
Je ne suis pas si vi -- lai -- ne
}

wf =	%	8 syllables
\lyricmode{
Puis -- que le fils du roi m'ai -- me,
}

wg =	%	8 syllables
\lyricmode{
Il m'a don -- ne pour e -- tren -- ne,
}

wh =	%	8 syllables
\lyricmode{
Un bou -- quet de Mar -- jo -- lai -- ne,
}

wi =	%	8 syllables
\lyricmode{
S'il fleu -- rit, je ser -- ais rei -- ne,
}

wj =	%	8 syllables
\lyricmode{
S'il y meurt, je perds ma pei -- ne,
}

refrain = {\wa \wx \wa \wz}

wordsall = 
{
	%{music A%} \refrain
	%{music B%} \tag #'deleteone {\wb \wy} \wb \wy \tag #'deletetwo {\wc} \tag #'deletethree {\wx \wa \wz}

	%{music A%} \refrain
	%{music A%} \wd \wx \wd \wz
	%{music B%} \tag #'deleteone {\we \wy} \we \wy \tag #'deletetwo {\wf} \tag #'deletethree {\wx \wa \wz}

	%{music A%} \refrain
	%{music A%} \wg \wx \wg \wz
	%{music B%} \tag #'deleteone {\wh \wy} \wh \wy \tag #'deletetwo {\wi} \tag #'deletethree {\wx \wj \wz}

	%{music A%} \refrain
}


sopranowordsall = \removeWithTag #'deleteone \wordsall
altowordsall = \removeWithTag #'deleteone \wordsall
tenorwordsall = \removeWithTag #'deletetwo \wordsall
basswordsall = \removeWithTag #'deletethree {\removeWithTag #'deletetwo \wordsall}




breakMask = {
	\mark \markup{\box "1 (A)"}	%{music A%} \repeat unfold 14 { s1 } \bar "||" \break
	\mark \markup{\box "2 (B)"}	%{music B%} \repeat unfold 26 { s1 } \bar "||" \break

	\mark \markup{\box "3 (A)"}	%{music A%} \repeat unfold 14 { s1 } \bar "||" \break
	\mark \markup{\box "4 (A)"}	%{music A%} \repeat unfold 14 { s1 } \bar "||" \break
	\mark \markup{\box "5 (B)"}	%{music B%} \repeat unfold 26 { s1 } \bar "||" \break

	\mark \markup{\box "6 (A)"}	%{music A%} \repeat unfold 14 { s1 } \bar "||" \break
	\mark \markup{\box "7 (A)"}	%{music A%} \repeat unfold 14 { s1 } \bar "||" \break
	\mark \markup{\box "8 (B)"}	%{music B%} \repeat unfold 26 { s1 } \bar "||" \break

	\mark \markup{\box "9 (A)"}	%{music A%} \repeat unfold 14 { s1 } 
	\bar "|."
}






timeandkey = 
{
	\key f \major 
	\time 4/4 
}


sopranonotesA =  
\relative c'' 
{
	\tempo "Andante comodo."
	\autoBeamOff
	%{measure 001%}	\partial 8 a8 
	%{measure 002%}	a a a a a4. a8 
	%{measure 003%}	a d, e f g4. g8
	%{measure 004%}	g4( a8) e f f e f
	%{measure 005%}	d d d d e4. e8 
	%{measure 006%}	a8 a8 a8 a8 a4. a8
	%{measure 007%}	a a a a a4 a8 a 
	%{measure 008%}	d d c c bes a g d 
	%{measure 009%}	f e f g a4 a8 a8
	%{measure 010%}	c8 c bes a c4. a8
	%{measure 011%}	c c bes a c4. d8
	%{measure 012%}	ees ees d c d4. d8 
	%{measure 013%}	ees ees d c d4. d8 
	%{measure 014%}	g f e d c4( d8) e
	%{measure 015%}	f e d c bes4 c8 d
	%{measure 016%}	e d c bes a a gis a
	%{measure 017%}	d4. bes a4 g8 a
	%{measure 018%}	a a a a a4. a8
	%{measure 019%}	a a a a a4. a8
	%{measure 020%}	bes bes a a g4. a8
	%{measure 021%}	bes bes a a g4 a8( g)
	%{measure 022%}	c f a c d4. c8
	%{measure 023%}	bes a bes c d4 g4
	%{measure 023%}	r4 a1
	%{measure 025%}	a2. 
	%{measure 026%}	a2 a4 a
	%{measure 027%}	a a a8 a a a
	%{measure 028%}	a1
	
}







altonotesA = 
\relative c' 
{
	%{measure 001%}	d2 g
	%{measure 002%}	e e
	%{measure 003%}	d d 
	%{measure 004%}	d b 
	%{measure 005%}	d d 
	%{measure 006%}	b d 
	%{measure 007%}	e fis 
	%{measure 008%}	g d2~ 
	%{measure 009%}	d2 g2 
	%{measure 010%}	e e 
	%{measure 011%}	d d 
	%{measure 012%}	d c 
	%{measure 013%}	d1
	%{measure 014%}	b1
}

altonotesB = 
\relative c' 
{
	%{measure 015%}	r1 
	%{measure 016%}	r1
	%{measure 017%}	r1 
	%{measure 018%}	r1 
	%{measure 019%}	r1 
	%{measure 020%}	r1 
	%{measure 021%}	e2 e 
	%{measure 022%}	fis g 
	%{measure 023%}	a b 
	%{measure 024%}	a g2~ 
	%{measure 025%}	g2 fis2 
	%{measure 026%}	g d 
	%{measure 027%}	g fis 
	%{measure 028%}	e d2~ 
	%{measure 029%}	d2 e2 
	%{measure 030%}	d b 
	%{measure 031%}	b b 
	%{measure 032%}	g g' 
	%{measure 033%}	e fis 
	%{measure 034%}	g d2~ 
	%{measure 035%}	d2 d2 
	%{measure 036%}	e g 
	%{measure 037%}	fis e 
	%{measure 038%}	d g2~ 
	%{measure 039%}	g2 fis2 
	%{measure 040%}	g1 
}





tenornotesA = 
\relative c' 
{
	%{measure 001%}	b2 d 
	%{measure 002%}	c b 
	%{measure 003%}	a g 
	%{measure 004%}	fis d 
	%{measure 005%}	g d 
	%{measure 006%}	g d 
	%{measure 007%}	g a 
	%{measure 008%}	b1 
	%{measure 009%}	b2 d 
	%{measure 010%}	c b 
	%{measure 011%}	a g 
	%{measure 012%}	fis g 
	%{measure 013%}	a1
	%{measure 014%}	g1 
}

tenornotesB = 
\relative c' 
{
	%{measure 015%}	g2 g 
	%{measure 016%}	d' d 
	%{measure 017%}	d d 
	%{measure 018%}	e e 
	%{measure 019%}	d1 
	%{measure 020%}	b1 
	%{measure 021%}	b2 g 
	%{measure 022%}	a b 
	%{measure 023%}	a g 
	%{measure 024%}	c c 
	%{measure 025%}	a1 
	%{measure 026%}	g1
	%{measure 027%}	r1 
	%{measure 028%}	r1 
	%{measure 029%}	r1 
	%{measure 030%}	r1 
	%{measure 031%}	g2 g 
	%{measure 032%}	b b 
	%{measure 033%}	c a 
	%{measure 034%}	g1 
	%{measure 035%}	g2 b 
	%{measure 036%}	a g 
	%{measure 037%}	d' e 
	%{measure 038%}	a, e' 
	%{measure 039%}	d1
	%{measure 040%}	g,1
}





bassnotesA = 
\relative c 
{
	%{measure 001%}	g'2 g 
	%{measure 002%}	a e 
	%{measure 003%}	fis g 
	%{measure 004%}	d g, 
	%{measure 005%}	g g 
	%{measure 006%}	g b 
	%{measure 007%}	c a 
	%{measure 008%}	g1 
	%{measure 009%}	g'2 g 
	%{measure 010%}	a e 
	%{measure 011%}	fis g 
	%{measure 012%}	d e 
	%{measure 013%}	d1 
	%{measure 014%}	g,1 
}

bassnotesB = 
\relative c 
{
	%{measure 015%}	g'2 e 
	%{measure 016%}	fis g 
	%{measure 017%}	g b 
	%{measure 018%}	a g 
	%{measure 019%}	fis4( e g fis) 
	%{measure 020%}	g1 
	%{measure 021%}	e2 e 
	%{measure 022%}	d g 
	%{measure 023%}	fis g 
	%{measure 024%}	c, c 
	%{measure 025%}	d1 
	%{measure 026%}	g,1
	%{measure 027%}	r1 
	%{measure 028%}	r1 
	%{measure 029%}	r1 
	%{measure 030%}	r1 
	%{measure 031%}	r1 
	%{measure 032%}	r1 
	%{measure 033%}	r1 
	%{measure 034%}	r1 
	%{measure 035%}	r1 
	%{measure 036%}	r1 
	%{measure 037%}	r1 
	%{measure 038%}	r1  
	%{measure 039%}	r1
	%{measure 040%}	r1
}

sopranonotesall =
{
	\sopranonotesA
}


altonotesall =
{
	\altonotesA
	\altonotesB

	\altonotesA
	\altonotesA
	\altonotesB

	\altonotesA
	\altonotesA
	\altonotesB

	\altonotesA
}


tenornotesall =
{
	\tenornotesA
	\tenornotesB

	\tenornotesA
	\tenornotesA
	\tenornotesB

	\tenornotesA
	\tenornotesA
	\tenornotesB

	\tenornotesA
}


bassnotesall =
{
	\bassnotesA
	\bassnotesB

	\bassnotesA
	\bassnotesA
	\bassnotesB

	\bassnotesA
	\bassnotesA
	\bassnotesB

	\bassnotesA
}