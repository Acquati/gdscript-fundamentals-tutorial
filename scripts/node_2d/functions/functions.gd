extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if is_visible():
		print('basic_parameter return int: ', basic_parameter(10))
		
		# Parameter needs to be String or throws error.
		print('string_parameter return String: ', string_parameter('Avocado'))
		
		# Parameter needs to be a String or empty.
		print('default_parameter() return default parameter: ', default_parameter())
		print('default_parameter(\'Melon\') return parameter: ', default_parameter('Melon'))
		
		# Function return type int.
		print('return_type return Type: ', return_type(6))
		
		var instance_of_player := Player.new('Phrase is now: \'String constructor parameter.\'')
		instance_of_player.print_phrase()
	
		Player.new('Phrase is now: \'Static call.\'').print_phrase()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	
# Basic Function with parameter data type.
func basic_parameter(parameter: int) -> int:
	# The name in the parameter is a variable, it holds data.
	return parameter

func string_parameter(parameter: String) -> String:
	return parameter

# Function with a default value in the parameter.
func default_parameter(parameter: String = 'I am a default parameter') -> String:
	return (parameter)

# Function with non void return type.
func return_type(parameter):
	return typeof(parameter)
	# Returning anything other than int will throw an error.
