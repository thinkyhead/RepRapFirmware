;
; pause.g
; Called when a print from SD card is paused
;

M83                 ; Relative extruder moves
G91                 ; Relative positioning
G1 Z5 F360          ; Lift Z by 5mm
G90                 ; Absolute positioning
G1 X-25 Y-10 F6000  ; Go to X=0 Y=0
