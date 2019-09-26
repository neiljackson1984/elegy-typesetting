\version "2.18.2"
#(ly:set-option 'point-and-click #f)

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
				\sopranoMusic
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
				\altoMusic
			>>
			%\new Voice = hiddenlayoutvoice \breakMask
		>>
		%\new Lyrics \lyricsto "alto" \altowordsall
		

		\new Staff = "tenor-combined"
		<<
			\set Staff.instrumentName = "tenor"
			\set Staff.midiInstrument = #"voice oohs"
      			\set Staff.midiMinimumVolume = #0.7
      			\set Staff.midiMaximumVolume = #0.7
			\new Voice = tenor
			<<
				\clef "treble_8"
				\tenorMusic
			>>
			%\new Voice = hiddenlayoutvoice \breakMask
		>>
		%\new Lyrics \lyricsto "tenor" \tenorwordsall

        \new Staff = "tenor1"
		<<
			\set Staff.instrumentName = "tenor 1"
			\set Staff.midiInstrument = #"voice oohs"
      			\set Staff.midiMinimumVolume = #0.7
      			\set Staff.midiMaximumVolume = #0.7
			{\stopStaff}

		>>


        \new Staff = "tenor2"
		<<
			\set Staff.instrumentName = "tenor 2"
			\set Staff.midiInstrument = #"voice oohs"
      			\set Staff.midiMinimumVolume = #0.7
      			\set Staff.midiMaximumVolume = #0.7
			{\stopStaff}

		>>



		\new Staff = bass
		<<
			\set Staff.instrumentName = "bass"
			\set Staff.midiInstrument = #"voice oohs"
      			\set Staff.midiMinimumVolume = #0.7
      			\set Staff.midiMaximumVolume = #0.7
			\new Voice = bass
			<<
				\clef bass
				\bassMusic
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