;
; prime.g
;

;brush in
G1 F15000
G1 X-31.5 Y152
G1 X-34.5 Y118
G1 X-38.5 Y152
G1 X-40.5 Y118

;Park for prime/purge
G1 X-33.5 Y99

;Prime
G92 E0
G1 E10 F200
G1 F50
G1 E5 F50
G1 E-0.25 F200
G92 E0
;G4 S2

;wipe after prime/purge
G1 F50000
G1 X-35.5 Y105
G4 P100
G1 F50000
G1 X-35.5 Y112
G1 F15000

;brush out
G1 F15000
G1 X-40.5 Y118
G1 X-31.5 Y128
G1 X-40.5 Y138
G1 X-31.5 Y148
G1 X-40.5 Y152
G1 X-31.5 Y155

;Offsets enabled
M98 Poffsetson.g