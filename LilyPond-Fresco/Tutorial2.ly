\version "2.18.2"

\header {
  title = "Tutorial2"
  composer = "Justin Kuhn"
}

%Simultanoues musical expressions
%multiple staves

\relative c'' {
  <<
    { a2 g }
    {f2 e}
    {d2 b}
  >>
}

%single staff

\relative c'' {
  c2 << c e >> |
  << { e2 f} { c2 << b d >> } >> |
}

%multiples staves
\relative c'' {
<<
\new Staff { \clef "treble" \key d \major \time 3/4 c4 }
\new Staff { \clef "bass" c,,4 }
>>
}

%piano and chords

\relative c'' {
  \new PianoStaff 
  <<
    \new Staff {
      \clef "treble"
      r4 <c e g>~ <c f a>2 |
      <c e g>8[ <c f a> <c e g> <c f a> ]
      <c e g>8\<[ <c f a> <c e g> <c f a> ]\!
    }
    \new Staff {
      \clef "bass"
      r1 r
    }
  >>
}

%score must have only one musical expression

\score {
  <<
    \new Staff = "singer" <<
      \new Voice = "vocal" { c'1 }
      \addlyrics { And }
    >>
    \new PianoStaff = "piano" <<
      \new Staff = "upper" { c'1 }
      \new Staff = "lower" { c'1 }
    >>
  >>
  \layout { }
}
