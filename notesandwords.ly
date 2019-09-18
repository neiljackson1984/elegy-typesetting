\version "2.18.2"

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


sopranonotesall =  
    \relative c'' {
        \tempo "Andante comodo."
        \autoBeamOff
        \partial 8                 a8 
        | \barNumberCheck #01      a a a a a4. a8 
        | \barNumberCheck #02      a d, e f g4. g8
        | \barNumberCheck #03      g4( a8) e f f e f
        | \barNumberCheck #04      d d d d e4. e8 
        | \barNumberCheck #05      a8 a8 a8 a8 a4. a8
        | \barNumberCheck #06      a a a a a4 a8 a 
        | \barNumberCheck #07      d d c c bes a g d 
        | \barNumberCheck #08      f e f g a4 a8 a8
        | \barNumberCheck #09      c8 c bes a c4. a8
        | \barNumberCheck #10      c c bes a c4. d8
        | \barNumberCheck #11      ees ees d c d4. d8 
        | \barNumberCheck #12      ees ees d c d4. d8 
        | \barNumberCheck #13      g f e d c4( d8) e
        | \barNumberCheck #14      f e d c bes4 c8 d
        | \barNumberCheck #15      e d c bes a a gis a
        | \barNumberCheck #16      d4. bes8 a4 g8 a
        | \barNumberCheck #17      a a a a a4. a8
        | \barNumberCheck #18      a a a a a4. a8
        | \barNumberCheck #19      bes bes a a g4. a8
        | \barNumberCheck #20      bes bes a a g4 a8[( g)]
        | \barNumberCheck #21      c f, a c d4. c8
        | \barNumberCheck #22      bes a bes c d4 g,4
        | \barNumberCheck #23      r4 a2.~
        | \barNumberCheck #24      a4 a2. 
        | \barNumberCheck #25      a2 a4 a
        | \barNumberCheck #26      a a a8 a a a
        | \barNumberCheck #27      a1 \fermata
        \bar "|."
    }



altonotesall = 
    \relative c' {
        \tempo "Andante comodo."
        \autoBeamOff
        \partial 8                 c8
        | \barNumberCheck #01      c c c c c4. c8
        | \barNumberCheck #02      d d c c b4. b8
        | \barNumberCheck #03      bes4. b8 a a a a
        | \barNumberCheck #04      a a a a gis4. gis8
        | \barNumberCheck #05      a e' d d cis4. d8
        | \barNumberCheck #06      e e e e ees4 ees8 ees
        | \barNumberCheck #07      d d d d d d d d
        | \barNumberCheck #08      d[( c]) d[( e]) f4 f8 f
        | \barNumberCheck #09      g2( fis8) fis g a
        | \barNumberCheck #10      g4 g a8 a g fis
        | \barNumberCheck #11      g4 g fis8 fis g a
        | \barNumberCheck #12      g4 g a8 a g fis
        | \barNumberCheck #13      g4 g g8 g g g
        | \barNumberCheck #14      f4 f f f8 f
        | \barNumberCheck #15      e4 e f f
        | \barNumberCheck #16      f8 f f f e4 e8 e8
        | \barNumberCheck #17      f8 f e e d4. e8
        | \barNumberCheck #18      f8 f e e d4. << f8 \\ d >>
        | \barNumberCheck #19      << f4 \\ d >> << f \\ d >> << f \\ d >> << f \\ d >>
        | \barNumberCheck #20      << f \\ d >> << f \\ d >> << f \\ des >> << e \\ des >>
        | \barNumberCheck #21      << f8 \\ c >> << f \\ f>> f f fis4. fis8
        | \barNumberCheck #22      fis fis fis fis fis4 g
        | \barNumberCheck #23      r4 a4 g8 g g a
        | \barNumberCheck #24      f4. f8 e e d d 
        | \barNumberCheck #25      e4 a,8 a d d d d
        | \barNumberCheck #26      dis4. dis8 e e d e
        | \barNumberCheck #27      f1 \fermata
        \bar "|."
    }





