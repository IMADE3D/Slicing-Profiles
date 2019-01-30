;---------------------------------------
; ; ; Jellybox Start Script Begin ; ; ;
;_______________________________________
; for slicer: SIMPLIFY3D
; start gcode last modified Jan 16, 2019

M107              ;start with the fan off
M117 Preparing    ;write Preparing
M140 S45          ;set bed temperature and move on
M109 S180         ;wait for the extruder to reach 180C
G28               ;home all axes
M203 Z4           ;slow Z speed down for greater accuracy when probing
G29               ;auto bed leveling procedure
;M500              ;optionally save the mesh
M203 Z7           ;pick up z speed again for printing
G28 X             ;home x to get as far from the plate as possible
G0 Y0 F5000       ;position Y in front
G0 Z15 F3000      ;position Z
M420 S1           ;(re) enable bed leveling turned off by the G28
M190 S[bed0_temperature]          ;wait for the bed to reach desired temperature
M109 S[extruder0_temperature]         ;wait for the extruder to reach desired temperature
M300 S440 P100    ;play a tone
G4 P200           ;pause
M300 S440 P100    ;play a tone
G4 P200           ;pause
M300 S440 P800    ;play a tone
M0
M117 Print starting   ;write Print starting
;================ ;PRINT:LINE start
G90               ;absolute positioning
G92 E0            ;reset the extruder position
G0 Z0             ;get Z down
M83               ;relative extrusion mode
G1 E22 F500       ;extrude __mm of feed stock
G1 E15 F400       ;extrude __mm of feed stock
G1 E10 F400       ;extrude __mm of feed stock
G4 S2             ;pause for ooze
M400              ;make sure all is finished
G0 F500 X3 Y0 Z0.53;get to the start of the LINE
G1 E2 F300        ;extrude __mm of feed stock
G1 F1000 X104 E13  ;print a thick LINE extruding __mm along the way
G1 F1000 X 106 E-0.7 ;retract and continue moving
G0 F7000 X108 E-0.7 ;break away fast
G92 E0            ;reset the extruder position
;---------------------------------------------
; ; ; Jellybox Printer Start Script End ; ; ;
;_____________________________________________