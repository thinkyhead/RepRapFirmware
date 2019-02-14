; homex.g
; Called to home the Y axis

M400                    ; Wait for moves to finish
T-1                     ; Put away tool

M913 X25 Y25            ; XY motors to 25% current      
M915 H400 X S2 R0 F0    ; Set X to sensitivity 0, do nothing when stall, unfiltered
M574 X1 S3              ; Set endstops to use motor stall

G91                     ; Use relative positioning
G1 S2 Z3 F5000          ; Lift Z

G1 S1 X-400 F2400       ; Move beyond axis minimum 
G4 P500                 ; Wait 500msec

M400                    ; Make sure everything has stopped 
M913 X100 Y100          ; XY motors to 100% current
M574 X1 S1              ; Define active low microswitches
G1 X2 F2400             ; Move away from home
G1 S2 Z-3 F1200         ; Lower Z
G90                     ; Back to absolute positioning