tenornotesall = 
    \relative c {
        \tempo "Andante comodo."
        \autoBeamOff
        \partial 8                 f8
        | \barNumberCheck #01      f f f f f4. f8
        | \barNumberCheck #02      f f f f f4. f8
        | \barNumberCheck #03      f4( e8) g f f f f 
        | \barNumberCheck #04      f f f f e4. e8
        | \barNumberCheck #05      e a a a a4. a8
        | \barNumberCheck #06      a a a a a4 g8 f
        | \barNumberCheck #07      f f fis fis g a bes bes
        | \barNumberCheck #08      bes4 bes a4 a8 << a \\ a >>
        | \barNumberCheck #09      << c1 \\ {\autoBeamOff g2( a8) a g fis} >>
        | \barNumberCheck #10      << {c'2~ c4. d8} \\ {\autoBeamOff g,4 g fis8 fis g a} >>
        | \barNumberCheck #11      << {ees'2 d} \\ {\autoBeamOff g,4 g a8 a g fis} >>
        <<
            { \autoBeamOff
                | \barNumberCheck #12      ees'4 ees d4. d8
                | \barNumberCheck #13      g8 f e d c4( d8) e
                | \barNumberCheck #14      f e d c bes4 c8 d
            } \\
            { \autoBeamOff
                | \barNumberCheck #12      g,4 g fis8 fis g a
                | \barNumberCheck #13      d[( g,]) bes[( d]) e e d c
                | \barNumberCheck #14      c[( f,]) a[( c]) d d c bes
            }
        >>
        | \barNumberCheck #15      bes4 d8 d c c c c 
        | \barNumberCheck #16      bes bes bes d bes4 bes8 a
        | \barNumberCheck #17      d, d e e f4. e8
        | \barNumberCheck #18      d d e e f4. f8
        | \barNumberCheck #19      g g a a bes4. a8
        | \barNumberCheck #20      g g a a bes4 bes
        <<
            { \autoBeamOff
                | \barNumberCheck #21      a8 c c c ees4. ees8
                | \barNumberCheck #22      ees ees ees ees d4 d
            } \\
            { \autoBeamOff
                | \barNumberCheck #21      a8 a a a a4. a8
                | \barNumberCheck #22      c c bes a a4 g4
            }
        >>    
        | \barNumberCheck #23      r4 a2.~ 
        | \barNumberCheck #24      a4 a2.
        | \barNumberCheck #25      a2 a4 a
        | \barNumberCheck #26      a a a8 a bes bes 
        | \barNumberCheck #27      a1 \fermata
        \bar "|."
    }

bassnotesall = 
    \relative c {
        \tempo "Andante comodo."
        \autoBeamOff
        \partial 8                 f8
        | \barNumberCheck #01      f f f f e4. e8
        | \barNumberCheck #02      d d d d d4. d8
        | \barNumberCheck #03      des4( c8) c d d c c
        | \barNumberCheck #04      bes bes bes bes b4. b8
        | \barNumberCheck #05      cis cis d d e4. d8
        | \barNumberCheck #06      cis cis cis cis c4 c8 c
        | \barNumberCheck #07      bes bes bes bes bes bes bes bes
        | \barNumberCheck #08      c4 c f f8 f
        | \barNumberCheck #09      ees2( d)
        | \barNumberCheck #10      ees d4 d
        | \barNumberCheck #11      c2 c
        | \barNumberCheck #12      c4 c c c 
        | \barNumberCheck #13      g g g' g,
        | \barNumberCheck #14      a a a' a,8 a
        | \barNumberCheck #15      g4 g a a
        | \barNumberCheck #16      bes8 bes g g c4 c
        | \barNumberCheck #17      c2 c4 c
        | \barNumberCheck #18      c2. c4
        | \barNumberCheck #19      c2. c4
        | \barNumberCheck #20      c2 c
        | \barNumberCheck #21      c2. c4
        | \barNumberCheck #22      c c bes bes
        | \barNumberCheck #23      r4 a' g8 g g a
        | \barNumberCheck #24      f4. f8 e e d d 
        | \barNumberCheck #25      e4 a,8 a bes bes bes bes 
        | \barNumberCheck #26      b4. b8 c c c c 
        | \barNumberCheck #27      << c1 \\ f,>> 
        \bar "|."
    }
