\version "2.18.2"
#(ly:set-option 'point-and-click #f)
\include "utility.liy"
\include "notesandwords.liy"


    
numberedSyllableDummyLyrics = 
    #(define-scheme-function
        (parser location prefix syllableCount)
        ((string? "") (number? 1000))
        ;(define syllableStrings 
        ;    (map-in-order
        ;        (lambda (i)
        ;            
        ;        )
        ;        
        ;    )
        ;)
        (make-sequential-music

            (map-in-order
                (lambda (i)
                    (make-music 'LyricEvent 'duration (ly:make-duration 0 0 1) 'text 
                        (markup #:line (#:simple prefix #:sub (number->string i)))
                        ;(string-append prefix (number->string i))
                    )
                )
                (iota syllableCount)
            )
            
            ;% (list 
            ;    % (make-music
            ;        % 'LyricEvent
            ;        % 'text
            ;        % "g"
            ;        % 'duration
            ;        % (ly:make-duration 0 0 1)
            ;    % )
            ;    % (make-music
            ;        % 'LyricEvent
            ;        % 'text
            ;        % "h"
            ;        % 'duration
            ;        % (ly:make-duration 0 0 1)
            ;    % )
            ;    % (make-music
            ;        % 'LyricEvent
            ;        % 'text
            ;        % "j"
            ;        % 'duration
            ;        % (ly:make-duration 0 0 1)
            ;    % )
            ;% )
        )   
    )
    % #(lambda (syllableCount) 
        % "a b c"
    % )


 
#(set-global-staff-size 16)


\paper
{
	% line-width = 6.5\in
    left-margin = 1\in
    right-margin = 1\in
	
	print-first-page-number = ##t
	#(set-paper-size "letter")
	% ragged-bottom = ##t
	print-all-headers = ##t
	% system-count = #4

	oddHeaderMarkupOld = #oddHeaderMarkup
 	oddHeaderMarkup = #evenHeaderMarkup
	evenHeaderMarkup = #oddHeaderMarkupOld
	scoreTitleMarkup = #bookTitleMarkup 
}


scorecontents = {


	\new ChoirStaff
	<<

		\new Staff = "soprano"
		<<
			\set Staff.instrumentName = "soprano"
			

			\new Voice = "soprano"
			<<
				\clef treble
				\sopranoMusic
			>>
			%\new Voice = hiddenlayoutvoice	\breakMask
		>>
		\new Lyrics \lyricsto "soprano" {\numberedSyllableDummyLyrics "s" \default }

		
		\new Staff = "alto"
		<<
			\set Staff.instrumentName = "alto"
			\new Voice = "alto"
			<<
				\clef treble
				\altoMusic
			>>
			%\new Voice = hiddenlayoutvoice \breakMask
		>>
		\new Lyrics \lyricsto "alto" {\numberedSyllableDummyLyrics "a" \default }
		

		\new Staff = "tenor" \with{\RemoveEmptyStaves }
		<<
			\set Staff.instrumentName = "tenor"
			\new Voice = "tenor"
			<<
				\clef "treble_8"
				\tenorMusic
			>>
			%\new Voice = hiddenlayoutvoice \breakMask
		>>
		\new Lyrics \lyricsto "tenor" {\numberedSyllableDummyLyrics "t" \default }

		\new Staff = "bass"
		<<
			\set Staff.instrumentName = "bass"
			\new Voice = "bass"
			<<
				\clef bass
				\bassMusic
			>>
			%\new Voice = hiddenlayoutvoice \breakMask
		>>
		\new Lyrics \lyricsto "bass" {\numberedSyllableDummyLyrics "b" \default }
	>>
}


\book{
    \header{
        tagline =  "Engraved 2019 in Seattle for The Meridian Ensemble; Yuly Kopkin, Artistic Director"
    }

    \score{

        \transpose c c \scorecontents

        \layout {
            %indent = 1\in

            \context{
                \Staff
                %\remove Instrument_name_engraver
            }

            \context{
                \Lyrics
                 \override LyricText.color=#red
                 % \override LyricText.color=#white
                 % \override LyricText.font-size=#9
            }
        }
        
        \header{
            title = \markup{ \caps {Elegy} } 
            composer = "Vasily Sergeyevich Kalinnikov (1866 – 1901)"
            poet = \markup {
              \column {
                \line {
                  "words by CROBA, A PIRANHA"
                }
                \line {
                    % phonetization for English speakers by Yuly Kopkin
                }
              }
           }
            % arranger = "typeset by Neil Jackson"
            % breakbefore = ##f
        }
        \midi{  
            \context {
                \Score
                tempoWholesPerMinute = #(ly:make-moment 60 4)	
                midiMinimumVolume = #0.7
                midiMaximumVolume = #0.7
                midiInstrument = #"voice oohs"
            }
        }
    }	   
}