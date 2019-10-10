\version "2.18.2"

versionCode = #(strftime "%Y-%m-%d-%H-%M" (localtime (current-time)))

\header{
    title = \markup{ \caps {Elegy} } 
    composer = "Vasily Sergeyevich Kalinnikov (1866 – 1901)"
    poet = \markup {
      \column {
        \line {
          "words by Alexander Pushkin"
        }
        \line {
            % phonetization for English speakers by Yuly Kopkin
        }
      }
   }
    % arranger = "typeset by Neil Jackson"
    % breakbefore = ##f
}

\paper{
    % oddFooterMarkup = \markup{  \teeny { "version: " \versionCode }}
    % oddFooterMarkup = \markup{  \teeny { "version: " \versionCode }}
    % \void #(begin (newline)(display "oddFooterMarkup: "))
    % \displayScheme \oddFooterMarkup
    
% (markup
%   #:line
%   (#:column
%    (#:fill-line
%     (#:on-the-fly
%      part-first-page
%      (#:fromproperty (quote header:copyright)))
%     #:fill-line
%     (#:on-the-fly
%      last-page
%      (#:fromproperty (quote header:tagline))))))
    oddFooterMarkup = 
        \markup{
            \line{
                \column{
                    \fill-line{
                        \on-the-fly \part-first-page { \fromproperty #'header:copyright }
                    }
                    \fill-line{
                        \on-the-fly \last-page { \fromproperty #'header:tagline }
                    }
                    \fill-line{
                        \line{ \teeny { "version: " \versionCode } } \null
                    }
                }
            }
        }

    % \void #(begin (newline)(display "oddFooterMarkup: "))
    % \displayScheme \oddFooterMarkup
} 
   

\include "bookTemplate.liy"
