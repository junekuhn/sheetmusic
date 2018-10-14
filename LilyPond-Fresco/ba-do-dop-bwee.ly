\version "2.18.2"
\include "articulate.ly"

\header {
  title = "ba do dop bwee"
  composer = "Justin Kuhn"
}

\score {
  
\new PianoStaff

%\transpose bes c'
 \transpose ees c

 \relative c'' {
   

  <<
    \new ChordNames {
     \chordmode {
      r8 d1:m c:11+ g:m7 d:m7  d:m c:11+ g:m7 d:m7  c2:7 g:m7 c:7 f:maj7 a1:dim7 e2:dim7 a:7
      d1:m c:11+ g:m7 d:m7  d:m c:11+ g:m7 d:m7
     }
    }
    
    \new Staff {
      \clef "treble" \key d \minor
      
      \partial 8 aes8 |
      a d4 f8~ f4 e8 c |
      d a4 aes8~ aes4. ges8 |
      g bes4 f'8~ f4 e8 c |
      d4 r4 r2 |
      
      a8 d4 f8~ f4 e8 c |
      d a4 aes8~ aes4. ges8 |
      g bes4 f'8~ f4 e8 c |
      d4 r4 r2 |
      
      d4 c8 a bes g~ g4 |
      c4 bes8 g a f~ f4 |
      a8 bes a bes g a f e~ |
      e4 r4 r2 |
      
       a8 d4 f8~ f4 e8 c |
      d a4 aes8~ aes4. ges8 |
      g bes4 f'8~ f4 e8 c |
      d4 r4 r2 |
      
      a8 d4 f8~ f4 e8 c |
      d a4 aes8~ aes4. ges8 |
      g bes4 f'8~ f4 e8 c |
      d4 r4 r2 |
      
      
    }
  >>
  
 }
 
 

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
  
  
 
}