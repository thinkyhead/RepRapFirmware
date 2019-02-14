;
; homeall.g
; Called to home all axes
;

T-1

M98 P/macros/tools/Decouple

M98 Phomey.g  ; Home Y
M98 Phomex.g  ; Home X
M98 Phomez.g  ; Home Z

G1 X144 Y-10 F15000 ; Park
