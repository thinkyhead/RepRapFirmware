;
; tfree3.g
; Called when tool 3 is freed
;

M98 Pbed-lower.g

;Fan off
M106 P8 S0

;Move In
G1 X301.2 Y225 F50000

; Drop tool, move to ready position
M98 Ptfree-any.g
