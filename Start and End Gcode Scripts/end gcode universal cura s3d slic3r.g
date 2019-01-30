
;---------------------------------
;;; Jellybox End Script Begin ;;;
;_________________________________
; end gcode last modified Nov 30, 2018
M117 Finishing Up ;write Finishing Up

M107        ;turn the fan off
M104 S0     ;extruder heater off
M140 S0     ;bed heater off (if you have it)
G91         ;relative positioning (includes extruder)
G1 E-1 F2500 ;retract the filament a bit before lifting the nozzle to release some of the pressure
G1 Z0.5 E-4 X-10 F9000 ;get out and retract filament even more
G1 E-25 F2500 ;retract even more
G90         ;absolute positioning (includes extruder)
G28 X       ;home X so the head is out of the way
G1 Y140     ;move Y forward, so the print is more accessible
M84         ;steppers off

M117 Print finished ;write Print finished
;---------------------------------------
;;; Jellybox End Script End ;;;
;_______________________________________