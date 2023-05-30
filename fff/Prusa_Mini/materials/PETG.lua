name_en = "PETG"
name_fr = "PETG"
name_es = "PETG"

filament_linear_adv_factor = 0.2 -- 0.12 for 0.6 nozzle

-- temperatures
extruder_temp_degree_c = 250
bed_temp_degree_c = 90

-- prime/retracts
filament_priming_mm = 3.2
retract_mm_per_sec = 45
priming_mm_per_sec = 25

-- flow
flow_multiplier = 1.0
speed_multiplier = 1.0

-- cooling
enable_fan = true
fan_speed_percent = 50
fan_speed_percent_on_bridges = 100

--#################################################

-- affecting settings to each extruder
for i = 0, extruder_count-1, 1 do
  _G['extruder_temp_degree_c_'..i] = extruder_temp_degree_c
  _G['filament_priming_mm_'..i] = filament_priming_mm
  _G['priming_mm_per_sec_'..i] = priming_mm_per_sec
  _G['retract_mm_per_sec_'..i] = retract_mm_per_sec
end

-- affecting settings to all brushes
for i = 0, max_number_brushes, 1 do
	_G['flow_multiplier_'..i] = flow_multiplier 
	_G['speed_multiplier_'..i] = speed_multiplier
end

