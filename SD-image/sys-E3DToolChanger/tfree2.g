;
; tfree2.g
; Called when tool 2 is freed
;

M98 Pbed-lower.g

;Fan off
M106 P6 S0

;Move In
G1 X212 Y225 F50000

; Drop tool, move to ready position
M98 Ptfree-any.g
