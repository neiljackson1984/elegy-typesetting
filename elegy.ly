\version "2.18.2"
#(ly:set-option 'point-and-click #f)
\include "utility.liy"
\include "notesandwords.liy"


 

 
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

		\new Staff = "soprano-staff"
		<<
			\set Staff.instrumentName = "soprano"
			\new Voice = "dummyKeepAliveVoiceForSopranoStaff" { \dummyKeepAliveMusic }

			\new Voice = "soprano"
			<<
				\clef treble
				\sopranoMusic
			>>
			%\new Voice = hiddenlayoutvoice	\breakMask
		>>
		\new Lyrics = "lyricsUnderSopranoStaff" \lyricsto "soprano" {\numberedSyllableDummyLyrics "s" \default }

		
		\new Staff = "alto-staff"
		<<
			\set Staff.instrumentName = "alto"
            \new Voice = "dummyKeepAliveVoiceForAltoStaff" { \dummyKeepAliveMusic }
			\new Voice = "alto"
			<<
				\clef treble
				\altoMusic
			>>
			%\new Voice = hiddenlayoutvoice \breakMask
		>>
		\new Lyrics = "lyricsUnderAltoStaff" \lyricsto "alto" {\numberedSyllableDummyLyrics "a" \default }
		

        \new Lyrics = "lyricsAboveTenorStaff"  {  } 
		\new Staff = "tenor-staff" \with{\RemoveEmptyStaves }
		<<
			\set Staff.instrumentName = "tenor"
            \clef "treble_8"
            \new Voice = "dummyKeepAliveVoiceForTenorStaff" { \dummyKeepAliveMusic }
			\new Voice = "tenor1" { \tenorMusic }
            \new Voice = "tenor2" { }
			%\new Voice = hiddenlayoutvoice \breakMask
		>>
        \new Lyrics = "lyricsUnderTenorStaff" { 
             \dummyKeepAliveMusic
        } 

        \new StaffGroup = "tenorStaffGroup" 
            \with {\RemoveEmptyStaves }
                <<
                    \new Staff = "tenor1-staff" \with { } {
                        \override Staff.VerticalAxisGroup.remove-first = ##t
                        \set Staff.instrumentName = "tenor 1"
                        \set Staff.shortInstrumentName = "tenor 1"
                        \clef "treble_8"
                        \new Voice = "dummyKeepAliveVoiceForTenor1Staff" { \dummyKeepAliveMusic }
                    } 
                    \new Lyrics = "lyricsUnderTenor1Staff" {  }                     
                    \new Staff = "tenor2-staff"  \with { }  {
                        \override Staff.VerticalAxisGroup.remove-first = ##t
                        \set Staff.instrumentName = "tenor 2"
                        \set Staff.shortInstrumentName = "tenor 2"
                        \clef "treble_8" 
                        \new Voice = "dummyKeepAliveVoiceForTenor2Staff" { \dummyKeepAliveMusic }
                    }
                    \new Lyrics = "lyricsUnderTenor2Staff" {  } 
                >>

		\new Staff = "bass-staff"
		<<
			\set Staff.instrumentName = "bass"
            \new Voice = "dummyKeepAliveVoiceForBassStaff" { \dummyKeepAliveMusic }
			\new Voice = "bass"
			<<
				\clef bass
				\bassMusic
			>>
			%\new Voice = hiddenlayoutvoice \breakMask
		>>
		\new Lyrics = "lyricsUnderBassStaff" \lyricsto "bass" {\numberedSyllableDummyLyrics "b" \default }
        
        \new Lyrics \lyricsto "tenor1"
        {
            \context Lyrics = "lyricsUnderTenorStaff" { 
                \set associatedVoice = "tenor1"
                \numberedSyllableDummyLyrics "t1" 1 56
            }
            \context Lyrics = "lyricsUnderTenor1Staff"  {
                \set associatedVoice = "tenor1"
                \numberedSyllableDummyLyrics "t1" 57 17
            }
            \context Lyrics = "lyricsUnderTenorStaff"  { 
                \set associatedVoice = "tenor1"
                \numberedSyllableDummyLyrics "t1" 74 62
            }   
            % \context Lyrics = "lyricsUnderTenorStaff"  { 
                % \lyricmode{ a8 }
                % \numberedSyllableDummyLyrics "t" 1 11
            % }
            % \context Lyrics = "lyricsUnderTenor1Staff"  {
                % % \numberedSyllableDummyLyrics "t1" 12 3
                % \lyricmode{"t12"1} s1 \lyricmode{"t14"1}
            % }
            % \context Lyrics = "lyricsUnderTenorStaff"  { 
                % \numberedSyllableDummyLyrics "t" 15 13
            % }          
        }  
        
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
            
            \context{
                \Voice
                \autoBeamOff
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
        % \midi{  
            % \context {
                % \Score
                % tempoWholesPerMinute = #(ly:make-moment 60 4)	
                % midiMinimumVolume = #0.7
                % midiMaximumVolume = #0.7
                % midiInstrument = #"voice oohs"
            % }
        % }
    }	   
}