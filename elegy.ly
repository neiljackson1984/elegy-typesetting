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
		

        \new Lyrics = "lyricsAboveTenorStaff" \with {
          % lyrics above a staff should have this override
          \override VerticalAxisGroup.staff-affinity = #DOWN
        } { \dummyKeepAliveMusic } 
		\new Staff = "tenor-staff" \with{\RemoveEmptyStaves }
		<<
			\set Staff.instrumentName = "tenor"
            \clef "treble_8"
            \new Voice = "dummyKeepAliveVoiceForTenorStaff" { \dummyKeepAliveMusic }
			\new Voice = "tenor1" { \tenorMusic }
            \new Voice = "tenor2" {   \dummyKeepAliveMusic   }
			%\new Voice = hiddenlayoutvoice \breakMask
		>>
        \new Lyrics = "lyricsUnderTenorStaff" { 
             \dummyKeepAliveMusic
        } 

        \new StaffGroup = "tenorStaffGroup" 
            \with {\RemoveEmptyStaves }
                <<
                    \new Lyrics = "lyricsAboveTenor1Staff" {  } 
                    \new Staff = "tenor1-staff" \with { } {
                        \override Staff.VerticalAxisGroup.remove-first = ##t
                        \set Staff.instrumentName = "tenor 1"
                        \set Staff.shortInstrumentName = "tenor 1"
                        \clef "treble_8"
                        \new Voice = "dummyKeepAliveVoiceForTenor1Staff" { \dummyKeepAliveMusic }
                    } 
                    \new Lyrics = "lyricsUnderTenor1Staff" \with { alignBelowContext = #"tenor1-staff" } { \dummyKeepAliveMusic  }                     
                    \new Staff = "tenor2-staff"  \with { }  {
                        \override Staff.VerticalAxisGroup.remove-first = ##t
                        \set Staff.instrumentName = "tenor 2"
                        \set Staff.shortInstrumentName = "tenor 2"
                        \clef "treble_8" 
                        \new Voice = "dummyKeepAliveVoiceForTenor2Staff" { \dummyKeepAliveMusic }
                    }
                    \new Lyrics = "lyricsUnderTenor2Staff"  \with { alignBelowContext = #"tenor2-staff" } { \dummyKeepAliveMusic  } 
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
        
		\new Lyrics = "diagnosticLyrics" { \dummyKeepAliveMusic }
        
        \new Lyrics \lyricsto "tenor1"
        {
            \context Lyrics = "lyricsUnderTenorStaff" { 
                % \set associatedVoice = "tenor1"
                \numberedSyllableDummyLyrics "t1" 1 51
            }
            \context Lyrics = "lyricsUnderTenor1Staff" { 
                % \set associatedVoice = "tenor1"
                \numberedSyllableDummyLyrics "t1" 52 5
            }
            \context Lyrics = "lyricsUnderTenor1Staff"  {
                % \set associatedVoice = "tenor1"
                \numberedSyllableDummyLyrics "t1" 57 17
            }
            \context Lyrics = "lyricsUnderTenorStaff"  { 
                % \set associatedVoice = "tenor1"
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
        
        \new Lyrics \lyricsto "tenor2"
        {
            \context Lyrics = "lyricsUnderTenorStaff" { 
                \numberedSyllableDummyLyrics "t2" 1 1
            }
            % \context Lyrics = "lyricsUnderTenor2Staff" {      
                % \numberedSyllableDummyLyrics "t2" 2 34
            % }
            \context Lyrics = "lyricsUnderTenor2Staff" {      
                \numberedSyllableDummyLyrics "t2" 2 16
            }
            \context Lyrics = "lyricsUnderTenor2Staff" {      
                \numberedSyllableDummyLyrics "t2" 18 18
            }
            \context Lyrics = "lyricsUnderTenorStaff"  {
                 % \set associatedVoice = "tenor2" 
                 % curiously, UNcommenting the above line causes Lilypond to issue a whole bunch of the warnings "warning: Lyric syllable does not have note.  Use \lyricsto or associatedVoice."
                 % Evidently, there is something a bit mysterious about nested Lyrics contexts. (the strangeness might also be related to the syllable-to-rhythm matching mechanism)
                 % The strangeness might ahve something to do with the keepalive music that is running simultaneously in the lyricsUnderTenorStaff lyrics context.
                \numberedSyllableDummyLyrics "t2" 36 17
            }
        }

        % \new Lyrics \lyricsto "tenor2"
        % {
            % \context Lyrics = "diagnosticLyrics" \lyricsto "tenor2" {
                % \numberedSyllableDummyLyrics "t5" 1 100
            % }
        % }
        
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
                 \override LyricText.font-size=#-2
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