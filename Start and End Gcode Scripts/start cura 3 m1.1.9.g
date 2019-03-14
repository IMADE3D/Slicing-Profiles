;---------------------------------------
; ; ; Jellybox Start Script Begin ; ; ;
;_______________________________________
; for slicer: CURA 3
; start gcode last modified Mar 15, 2019

;              Print Settings Summary
; (leave these alone: this is only a list of the slicing settings)
; (overwriting these values will NOT change your printer's behavior)
;             sliced for :  {machine_name}
;        nozzle diameter :  {machine_nozzle_size}
;      filament diameter :  {material_diameter}
;           layer height :  {layer_height}
;       1st layer height :  {layer_height_0}
;             line width :  {line_width}  
;  outer wall wipe dist. :  {wall_0_wipe_dist}
;      infill line width :  {infill_line_width}
;         wall thickness :  {wall_thickness}
;          top thickness :  {top_thickness}
;       bottom thickness :  {bottom_thickness}
;         infill density :  {infill_sparse_density}
;         infill pattern :  {infill_pattern}
;      print temperature :  {material_print_temperature}
;  1st layer print temp. :  {material_print_temperature_layer_0}
; heated bed temperature :  {material_bed_temperature}
;    1st layer bed temp. :  {material_bed_temperature_layer_0}
;      regular fan speed :  {cool_fan_speed_min}
;          max fan speed :  {cool_fan_speed_max}
;     retraction amount  :  {retraction_amount}
;   retr. retract speed  :  {retraction_retract_speed}
;     retr. prime speed  :  {retraction_prime_speed}
;   build plate adhesion :  {adhesion_type}
;                support ?  {support_enable}
;             spiralized ?  {magic_spiralize}

G21               ;metric values
G90               ;absolute positioning
M82               ;set extruder to absolute mode
M107              ;start with the fan off
M117 Preparing    ;write Preparing
M190 S45          ;wait for the bed to reach 45C
M109 S180         ;wait for the extruder to reach 180C
G28               ;home all axes
M420 S1           ;activate bed leveling if there is mesh saved in EEPROM
G29 O             ;auto bed leveling procedure only if leveling NOT active
;M500              ;optionally save the mesh
G28 X             ;home x to get as far from the plate as possible
M420 S1           ;(re) enable bed leveling if turned off by the G28
G0 Y0 F5000       ;position Y in front
G0 Z15 F3000      ;position Z
M190 S{material_bed_temperature_layer_0}              ;wait for the bed to reach desired temperature
M109 S{material_print_temperature_layer_0}             ;wait for the extruder to reach desired temperatureM300 S440 P300    ;play a tone
G4 P200           ;pause
M0 Click to start print
M117 Print starting   ;write Print starting
;================ ;PRINT:LINE start
G90               ;absolute positioning
M83               ;relative extrusion mode
G0 Z0             ;get Z down
G1 E18 F500       ;extrude __mm of feed stock
G1 E16 F400       ;extrude __mm of feed stock
G1 E8 F400       ;extrude __mm of feed stock
G4 S2             ;pause for ooze
M400              ;make sure all is finished
G0 F500 X3 Y0 Z0.6;get to the start of the LINE
G1 E2 F300        ;extrude __mm of feed stock
G1 F1000 X104 E10 ;print a thick LINE extruding __mm along the way
M82               ;absolute extrusion mode (many slicers have absolute as default)
G92 E0            ;reset the extruder position
;---------------------------------------------
; ; ; Jellybox Printer Start Script End ; ; ;
;_____________________________________________
