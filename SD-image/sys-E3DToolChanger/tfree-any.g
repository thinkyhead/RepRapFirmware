;
; tfree-any.g
; Called to drop any tool
;

G1 Y270
G1 Y281 F5000
G4 P250

;Open Coupler
M98 P/macros/tools/Decouple

;Move Out
G1 Y225 F24000

;Raise Bed
G91
G1 Z-3 F1500
G90
