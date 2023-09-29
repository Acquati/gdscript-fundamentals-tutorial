class_name Enemy

# Member Variables
var name: String

# Class Constructor
func _init(value: String = 'Enemy'):
	name = value

func simple_function():
	print('My name is ', name, '.')
	print('Data Type: ', typeof(name)) # Shows the Data Type
