
sopranoOneMusicVar = { \include "sopranoOneMusic.ily" }
sopranoTwoMusicVar = { \include "sopranoTwoMusic.ily" }
tenorMusicVar = { \include "tenorMusic.ily" }
bassMusicVar = { \include "bassMusic.ily" }



sopranoOneVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = sopranoOneVoice {
        
        \sopranoOneMusicVar
      }
  >>
}

sopranoTwoVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = sopranoTwoVoice {
        
        \sopranoTwoMusicVar
      }
  >>
}

tenorVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = tenorVoice {
        
        \tenorMusicVar
      }
  >>
}

bassVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = bassVoice {
        
        \bassMusicVar
      }
  >>
}





sopranoOneStaffVar = {
    \new Staff = sopranoOneStaff \with { \consists "Ambitus_engraver" } {
        \clef treble
        \set Staff.instrumentName = "S1 " 
        \set Staff.shortInstrumentName = "S1 "
        \sopranoOneVoiceVar
      }
  }

sopranoTwoStaffVar = {
    \new Staff = sopranoTwoStaff \with { \consists "Ambitus_engraver" } {
        \clef treble
        \set Staff.instrumentName = "S2 " 
        \set Staff.shortInstrumentName = "S2 "
        \sopranoTwoVoiceVar
      }
  }

tenorStaffVar = {
    \new Staff = tenorStaff \with { \consists "Ambitus_engraver" } {
        \clef "treble_8"
        \set Staff.instrumentName = "T " 
        \set Staff.shortInstrumentName = "T "
        \tenorVoiceVar
      }
  }

bassStaffVar = {
    \new Staff = bassStaff \with { \consists "Ambitus_engraver" } {
        \clef bass
        \set Staff.instrumentName = "B " 
        \set Staff.shortInstrumentName = "B "
        \bassVoiceVar
      }
  }
