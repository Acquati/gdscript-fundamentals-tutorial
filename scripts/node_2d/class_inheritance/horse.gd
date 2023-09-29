# extends keyword is used to Inherit from a class
extends Animal

class_name Horse

var first_name: String: set = set_first_name, get = get_first_name

func _init(firstName: String = 'Godot', food: String = 'orange'):
	set_food(food)
	set_first_name(firstName)

func set_first_name(firstName: String) -> void:
	first_name = firstName

func get_first_name() -> String:
	return first_name

func eat() -> void:
	print(get_first_name(),' really wants to eat that ', get_food(), '.')

func sleep() -> void:
	print(get_first_name(), ' is sleeping.')
