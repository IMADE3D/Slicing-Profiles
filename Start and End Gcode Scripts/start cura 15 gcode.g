;---------------------------------------
; ; ; Jellybox Start Script Begin ; ; ;
;_______________________________________
; for slicer: Cura 15 (old Cura)
; start gcode last modified Sep 15, 2018

G21               ;metric values
G90               ;absolute positioning
M82               ;set extruder to absolute mode
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
M190 S{print_bed_temperature}              ;wait for the bed to reach desired temperature
M109 S{print_temperature}             ;wait for the extruder to reach desired temperature
M300 S440 P100    ;play a tone
G4 P200           ;pause
M300 S440 P100    ;play a tone
G4 P200           ;pause
M300 S440 P800    ;play a tone
M117 Print starting ;write Print starting
G92 E0            ;reset the extruder position
;---------------------------------------------
; ; ; Jellybox Printer Start Script End ; ; ;
;_____________________________________________