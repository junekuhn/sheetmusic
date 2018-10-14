\version "2.18.2"
\include "articulate.ly"

\header {
  title = "somber"
  composer = "Justin Kuhn"
}

\score {
  
\new PianoStaff

% \transpose bes c'
% \transpose ees c

 \relative c'' {
   

  <<
    \new ChordNames {
     \chordmode {
       e1:m7 r1 a:m7/e  r2 d:m7 
       r1 r r r 
       g1:m7/d  c1:maj7 c4.:maj7/e  f4.:maj7/e f4:maj7/e 
       d2.:sus4m7 d4:9
     }
    }
     \new Staff {
     
      \clef "treble" \key e \minor
      
      g8 a g a r a g[ a] |      
     g8 a g c g a r4 |
     
     g8 a g a r a g a |
     c g a d~  d c \tuplet 3/2 { e g, a } |
     
     bes4. a8~ a4. a8 |
     bes2. \tuplet 3/2 { c8 g a } 
     
     bes4. e,8~ e4 f |
     b4. f8~ f4 g |
     c4. c8~ c4 c4 |
     d8 c d c \tuplet 3/2 { d e g, } <e a>4 |
     
     
     
    }
    
    \new Staff {
      r1 r r r 
      d'8 e d e r e d e |
      \tuplet 3/2 { g c, d } ees4
    }
    
     \new Staff {
     
      \clef "bass" \key e \minor
     
      
      <e, g b d>8 r8 r4 <e g b d>8 r8 r4 |
      <e g b d>2. <e g b d>8 r8 |
      <e g a c>8 r8 r4 <e g a c>8 r8 r4 |
      <e g a c>8 r8 r8 <d f a c>8 r4 r4 |
      
      r1 r r r 
      
      <d f g bes>8 f g <d f g bes> r4 <d f g bes> |
      <c e g b>8 e g <c, e g b> r4 <c e g b> |
      <e g b c>4. <e f a c>8~ <e f a c>2 |
      <d g a c>4 r4 r4 <fis a c> |
      
      
      
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