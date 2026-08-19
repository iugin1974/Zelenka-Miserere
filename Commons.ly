svn = \with {
  \autoBeamOff
  instrumentName = #"Sopran"
  shortInstrumentName = #"S."

  #(set-accidental-style 'modern)
}

avn = \with {
  \autoBeamOff
  instrumentName = #"Alt"
  shortInstrumentName = #"A."

  #(set-accidental-style 'modern)
}

tvn = \with {
  \autoBeamOff
  instrumentName = #"Tenor"
  shortInstrumentName = #"T."

  #(set-accidental-style 'modern)
}

bvn = \with {
  \autoBeamOff
  instrumentName = #"Bass"
  shortInstrumentName = #"B."

  #(set-accidental-style 'modern)
}

bIvn = \with {
  \autoBeamOff
  instrumentName = #"Bass 1"
  shortInstrumentName = #"B. 1"

  #(set-accidental-style 'modern)
}

bIIvn = \with {
  \autoBeamOff
  instrumentName = #"Bass 2"
  shortInstrumentName = #"B. 2"

  #(set-accidental-style 'modern)
}

bIIIvn = \with {
  \autoBeamOff
  instrumentName = #"Bass 3"
  shortInstrumentName = #"B. 3"

  #(set-accidental-style 'modern)
}

obvn = \with {
  instrumentName = #"Oboe"
  shortInstrumentName = #"Ob."
  #(set-accidental-style 'modern)
}

obIvn = \with {
  instrumentName = #"Oboe I"
  shortInstrumentName = #"Ob. I"
  #(set-accidental-style 'modern)
}

obIIvn = \with {
  instrumentName = #"Oboe II"
  shortInstrumentName = #"Ob. II"
  #(set-accidental-style 'modern)
}

vlIvn = \with {
  instrumentName = #"Violino I"
  shortInstrumentName = #"Vl. I"
  #(set-accidental-style 'modern)
}

vlIIvn = \with {
  instrumentName = #"Violino II"
  shortInstrumentName = #"Vl. II"
  #(set-accidental-style 'modern)
}

vlavn = \with {
  instrumentName = #"Viola"
  shortInstrumentName = #"Vla."
  #(set-accidental-style 'modern)
}

vcvn = \with {
  instrumentName = #"Violoncello"
  shortInstrumentName = #"Vc."
  #(set-accidental-style 'modern)
}

kbvn = \with {
  instrumentName = #"Kontrabass"
  shortInstrumentName = #"Kb."
  #(set-accidental-style 'modern)
}

tbnIvn = \with {
  instrumentName = #"Trombone 1"
  shortInstrumentName = #"Tbn. 1"

  #(set-accidental-style 'modern)
}

tbnIIvn = \with {
  instrumentName = #"Trombone 2"
  shortInstrumentName = #"Tbn. 2"

  #(set-accidental-style 'modern)
}

tbnIIIvn = \with {
  instrumentName = #"Trombone 3"
  shortInstrumentName = #"Tbn. 3"

  #(set-accidental-style 'modern)
}

setBeams = {
\autoBeamOff
\set melismaBusyProperties = #'(tieMelismaBusy slurMelismaBusy)
}

defaultBeams = #(define-music-function (m) (ly:music?)
                  #{
                    \autoBeamOn
                    $m
                    \autoBeamOff
                  #}
                  )

tmpVoiceOne = #(define-music-function (m) (ly:music?)
                 #{
                   \voiceOne
                   $m
                   \oneVoice
                 #}
                 )

tastoSolo =
#(define-scheme-function (parser location)()
   #{
     \markup {tasto solo}
   #})

sempre =
#(define-scheme-function (parser location)()
   #{
     \markup {\italic{sempre}}
   #})

tenuto =
#(define-scheme-function (parser location)()
   #{
     \markup {\italic{tenuto}}
   #})

tasto =
#(define-scheme-function (parser location)()
   #{
     \markup {\italic{Tasto}}
   #})

tutti = #(define-scheme-function (parser location)()
           #{
             \markup {\italic{Tutti}}
           #})

solo = #(define-scheme-function (parser location)()
          #{
            \markup {\italic{Solo}}
          #})

% violoncello  / kontrabass
vc =
#(define-scheme-function (parser location)()
   #{
     \markup { \italic {(Vc.)}}
   #})

