class_name Enemy

# Member Variables
var Name: String

# Class Constructor
func _init(name: String = 'Enemy'):
	Name = name

func simpleFunction():
	print('My name is ', Name, '.')
	print('Data Type: ', typeof(Name)) # Shows the Data Type
