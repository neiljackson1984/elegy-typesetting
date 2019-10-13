\version "2.18.2"



\header{
    title = \markup{ \caps {The Sea and the Cliff (IN-PROGRESS - DO NOT USE)} } 
    composer = "Mikhail Vasilyevich Antsev (1865 – 1945)"
    poet = \markup {
      \column {
        \line {
          "words by Fyodor Ivanovich Tyutchev (1803 – 1873)"
        }
        \line {
            phonetization by Yuly Vladimirovich Kopkin  (1981 – )
        }
      }
   }
    % arranger = "typeset by Neil Jackson"
    % arranger="version = 2019/09/25"
    % breakbefore = ##f
}

%% \void \displayMusic { a \p b c \once {\set crescendoText = \markup { \italic "poco cresc." } \set crescendoSpanner = #'text } d\< e f\!\ff a a  }

%% \void #(begin (newline)(newline)(display "VARIANT 1: ")) 
%% \displayMusic <<  {e='4~\> e8\! r8 d='4. fis8} {cis='4~ cis8 r8 d='4. d8} >> 

%% \void #(begin (newline)(newline)(display "VARIANT 2: ")) 
%% \displayMusic << \context Voice="alto1" {e='4~\> e8\! r8 d='4. fis8} \context Voice="alto2" {cis='4~ cis8 r8 d='4. d8} >> 

%% xppp = \tweak stencil ##f \ppp
%% zeroDuration=#(ly:make-duration 0 0 0 1) 
%% zeroDurationCrescendoTerminator=#(make-music
          %% 'SkipEvent
          %% 'articulations
          %% (list ;(make-music
                %% ;  'CrescendoEvent
                %% ;  'span-direction
                %% ;  1)
                %% (make-music
                  %% 'AbsoluteDynamicEvent
                  %% 'tweaks
                  %% (list (cons (quote stencil) #f))
                  %% 'text
                  %% "pp")
            %% )
          %% 'duration zeroDuration
          %% )

%% \void \displayMusic {a4\p a\> \zeroDurationCrescendoTerminator c4\p\< c\!}
%% \void \displayMusic { a4 \xppp }



\include "bookTemplate.liy"

