\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Pieśń Konfederatów Barskich"
  poet = "słowa: Juliusz Słowacki"
  composer = "opracowanie: W. Szaliński"
}
commonprops = {
  \autoBeamOff
  \key c \minor
  \time 3/4
  \tempo 4=90
  \set Score.tempoHideNote = ##t
}
scoretempomarker = {
}
\paper {
  page-count = #1
}
#(set-global-staff-size 19)
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  \repeat volta 2 {
    g4 g4. f8 | es8([ f)] g2 |
    bes8. c16 bes4. f8 | as4 g2  |
  }
  g4 es'4. d8 | c4 g2 |
  c8. des16 c4. bes8 | c4 f,2 |
  g4 c d | es2( d4) | c2. \bar "|."
}

altomelody = \relative f' {
  \repeat volta 2 {
    g4 g4. f8 | es4 es2 |
    d8. d16 es4. f8 | f4 es2  |
  }
  g4 g4. f8 | es4 g2 |
  g8. g16 as4. e8 | g4 f2 |
  es4 g as | g2( f4) | es2. \bar "|."
}
tenormelody = \relative c' {
  \repeat volta 2 {
    g4 g4. f8 | es8([ f)] g2 |
    f8. as16 g4. bes8 | c4 bes2 |
  }
  g4 b4. b8 | c4 c2 |
  c8. bes16 c4. des8 | c4 c2 |
  c4 c c | c2( b4) | c2. \bar "|."
}
bassmelody = \relative f {
  \repeat volta 2 {
    g4 g4. f8 | es4 c2 |
    bes8. bes16 c4. d8 | es4 es2
  }
  g4 g4. g8 | c,4 es2 |
  e8. e16 e4. g8 | as4 as2 |
  g4 es f | g2. | c,2. \bar "|."
}
akordy = \chordmode {
  \repeat volta 2 { c1.:m bes4 c2:m f4:m c2:m }
  es2.:aug c:m c4 c2:aug f2.:m
  c2:m d4:dim7 c2:m g4:7 c2:m
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Ni -- gdy z_kró -- la -- mi nie bę -- dziem w_a -- lian -- sach, \break
  Bo u Chry -- stu -- sa my na or -- dy -- nan -- sach,
  słu -- dzy Ma -- ry -- i.
}
secondline = \lyricmode {
  Ni -- gdy przed mo -- cą nie u -- gnie -- my szy -- i,
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        \line {
          "2. "
          \column	{
            "Więc choć się spęka świat i zadrży słońce,"
            "chociaż się chmury i morza nasrożą,"
            "choćby na smokach wojska latające -"
            "nas nie zatrwożą."
          }
        }
        \hspace #0.1
        \line {
          "3. "
          \column {
            "Bóg naszych ojców i dziś jest nad nami,"
            "więc nie dopuści upaść w żadnej klęsce,"
            "wszak póki On był z naszymi ojcami,"
            "byli zwycięsce."
          }
        }
        \hspace #0.1
        \line {
          "4. "
          \column {
            "Więc nie wpadniemy w żadną wilczą jamę,"
            "nie ulękniemy przed mocarzy władzą"
            "wiedząc, że nawet grobowce nas same"
            "Bogu oddadzą."
          }
        }
        \hspace #0.1
        \line {
          "5. "
          \column {
            "Ze skowronkami wstaliśmy do pracy"
            "i spać pójdziemy o wieczornej zorzy,"
            "ale w grobowcach my jeszcze żołdacy"
            "i hufiec Boży."
          }
        }
      }
      \hspace #0.1
      \column {
        \line {
          "6. "
          \column	{
            "Bo kto zaufał Chrystusowi Panu"
            "i szedł na święte kraju werbowanie,"
            "ten de profundis z ciemnego kurhanu"
            "na trąbę wstanie."
          }
        }
        \hspace #0.1
        \line {
          "7. "
          \column {
            "Bóg jest ucieczką i obroną naszą,"
            "póki On z nami, całe piekła pękną -"
            "ani ogniste smoki nie ustraszą,"
            "ani ulękną."
          }
        }
        \hspace #0.1
        \line {
          "8. "
          \column {
            "Nie złamie nas głód i żaden frasunek,"
            "ani zhołdują żadne świata hołdy,"
            "bo na Chrystusa my poszli werbunek,"
            "na jego żołdy."
          }
        }
      }
      \hspace #0.1
    }
  }
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

fourstaveschoir = {
  \new ChoirStaff <<
    %\scoretempomarker
    %\new ChordNames { \germanChords \akordy }
    \new Staff = soprano {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \new Voice = soprano {
        \commonprops
        \set Voice.midiInstrument = "clarinet"
        \sopranomelody
      }
    }
    \new Lyrics = womenlyrics \lyricsto soprano \text
    \new Lyrics = secondwomenlyrics \lyricsto soprano \secondline

    \new Staff = alto {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \new Voice = alto {
        \commonprops
        \set Voice.midiInstrument = "english horn"
        \altomelody
      }
    }
    \new Lyrics = womenlyrics \lyricsto alto \text
    \new Lyrics = secondwomenlyrics \lyricsto alto \secondline

    \new Staff = tenor {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \new Voice = tenor {
        \commonprops
        \set Voice.midiInstrument = "english horn"
        \tenormelody
      }
    }
    \new Lyrics = menlyrics \lyricsto tenor \text
    \new Lyrics = secondmenlyrics \lyricsto tenor \secondline

    \new Staff = bass {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \new Voice = bass {
        \commonprops
        \set Voice.midiInstrument = "clarinet"
        \bassmelody
      }
    }
    \new Lyrics = bass \lyricsto bass \text
    \new Lyrics = secbass \lyricsto bass \secondline
  >>
}

%---------------------------------MIDI---------------------------------
\score {
  \unfoldRepeats \fourstaveschoir
  \midi {
    \context {
      \Staff \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
      \remove "Dynamic_performer"
    }
  }
}

%--------------------------------LAYOUT--------------------------------
\score {
  \fourstaveschoir
  \layout {
    indent = 0\cm
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
}

\stanzas
