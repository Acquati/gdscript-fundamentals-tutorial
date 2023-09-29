extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if is_visible():
		# MaxPanelOutput kW
		var max_panel_output: float = 100
		# AccumulatorCapacity kJ
		var accumulator_capacity: float = 1000 * 10
		# CycleDuration s
		var cycle_duration: float = 60 * 6.94
		# Efficiency
		var efficiency: float = 100
	
		var ratio: float = 0.168 * (max_panel_output / accumulator_capacity) * cycle_duration * (efficiency / 100)
	
		print('Ratio: ', ratio)
		print(ratio, ' accumulators every 1 solar panels.')

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
