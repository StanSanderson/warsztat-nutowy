\version "2.16.1"

% -*- master: ./pomocnicze/bas-solo.ly;

% Uwaga! z przyczyn technicznych przed skompilowaniem
% partii trzeba zapisywać plik.

% Jeśli ten głos nie dzieli się na dolny i górny,
% wpisz całą partię tutaj a zmiennej "basgorny"
% po prostu nie używaj.
% Jeśli głos się dzieli, wpisz tutaj DOLNĄ partię
% (łącznie z tym, co jest śpiewane unisono):

basdolny = \relative f {
  % w komentarzech to, czego nie potrafię
  % w danym takcie zrealizować

  \key g \major
  \time 6/8
  g8\f g g g g g
  \slurDashed
  \set melismaBusyProperties = #'()
  f g a g4.\<(
  es8.--\!) es16 es8 f f f
  \slurSolid
  \unset melismaBusyProperties
  g4\> g8\! r4.
  R2.
  r8 g b d d16( c d8)
  bes-- f a g4.\breathe
  g8( fis) e fis4 fis8
  e( fis) g fis4.\breathe

  % kartka 2.
  g2.\fp~
  \time 9/8
  \slurDashed
  \set melismaBusyProperties = #'()
  g~ g4.\<(
  \time 6/8
  g\f) g\breathe
  \unset melismaBusyProperties
  \slurSolid
  e4 e8 b'4 b8
  c4 c8 g b c
  d( b g a4.\>)
  g2.\p
  r4. d8\mf d d
  g\< g g g g g\!

  % karta 3.
  g4.\breathe g8 g g
  g\cresc g g g4 g8
  g8\f g g g g g
  \slurDashed
  \set melismaBusyProperties = #'()
  f g a g4.(
  es8.--) es16 es8 f f f
  \slurSolid
  \unset melismaBusyProperties
  g4\> g8--\! r r4
  R2.
  r8 g b d d16( c d8)
  bes-- f a g4.~\>
  << g{s8 s4\!}>> r4.

  % kartka 4.
  g8 g g g g g
  a a a g4 g8
  f4 f8 g4.\breathe
  f4 f8\> e4 e8^\markup{\italic{rit.}}
  d4 d8 e4.\(
  << { e1*10/4\) ( \fermata\p } { s4*8 s2-\tweak #'X-offset #-4 \< }>>
  e1*9/8 \fermata -\tweak #'X-offset #-4 \mp
  << e1\fermata { s2 s2\> } >>
  e2\!
  f1*7/4\cresc
  g4 \mf~ g8\fermata )r8\fermata

  %kartka 5.
  g8\p^\markup{legato} g\< g f!\! f f
  es2.\>
  es4.\!~ es4 f8^\markup{\italic{ten.}}
  \time 5/4
  g4 g2\> r4\! r4
  d\p^\markup{sempre legato (without accents)} g d8 g g4 g
  d\< g d8\! g g4\> g\!
  d g d8 g g4 g
  d g d8 g g4 g
  d g d8 g g4 g
  d g d8 g g4 g

  % kartka 6.
  d g d8 g g4 g
  d g d8 g g4 g
  d g d8 g g4 g
  d g d8 g g4\> g
  d g d8 g g4 g
  d8\pp g g4 g2.~^\markup{\italic{rit.}} \bar "||"
  \time 6/8
  \cadenzaOn
  g2.*1/2\p\<\laissezVibrer
  s2.\mp\<
  s4
  s4.\mf\<

  s4.
  s4.\f\<
  s4.
  s4.\ff\>

  s4
  s4.\f\>
  s4.\mf\>
  s8\mp

  % kartka 7.
  \tempo "Tempo primo"
  r4. d8\mf d d
  g g g g g g
  g4.\mf\<\breathe g8 g g
  g g g g4 g8
  g\f g g g g g
  \slurDashed
  \set melismaBusyProperties = #'()
  f g a g4.(
  es8.--) es16 es8 f f f
  \slurSolid
  \unset melismaBusyProperties
  g4\> g8--\! r r4
  R2.
  r8 g\mf\< b d d16( c d8)
  bes4.\f g\breathe

  % karta 8.
  bes4--\mf\< g8 bes4-- g8
  bes4-- g8 bes4-- g8
  r d' bes g4.~
  g g4\ff r8 \bar "|."
}


% Jeśli głos się dzieli, tutaj wpisz GÓRNĄ partię
% (łącznie z tym, co jest śpiewane unisono).
% Zapewne będzie Ci wygodnie skopiować wspólne
% fragmenty z tego, co jest już wpisane powyżej.
% Żeby odpowiednio połączyć obie partie, użyj
% \unisono { } , \rownyRytm { } i \podzial { }
% na odpowiednich fragmentach tej partii.

basgorny = \relative f {
  \key g \major
  \time 6/8
  \unisono{
    g8\f g g g g g
    \slurDashed
    \set melismaBusyProperties = #'()
    f g a g4.\<(
    es8.--\!) es16 es8 f f f
    \slurSolid
    \unset melismaBusyProperties
    g4\> g8\! r r4
    R2.
    r8 g b d d16( c d8)
    bes-- f a g4.\breathe
    g8( fis) e fis4 fis8
    e( fis) g fis4.\breathe

    % kartka 2.
    g2.\fp~
    \time 9/8
    \slurDashed
    \set melismaBusyProperties = #'()
    g~ g4.\<(
    \time 6/8
    g\f) g\breathe
    \unset melismaBusyProperties
    \slurSolid
    e4 e8 b'4 b8
    c4 c8 g b c
    d( b g a4.\>)
    g2.\p
    r4. d8\mf d d
    g\< g g
  }
  \rownyRytm{
    a a a\!

    % karta 3.
    a4.\breathe a8 a a
    a\cresc a a a4 a8
  }
  \unisono{
    g8\f g g g g g
    \slurDashed
    \set melismaBusyProperties = #'()
    f g a g4.(
    es8.--) es16 es8 f f f
    \slurSolid
    \unset melismaBusyProperties
    g4\> g8--\! r r4
    R2.
    r8 g b d d16( c d8)
    bes-- f a g4.~\>
    << g{s8 s4\!}>> r4.

    % kartka 4.
    g8 g g g g g
    a a a g4 g8
    f4 f8 g4.\breathe
    f4 f8\> e4 e8^\markup{\italic{rit.}}
    d4 d8 e4.\(
    e1*10/4\) ( \fermata\p
    e1*9/8 \fermata
    e1\fermata
  }
  g2
  \unisono {
    f1*7/4
    g4 \mf~ g8\fermata )r8\fermata

    %kartka 5.
    g8\p^\markup{legato} g\< g f\! f f
    es2.\>
    es4.\!~ es4 f8^\markup{\italic{ten.}}
    \time 5/4
    g4 g2\> r4\! r4
    d\p^\markup{sempre legato (without accents)} g d8 g
  }

  \rownyRytm{a4 b }
  \unisono {
    d,\< g d8\! g
  } a4\> b\!
  \unisono { d, g d8 g } a4 b
  \unisono { d, g d8 g } a4 b
  \unisono { d, g d8 g } a4 b
  \unisono { d, g d8 g } a4 b

  % kartka 6.
  \unisono { d, g d8 g } a4 b
  \unisono { d, g d8 g } a4 b
  \unisono { d, g d8 g } a4 b
  \unisono { d, g d8 g } a4\> b
  \unisono { d, g d8 g } a4 b
  \unisono {
    d,8\pp g g4 g2.~^\markup{\italic{rit.}} \bar "||"
    \time 6/8
    \cadenzaOn
    g2.*1/2\p\<\laissezVibrer
    s2.\mp\<
    s4
    s4.\mf\<

    s4.
    s4.\f\<
    s4.
    s4.\ff\>

    s4
    s4.\f\>
    s4.\mf\>
    s8\mp
    \cadenzaOff


    % kartka 7.
    r4.^\markup{Tempo primo} d8\mf d d
    g g g
  }
  a a a
  a4.\mf\<\breathe a8 a a
  a a a a4 a8
  \unisono{
    g\f g g g g g
    \slurDashed
    \set melismaBusyProperties = #'()
    f g a g4.(
    es8.--) es16 es8 f f f
    \slurSolid
    \unset melismaBusyProperties
    g4\> g8--\! r r4
    R2.
    r8 g\mf\< b d d16( c d8)
    bes4.\f g\breathe

    % karta 8.
    bes4--\mf\< g8 bes4-- g8
    bes4-- g8 bes4-- g8
    r d' bes g4.~
    g g4\ff r8 \bar "|."
  }
}


bastekst = \lyricmode {
  % Tu wpisz libretto. Będzie ono przyczepione
  % do partii dolnego głosu (jeśli jest podział).

  All that hath life and \shrink #0.9 breath \shrink #0.91 praise ye the Lord,
  shout to the Lord, Al -- le -- lu -- ia!
  Al -- le -- lu -- ia, __
  Al -- le -- lu -- ia.
  \shrink #0.91 Praise the Lord with joy -- ful song,

  % kartka 2.
  \shrink #0.91 praise, __ _ _ praise Him!
  \shrink #0.91 praise the Lord with joy -- ful song,
  Al -- le -- lu -- ia.
  All that hath life and \shrink #0.9 breath \shrink #0.91 praise ye the

  % kartka 3.
  Lord,
  All that hath life and \shrink #0.9 breath \shrink #0.91 praise Him,
  All that hath life and \shrink #0.9 breath \shrink #0.91 praise ye the Lord.
  Shout to the Lord, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, __
  Al -- le -- lu -- ia. __

  % kartka 4.
  All that hath life and \shrink #0.9 breath sing to the Lord
  a new- made song, % nie wiem, co z myślinikiem w tekście
  \shrink #0.91 praise His name, Al -- le -- lu -- ia.
  Mm __

  % kartka 5.
  All that hath life and \shrink #0.9 breath \shrink #0.91 praise Him, __
  O \shrink #0.91 praise Him.
  \shrink #0.91 Praise Him, al -- le -- lu -- ia,
  \shrink #0.91 praise Him, al -- le -- lu -- ia,
  \shrink #0.91 praise Him, al -- le -- lu -- ia,
  \shrink #0.91 praise Him, al -- le -- lu -- ia,
  \shrink #0.91 praise Him, al -- le -- lu -- ia,
  \shrink #0.91 praise Him, al -- le -- lu -- ia,

  % kartka 6.
  \shrink #0.91 praise Him, al -- le -- lu -- ia,
  \shrink #0.91 praise Him, al -- le -- lu -- ia,
  \shrink #0.91 praise Him, al -- le -- lu -- ia,
  \shrink #0.91 praise Him, al -- le -- lu -- ia,
  \shrink #0.91 praise Him, al -- le -- lu -- ia,
  Al -- le -- lu -- ia. __

  % kartka 7.
  All that hath life and \shrink #0.9 breath \shrink #0.91 praise ye the Lord,
  all that hath life and \shrink #0.9 breath \shrink #0.91 praise Him,
  All that hath life and \shrink #0.9 breath \shrink #0.91 praise ye the Lord,
  Shout to the Lord, al -- le -- lu --ia!
  Al -- le -- lu -- ia, __ \shrink #0.91 praise Him!

  % kartka 8.
  \shrink #0.91 Praise Him, laud Him,
  \shrink #0.91 praise Him, laud Him,
  Al -- le -- lu -- ia!
}

bas = {
  <<
    \basdolny
    \basgorny
  >>
}
