\relative {
  g2.\f-\tutti g4 g2
  f1 f2 %290
  R1.
  f2 f, f'
  e2. e4 e2
  R1.
  r2 e e %295
  a2. a,4 a2
  R1.
  r2 a' g
  f2. e4 fis2
  r g fis %300
  e2. e4 d2
  cis1.
   d~ \noBreak
  d\fermata \bar "||"
  \clef "treble_8" \time 4/4  \newSpacingSection
  r4 c'4. d8 e c \noBreak %305
  f e16 d c8 d \clef bass c,2-\sempreTenuto
  e f
  d c
  \clef "treble_8" a'4. g8 f a e4
  \clef bass f2 a %310
  b g
  f \clef "treble_8"  r4 c'
  e f d c
  \clef bass b,2 d
  es c %315
  b \clef "treble_8"  g'8 a b g
  c4. d8 es c f4
  \clef bass es,2 g
  as f
  es4 \clef "treble_8"  c'4. b16 a b4 %320
  a g2 f4
  b2 \clef bass f,
  a b
  g f
  \clef "treble_8" r4 f' a b %325
  g2 f8 g a h
  \clef bass c,2 e
  f d
  <<
    {
      \oneVoice c1~
      c~ %330
      c~
      c2. r8 c
    } \\ {
      s1
      s2. s4-\tasto %330
      s1
      s
    }
  >>
  d2 e
  f g~ \noBreak
  g1
  %%
  \set Staff.beamExceptions = #'()
  \set Staff.baseMoment = #(ly:make-moment 1/2)
  \set Staff.beatStructure = #'(1 1)
  c,8.-\solo c16 c8. c16 c8. c16 c8. c16 \noBreak
  c8. c16 c8. c16 c8. c16 c8. c16
  c8. c16 c8. c16 c8. c16 c8. c16
  c8. c16 c8. c16 f8. f16 f8. f16
  b,8. b16 b8. b16 es8. es16 es8. es16 %340
  a,8. a16 a8. a16 d8. d16 d8. d16
  g4.-\tutti g8 g8. g,16 g8. g16
  g8. g16 g8. g16 g8. g16 g8. g16
  g8. g16 g8. g16 g8. g16 g8. g16
  g8. g'16 g8. g16 c8. c16 c8. c16 %345
  f,8. f16 f8. f16 b8. b16 b8. b16
  es,8. es16 es8. es16 as8. as16 as8. as16
  as4\fermata r r2
  g8. g,16 g'8. g,16 g'8. g,16 g'8. g,16
  g'8. g,16 g'8. g,16 g'8. g,16 g'8. g,16 %350
  g'8. g,16 g'8. g,16 g'8. g,16 g'8. g,16
  c'8. c,16 c'8. b16 as8.\f as,16 as'8. g16
  fis8.\ff fis16 fis8. fis16 g8. g,16 g8. g16
  g4 r8 g'-\solo g,4 r8 g'
  g,4 r8 g' g,4 r8 g' %355
  g,4 r8 g' g,4 r8 g'
  g,4 r8 g'\pp g,4 r8 g'
  g,2~\ff^\tenuto g4~-\tasto g~\p
  g2\pp\fermata r \bar "|." %359 FINIS
}
