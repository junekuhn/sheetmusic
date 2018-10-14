\version "2.18.2"

\header {
  title = "Tutorial"
  composer = "Justin Kuhn"
}


% Simple

\relative c' {
  c4 g 
  
}

% Durations

\relative c'' {
  a1
  a2 a4 a8 a
  a16 a a a a32 a a a a64 a a a a a a a a2
}

% Rests

\relative c'' {
  a4 r r2 
  r8 a r4 r4 r8
}

% time and tempo and clef

\relative c'' {
  \time 3/4
  \tempo "Andante" 
  a4 a a 
  \clef "tenor"
  \time 6/8
  \tempo 4. = 96
  a4. a
  \clef "treble"
  \time 4/4
  \tempo "Presto" 4 = 120
  a4 a a a
}

% bar lines

\relative c'' {
  g1 e1 \bar "||" c2. c4 \bar "|."
  g'1 | e'1 | 
}

% accidentals and keys

\relative c'' {
   \key f \minor
  
  cis4 ees fisis aeses
  
}

% slurs and ties

\relative c'' {
  c4~( c8 d~ d4 e)
}

%articulation and Dynamics

\relative c'' {
  c4-^ c-+ c-- c-! c4-> c-. c2-_
  c4-3 e-5 b-2 a-1
  c4_-^1 d^. f^4_2-> e^-_+
  
  %dynamics
  c4\ff c\mf c2\p\< c\ff\> c\!
  %text
  c^"text"
  %italics/bold
  c^\markup {  \dynamic p \italic \bold txt}
}
  
%beaming

\relative c'' {
  a8[ ais] d[ ees r d] c16 b a8
  \autoBeamOff
  a8 c b4 d8. c16 b4 |
  \autoBeamOn
  a8 c b4 d8. c16 b4 |
}
  
 %other rythym
 
 \relative c'' {
   %pickup
   \partial 8 f8 |
   c2 d |
   %tuplets
   \tuplet 3/2 { f8 g a }
  \tuplet 3/2 { c8 r c }
  \tuplet 3/2 { f,8 g16[ a g a] }
  \tuplet 3/2 { d4 a8 }
%grace notes
c2 \grace { a32 b } c2 |
c2 \appoggiatura b16 c2 |
c2 \acciaccatura b16 c2 |



 }
 
 