; homez.g
; Called to home the Z axis

M400                    ; Wait for moves to finish
T-1                     ; Put away tool

; M98 P/macros/tools/Decouple

G91                     ; Relative mode
G1 S2 Z5 F5000          ; Lower the bed
G90                     ; Back to absolute positioning

G1 X130 Y169 F50000     ; Position the endstop above the bed center

G91                     ; Relative mode

G4 P500                 ; Wait 500msec
G1 Z-300 S1 F1000       ; Move Z down until the switch triggers (first pass)

G4 P500                 ; Wait 500msec
G1 Z5 F5000             ; Lift Z

G4 P500                 ; Wait 500msec
G1 Z-300 S1 F300        ; Move Z down until the switch triggers (second pass)

G4 P500                 ; Wait 500msec
G1 Z8.75 F5000          ; Drop the Bed

G90                     ; Back to absolute positioning

