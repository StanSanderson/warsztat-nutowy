\version "2.17.3"

\layout {
  \context {
    \ChoirStaff
    \accepts "SopranoStaff"
    \accepts "AltoStaff"
    \accepts "TenorStaff"
    \accepts "BassStaff"
  }

  \context {
    \Staff
    \name "SopranoStaff"
    \description "predefined template for soprano staff"

    \type "Engraver_group"
    \alias "Staff"
    \accepts "Voice"
    \defaultchild "Voice"

    \consists "Ambitus_engraver"
    midiInstrument = "acoustic grand"

    \clef treble
    instrumentName = "S "
    shortInstrumentName = "S "
  }

  \context {
    \Staff
    \name "AltoStaff"
    \description "predefined template for alto staff"

    \type "Engraver_group"
    \alias "Staff"
    \accepts "Voice"
    \defaultchild "Voice"

    \consists "Ambitus_engraver"
    midiInstrument = "acoustic grand"

    \clef treble
    instrumentName = "A "
    shortInstrumentName = "A "
  }

  \context {
    \Staff
    \name "TenorStaff"
    \description "predefined template for tenor staff"

    \type "Engraver_group"
    \alias "Staff"
    \accepts "Voice"
    \defaultchild "Voice"

    \consists "Ambitus_engraver"
    midiInstrument = "acoustic grand"

    \clef "G_8"
    instrumentName = "T "
    shortInstrumentName = "T "
  }

  \context {
    \Staff
    \name "BassStaff"
    \description "predefined template for bass staff"

    \type "Engraver_group"
    \alias "Staff"
    \accepts "Voice"
    \defaultchild "Voice"

    \consists "Ambitus_engraver"
    midiInstrument = "acoustic grand"

    \clef bass
    instrumentName = "B "
    shortInstrumentName = "B "
  }
}
