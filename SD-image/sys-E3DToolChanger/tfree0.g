;
; tfree0.g
; Called when tool 0 is freed
;

M98 Pbed-lower.g

;Fan off
M106 P2 S0

;Move In
G1 X-12.5 Y225 F50000

; Drop tool, move to ready position
M98 Ptfree-any.g