kb =
#(define-scheme-function (parser location)()
   #{
     \markup { \italic {(Kb.)}}
   #})

soloTenuto =
#(define-scheme-function (parser location)()
   #{
     \markup { \italic {solo tenuto}}
   #})

ffsempre = \markup { \concat { \dynamic ff } \italic {sempre}}
fftenuto = \markup { \concat { \dynamic ff } \italic {tenuto}}
fsempre = \markup { \concat { \dynamic f } \italic {sempre}}
ftenuto = \markup { \concat { \dynamic f } \italic {tenuto}}
ppsempre = \markup { \concat { \dynamic pp } \italic {sempre}}
pptenuto = \markup { \concat { \dynamic pp } \italic {tenuto}}
psempre = \markup { \concat { \dynamic p } \italic {sempre}}
ptenuto = \markup { \concat { \dynamic p } \italic {tenuto}}

#(define-markup-command (tacet layout props text)
   (markup?)
   (interpret-markup layout props
                     #{
                       \markup{
                         \column{
                           \fill-line { \huge \larger \larger \bold #text }
                           \fill-line{ \large\bold { tacet }}
                           \vspace #3
                         }
                       }
                     #}
                     ))

abo = #(define-music-function (parser location m)(ly:music?)
         #{
           \autoBeamOn
           $m
           \autoBeamOff
         #}
         )

clr = {} %%\once \override Accidental.color = #red

smallStaff = \with {
  fontSize = #-2
  \override StaffSymbol.staff-space = #(magstep -2)
  \override StaffSymbol.thickness = #(magstep -2)
}

pianoLayout = \layout {
  \context {
    \Staff
    \consists "Merge_rests_engraver"
  }
  \context {
    \PianoStaff
    \omit Dynamics.DynamicText
  }
}

#(define (ly:half-bass-figure-bracket which-side) (lambda (grob)
  (let* (
    (dir-h (if (negative? which-side) -1 +1))
    (layout (ly:grob-layout grob))
    (line-thickness (ly:output-def-lookup layout 'line-thickness))
    (thickness (ly:grob-property grob 'thickness 1))
    (th (* line-thickness thickness))
    (hth (/ th 2))
    (tip-lo-h (car (ly:grob-property grob 'edge-height)))
    (tip-hi-h (cdr (ly:grob-property grob 'edge-height)))
    (bfb (ly:enclosing-bracket::print grob))
    (bfb-x (ly:stencil-extent bfb X))
    (bfb-y (ly:stencil-extent bfb Y))
    (stem-v (interval-widen bfb-y (- hth)))
    (stems-h (interval-widen bfb-x (- hth)))
    (single-bracket (lambda (grob)
      (grob-interpret-markup grob (markup
        #:translate (cons ((if (negative? dir-h) car cdr) stems-h) (cdr stem-v))
        #:scale (cons (- dir-h) -1)
        #:combine #:draw-line (cons tip-hi-h 0) #:combine
        #:draw-line (cons 0 (interval-length stem-v))
        #:translate (cons 0 (interval-length stem-v))
        #:draw-line (cons tip-lo-h 0))))))
    (single-bracket grob))))
t = \markup { \combine \transparent \figured-bass 0 \raise #.6 \draw-line #'(1 . 0) }
l = \markup { \hspace #-0.9 \transparent \figured-bass 0 }
tllur = \markup { \combine \transparent \figured-bass 0 \raise #.1 \draw-line #'(1 . 1) }
fivehat = \markup { \combine \figured-bass 5 \path #.15 #'((rmoveto 0 1.2)
(rlineto .5 .5) (rlineto .5 -.5)) }
fivehatflat = \markup { \concat { \combine \figured-bass 5 \path #.15 #'((rmoveto 0 1.2) (rlineto .5 .5) (rlineto .5 -.5)) \raise #.3 \fontsize #-5 \flat } }
fivehatnatural = \markup { \concat { \raise #.3 \fontsize #-5 \natural \combine \figured-bass 5 \path #.15 #'((rmoveto 0 1.2) (rlineto .5 .5) (rlineto .5 -.5)) } }
bo = \once \override BassFigureBracket.stencil = #(ly:half-bass-figure-bracket LEFT)
bc = \once \override BassFigureBracket.stencil = #(ly:half-bass-figure-bracket RIGHT)