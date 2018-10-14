\version "2.18.2"
\include "articulate.ly"

\header {
  title = "Remodeling"
  composer = "Justin Kuhn"
}

\score {
  
\new PianoStaff

% \transpose bes c'
% \transpose ees c

 {
   

  <<
    \new ChordNames {
     \chordmode {
      
     }
    }
     \new Staff  \relative c''{
     
      \clef "treble" \key c \major
      
    r4 f8 ges f ees r4 |
    d8 ees d c r2 |
    
    r4 f8 ges f ees r4 |
    d8 ees d c r4 b16 c b bes |
    
    a2 r2 |
    r1 |
    a2 a'2 |
    b4 c b a | 
    aes
    
     
     
    }
     \new Staff \relative c, {
     
      \clef "bass" \key c \major
     
      \chordmode  { aes,4:maj r r aes,:maj aes,:maj r aes,:maj r  }
       \chordmode  { aes,4:maj r r aes,:maj aes,:maj r aes,:maj r  }
      c'16 e c g a c g a g c a g c a f e 
     
      
      
    }
   >>  
}
%{

  \midi { \tempo 4 = 140
        \context {
      \PianoStaff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
      } 
      
  }  
  
  %}
  
}