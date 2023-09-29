class_name Human

var unique_name: String = "John": set = set_unique_name, get = get_unique_name

func _ready():
	unique_name = "Jane" # Does not call method.
	print(unique_name) # Does not call method, Jane is assigned.
	
	self.unique_name = "Aurora" # Activates setter.
	print(self.unique_name) # Activates getter.

func set_unique_name(value):
	unique_name = value
	print('Activated setter: ', unique_name, '.')

func get_unique_name():
	print('Activated getter.')
	return unique_name
