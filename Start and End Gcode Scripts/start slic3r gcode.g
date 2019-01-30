;---------------------------------------
; ; ; Jellybox Start Script Begin ; ; ;
;_______________________________________
; for slicer: SLIC3R
; start gcode last modified Jan 16, 2019

;              Print Settings Summary
; (leave these alone: this is only a list of the slicing settings)
; (overwriting these values will NOT change your printer's behavior)
;        nozzle diameter :  [nozzle_diameter]
;      filament diameter :  [filament_diameter]
;           layer height :  [layer_height]
;       1st layer height :  [first_layer_height]
;        extrusion width :  [extrusion_width]  
; infill extrusion width :  [infill_extrusion_width]
;        # of perimeters :  [perimeters]
;        # of top layers :  [top_solid_layers]
;     # of bottom layers :  [bottom_solid_layers]
;         infill density :  [fill_density]
;         infill pattern :  [fill_pattern]
;      print temperature :  [temperature_0]
;  1st layer print temp. :  [first_layer_temperature_0]
; heated bed temperature :  [bed_temperature]
;    1st layer bed temp. :  [first_layer_bed_temperature]
;          min fan speed :  [min_fan_speed]
;          max fan speed :  [max_fan_speed]
;     retraction amount  :  [retract_length]
;   retr. retract speed  :  [retract_speed]
;             spiralized ?  [spiral_vase]

G21               ;metric values
G90               ;absolute positioning
M82               ;set extruder to absolute mode
M107              ;start with the fan off
M117 Preparing    ;write Preparing
M104 S180         ;set extruder temp to 160C and move on
M140 S45          ;set bed temp to 55C and move on
G28               ;home all axes
M190 S45          ;wait for the bed to reach 45C
M109 S180         ;wait for the extruder to reach 180C
M203 Z4           ;slow Z speed down for greater accuracy when probing
G29               ;auto bed leveling procedure
;M500              ;optionally save the mesh
M203 Z7           ;pick up z speed again for printing
G28 X             ;home x to get as far from the plate as possible
M420 S1           ;(re) enable bed leveling turned off by the G28
G0 Y0 F5000       ;position Y in front
G0 Z15 F3000      ;position Z
M190 [first_layer_bed_temperature]              ;wait for the bed to reach desired temperature
M109 S[first_layer_temperature_0]             ;wait for the extruder to reach desired temperature
M300 S440 P300    ;play a tone
// M0 Ready! Click to start ; optionally, stop and wait for user to continue
M420 S1           ;(re) enable bed leveling to make iron-sure
M117 Print starting   ;write Print starting
;================ ;PRINT:LINE start
G90               ;absolute positioning
G92 E0            ;reset the extruder position
M420 S1           ;(re) enable bed leveling to make iron-sure
G0 Z0             ;get Z down
M83               ;relative extrusion mode
M420 S1           ;(re) enable bed leveling to make iron-sure
G1 E22 F300       ;extrude __mm of feed stock
G1 E18 F250       ;extrude __mm of feed stock
G1 E10 F250       ;extrude __mm of feed stock
G4 S2             ;pause for ooze
M400              ;make sure all is finished
M420 S1           ;(re) enable bed leveling to make iron-sure
G0 F500 X3 Y0 Z0.6;get to the start of the LINE
G1 E2 F300        ;extrude __mm of feed stock
G1 F1000 X104 E10  ;print a thick LINE extruding __mm along the way
M82               ;absolute extrusion mode
G92 E0            ;reset the extruder position
;---------------------------------------------
; ; ; Jellybox Printer Start Script End ; ; ;
;_____________________________________________
