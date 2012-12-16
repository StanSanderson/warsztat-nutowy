\version "2.17.3"

\header	{
  title = "Agnus Dei"
  subtitle = "Missa Padre Pio"
  composer = "muzyka: Piotr Pałka"
}

\paper {
  line-width = 147 \mm
}
%--------------------------------MELODY--------------------------------
ml = \melisma
mle = \melismaEnd

common = {
  \key f \major
  \time 3/4
  \tempo 4=50
}

sopranomelody = \relative f' {
  \common
  \repeat volta 3 {
    f4.(\mp g8 ) a8\ml bes\mle
    a4 e d8\melisma e\melismaEnd
    g4.( f8) e f
    e4( c) e8\melisma f\melismaEnd
    d2.
    g2.
  }
  \alternative {
    {
      a2\mf bes4
      c4.( bes8 ) a4
      g2 ( a4 )
      bes2.
      bes2 bes4
      a4.( g8) f4
      f4( g8 f e4)
      f2.
    }
    {
      d2 e4
      f4.( g8) a4
      g4.( a16 g f8 e)
      f2.
    }
  }
}
altomelody = \relative f' {
  \common
  \repeat volta 3 {
    d2 d4
    e4 e d
    d4 ~ d4 d4
    d4( c) c
    d2( e4)
    d2.
  }
  \alternative {
    {
      f8( g f4)
      f16\melisma e d e\melismaEnd
      f2 f4
      es2( f4)
      f2.
      d2 e4
      f4( c) f8\melisma e\melismaEnd
      d2 c4
      c2.
    }
    {
      d2 c4
      c4( a) f'8\melisma e\melismaEnd
      d2( c4)
      c2.
    }
  }
}
tenormelody = \relative f {
  \common
  \repeat volta 3 {
    a8\melisma bes a4\melismaEnd a
    a8\melisma bes16 c\melismaEnd a4 a
    bes8\melisma c\mle bes\ml a\mle g a
    g2 a4
    a4( b c)
    b2.
  }
  \alternative {
    {
      c2 c4
      c2 c4
      d4( c8 bes c4)
      c4( bes2)
      bes2 c4
      c4( f,8 g) a4
      g2\ml c8 bes\mle
      a2.
    }
    {
      bes2 bes8\ml c16 d\mle
      c4( f,8 g) a4
      bes4( g g8 a16 bes)
      a2.
    }
  }
}
bassmelody = \relative f {
  \common
  \repeat volta 3 {
    d2 d4
    c4 c c
    bes4 bes bes
    c2 a4
    d2.
    g,2.
  }
  \alternative {
    {
      f'2 g4
      a4.( g8) f4
      es2.
      d2.
      g,2 g4
      a4.( bes8) c\ml a\mle
      bes4( g c)
      f2.
    }
    {
      bes8\ml c bes a\mle g4
      a4( f) d8\ml c\mle
      bes4( g c)
      f2.
    }
  }
}
%--------------------------------LYRICS--------------------------------
text = \lyricmode {
  A -- gnus De -- i,
  qui tol -- lis 
  pec -- ca -- ta mun -- di,
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re no -- bis,
  do -- na no -- bis pa -- cem.
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

\score {
  \new ChoirStaff <<
    \new Staff = women <<
      \clef treble
      \new Voice = soprano {
        \voiceOne
        \sopranomelody
      }
      \new Voice = alto {
        \voiceTwo
        \altomelody
      }
    >>
    \new Lyrics \lyricsto soprano \text

    \new Staff = men <<
      \clef bass
      \new Voice = tenor {
        \voiceOne
        \tenormelody
      }
      \new Voice = bass {
        \voiceTwo
        \bassmelody
      }
    >>
  >>
  \layout { }
}
