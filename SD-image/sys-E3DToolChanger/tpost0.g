;
; tpost0.g
; Called after tool 0 has been selected
;

M98 Pbed-lower.g

;Unlock Coupler
M98 P/macros/tools/Decouple

;Move In
G1 X-12.5 Y225 F16000
G1 Y270 F24000

;Wait for Warm Up
M116 P0

;Collect
G1 Y281 F2000
G4 P250

;Close Coupler
M98 P/macros/tools/Couple

;Move Out
G1 Y200 F24000

; M98 P/macros/Priming/010_prime links

;Raise Bed
G91
G1 Z-3 F1500
G90

;Fan on
M106 P2 S255
