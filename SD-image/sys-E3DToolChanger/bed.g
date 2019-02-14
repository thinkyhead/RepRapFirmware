;
; bed.g
; Called to perform automatic bed compensation via G32
;

M400                    ; Wait for moves to finish
T-1                     ; Put away tool

; M98 P/macros/tools/Decouple
                                
M561                    ; Clear any bed transform
G28                     ; Home axes

G1 X0 Y0 F50000         ; Move

; Probe the bed at 5 points

G30 P0 X5 Y5 H0 Z-99999
G30 P1 X5 Y195 H0 Z-99999

G1 X5 Y175 F50000
G1 X275 Y175 F50000
G1 X275 Y195 F50000

G30 P2 X295 Y195 H0 Z-99999
G30 P3 X295 Y5 H0 Z-99999
G30 P4 X150 Y100 H0 Z-99999 S

G91                     ; Use relative positioning
G1 S2 Z4 F5000          ; Lift Z
G90                     ; Back to absolute positioning

;Park
G1 X140 Y245 F50000
