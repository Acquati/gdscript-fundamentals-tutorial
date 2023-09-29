# extends keyword is used to Inherit from a class
extends Animal

class_name Horse

var first_name: String: set = set_first_name, get = get_first_name

func _init(value_1: String = 'Godot', value_2: String = 'orange'):
	set_first_name(value_1)
	set_food(value_2)

func set_first_name(value: String) -> void:
	first_name = value

func get_first_name() -> String:
	return first_name

func eat() -> void:
	print(get_first_name(),' really wants to eat that ', get_food(), '.')

func sleep() -> void:
	print(get_first_name(), ' is sleeping.')
