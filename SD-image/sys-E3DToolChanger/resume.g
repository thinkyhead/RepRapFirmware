;
; resume.g
; Called before a print from SD card is resumed
;

G1 R1 Z5 F6000  ; Go to 5mm above position of the last print move
G1 R1           ; Go back to the last print move
M83             ; Relative extruder moves
G1 E10 F3600    ; Extrude 10mm of filament
