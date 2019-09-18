\version "2.18.2"
#(ly:set-option 'point-and-click #f)

\include "notesandwords.ly"



 
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


scorecontents = 
{
	\new ChoirStaff
	<<

		\new Staff = soprano
		<<
			\set Staff.instrumentName = "soprano"
			\set Staff.midiInstrument = #"voice oohs"
      			\set Staff.midiMinimumVolume = #0.7
      			\set Staff.midiMaximumVolume = #0.7
			\new Voice = soprano
			<<
				\clef treble
				\timeandkey
				\sopranonotesall
			>>
			%\new Voice = hiddenlayoutvoice	\breakMask
		>>
		%\new Lyrics \lyricsto "soprano" \sopranowordsall

		
		\new Staff = alto
		<<
			\set Staff.instrumentName = "alto"
			\set Staff.midiInstrument = #"voice oohs"
      			\set Staff.midiMinimumVolume = #0.7
      			\set Staff.midiMaximumVolume = #0.7
			\new Voice = alto
			<<
				\clef treble
				\timeandkey
				\altonotesall
			>>
			%\new Voice = hiddenlayoutvoice \breakMask
		>>
		%\new Lyrics \lyricsto "alto" \altowordsall
		

		\new Staff = tenor
		<<
			\set Staff.instrumentName = "tenor"
			\set Staff.midiInstrument = #"voice oohs"
      			\set Staff.midiMinimumVolume = #0.7
      			\set Staff.midiMaximumVolume = #0.7
			\new Voice = tenor
			<<
				\clef "treble_8"
				\timeandkey
				\tenornotesall
			>>
			%\new Voice = hiddenlayoutvoice \breakMask
		>>
		%\new Lyrics \lyricsto "tenor" \tenorwordsall



		\new Staff = bass
		<<
			\set Staff.instrumentName = "bass"
			\set Staff.midiInstrument = #"voice oohs"
      			\set Staff.midiMinimumVolume = #0.7
      			\set Staff.midiMaximumVolume = #0.7
			\new Voice = bass
			<<
				\clef bass
				\timeandkey
				\bassnotesall
			>>
			%\new Voice = hiddenlayoutvoice \breakMask
		>>
		%\new Lyrics \lyricsto "bass" \basswordsall
	>>
}


\book
{
\header
{
	tagline =  "Engraved 2019 in Seattle for The Meridian Ensemble; Yuly Kopkin, Artistic Director"
}

% \markup{Note:}
% \markup{\wordwrap{
% This piece consists of an "A" part (14 measures long) and a "B" part (26 measures long), which are 
% repeated several times with varying lyrics.  The playing order is ABAABAABA.  In order to relieve the 
% player from the burden of keeping track of this pattern while playing, I have unfolded the repeats into 
% one long score that can be played straight through.}}


% \markup{ }

% \markup{Translation:}
% \markup{\wordwrap{
% Margot, labor at the vine soon.
% As I passed through the Lorraine, 
% I chanced upon three capitaines,
% and they called me country-bred.
% But I'm not that country-bred.
% Since the King's son loves me dear,
% he brought a present to me: 
% a big spray of marjoram.
% If it blooms I will be Queen.
% Should it die, I've lost my time.
% }}







\score
{

	\transpose c c \scorecontents



	\layout 
	{
		%indent = 1\in

		\context
		{
			\Staff
			%\remove Instrument_name_engraver
		}
	}
	
    \header
    {
        title = \markup{ \caps {Elegy} } 
        composer = "Vasily Sergeyevich Kalinnikov (1866 – 1901)"
        poet = \markup {
          \column {
            \line {
              "words by CROBA, A PIRANHA"
            }
            \line {
                phonetization for English speakers by Yuly Kopkin
            }
          }
       }
        % arranger = "typeset by Neil Jackson"
        % breakbefore = ##f
    }
	\midi
	{
		\context 
		{
	 		\Score
 			tempoWholesPerMinute = #(ly:make-moment 60 4)	
		}
	}

}	
	
}