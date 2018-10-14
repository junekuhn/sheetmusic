\version "2.18.2"
\include "articulate.ly"

\header {
  title = "mus 498"
  composer = "Justin Kuhn"
}

\score {
  
\new PianoStaff

\transpose bes c'
% \transpose ees c

 \relative c'' {
   

  <<
    
      \new Staff {
     
      \clef "treble" \key c \major
      r1 r r 
      c8 g ees' d c ges4.
      
      f f f4~ f f8 d f ges4.
      g bes d4 
      c8 g ees' d c ges4.
      
      f f f4~ f f8 d f ges4.
      g8 a bes a r g r d r ees d des~ des2
        %edit this for the upcoming chord
        
      d4. d d4~ d4 d8 bes d ees4.
      e8 b' c b r a r e8
      r8 a e ees~ ees2
      
      d8 bes c d4 bes8 c d
      e c d ees4 d8 ees f
      g a4 bes c d8
      c8 g ees' d c ges4.
      
      % b-section
      c4 c8 bes4 bes8 a4
      a8 bes c bes4 a8~ a8 g8~ g4 g2. r1
      c4 c8 bes4 bes8 a4
      a8 bes c bes4 a8~ a8 d8~ d8 ees d des~ des4 r4 r1
      
      
      }
    
    
     \new Staff {
     
      \clef "treble" \key c \major
      
      \chordmode {
        r1 r r r
      d1:m7  d1:m7 ees:maj7 ees:maj7 
      d1:m7  d1:m7 ees:maj7 ees:maj7 
      bes,:5 bes,:5 c:5 c:5  
      bes,:7 c2 c:m d1:m7 c1:m7
      
      %a,1:11^5 second ending
      % the very last chord could be switched with a cm7 on the first ending
      
      %solo section in a different key
      
      %b section
      
      c:m d2:m7 g,:7-9  c1:m d2:m7 g,:7-9 
      c1:m f2:m7 bes:7 ees1:maj7 e:dim7
      f1:m7 bes:7 ees1:6 aes:maj7
      d1:m7 g,:m7-9 c:m c:m
      
      }
      
     
     
    }
     
   >>  
}
%{-.
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