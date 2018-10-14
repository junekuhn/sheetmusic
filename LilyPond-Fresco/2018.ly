\version "2.18.2"

\header {
  title = "2018"
  composer = "Justin Kuhn"
}

global = {
  \time 4/4
  \key d \minor
  \tempo 4=150
}

chordNames = \chordmode {
 
  d:m
  
}

melody = \relative c'' { 
\global 
  a,16 d e f g f e d a  a16 d e f g f e d a  a16 d e f g f e d a  a16 d e f g f e d a |
  
  
}

bass = \relative c,  {
  \global
  \clef bass
}

words = \lyricmode {
  
  
}

\score {
  <<
    \new ChordNames \chordNames
    \new PianoStaff 
    \new Staff { \melody }
    \new Staff { \bass }
    \addlyrics { \words }
  >>
  \layout { }
  \midi { }
}
