# extends keyword is used to Inherit from a class
extends Animal

class_name Horse

var FirstName: String: set = setFirstName, get = getFirstName

func _init(firstName: String = 'Godot', food: String = 'orange'):
	setFood(food)
	setFirstName(firstName)

func setFirstName(firstName: String) -> void:
	FirstName = firstName

func getFirstName() -> String:
	return FirstName

func eat() -> void:
	print(getFirstName(),' really wants to eat that ', getFood(), '.')

func sleep() -> void:
	print(getFirstName(), ' is sleeping.')
