extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if (is_visible()):
		print('basicParameter return int: ', basicParameter(10))
		
		# Parameter needs to be String or throws error.
		print('stringParameter return String: ', stringParameter('Avocado'))
		
		# Parameter needs to be a String or empty.
		print('defaultParameter() return default parameter: ', defaultParameter())
		print('defaultParameter(\'Melon\') return parameter: ', defaultParameter('Melon'))
		
		# Function return type int.
		print('returnType return Type: ', returnType(6))
		
		var instanceOfPlayer := Player.new('Phrase is now: \'String constructor parameter.\'')
		instanceOfPlayer.printPhrase()
	
		Player.new('Phrase is now: \'Static call.\'').printPhrase()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
# Basic Function with parameter data type.
func basicParameter(parameter: int) -> int:
	# The name in the parameter is a variable, it holds data.
	return parameter

func stringParameter(parameter: String) -> String:
	return parameter

# Function with a default value in the parameter.
func defaultParameter(parameter: String = 'I am a default parameter') -> String:
	return (parameter)

# Function with non void return type.
func returnType(parameter):
	return typeof(parameter)
	# Returning anything other than int will throw an error.
