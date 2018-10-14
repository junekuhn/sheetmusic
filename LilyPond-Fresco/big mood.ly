\version "2.18.2"
\include "articulate.ly"

\header {
  title = "big mood"
  composer = "Justin Kuhn"
}

\score {
  
\new PianoStaff

%\transpose bes c'
 %\transpose ees c

 \relative c' {
   

  <<
    \new ChordNames {
     \chordmode {
      e1:m
     }
    }
    
    \new Staff {
      \clef "treble" \key c \major
      
      r16 e16 r8 g4 r16 e16 r8 g4 |
      r16 e16 r8 g8 fis8 r16 e16 r8 dis8 e8 |
      r16 dis16 r8 gis4 r16 cis,16 r8 e4 |
      r16 b16 r8 dis4 r16 e16 r8 dis8 e |
      
      r16 b r8 dis4 r16 e r8 dis8 e |
      r16 dis r8 b4 r16 b r8 dis16 e f fis |
      g4 gis4 ais4 b |
      ais gis dis2 |
      
      
      
      
    }
    \new Staff {
      \clef "bass" \key c \major
      
      <e, b'>2 <e b'>2 <e b'>2 <e b'>2  
      <cis gis'>2 <cis gis'>2 <cis gis'>2 <cis gis'>2  
      <b fis'>2 <b fis'>2 <b fis'>2 <b fis'>2 
      <cis e>4 r r2 |
      r2 r16 <cis e>~ <cis e>8 <b fis'>4 |
      
      
    }
  >>
  
 }
 
 

  \midi { \tempo 4 = 100
        \context {
      \PianoStaff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
      } 
      
  }  
  
  
 
}