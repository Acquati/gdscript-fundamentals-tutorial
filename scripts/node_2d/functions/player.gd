class_name Player

var health: int = 100: set = set_health, get = get_health

var phrase: String = 'This is my default phrase.'

func _init(value: String):
	phrase = value

func print_phrase() -> void:
	print(phrase)

func basic_function() -> void:
	pass # You can also use 'return', the value Null is returned regardless 

# Samples of Naming Conventions
func set_health(value: int) -> void:
	health = value

func get_health() -> int:
	return health # returns 100

func heal_player(health_points := health) -> void:
	health += health_points

func damage_player(damage_points := health) -> void:
	health -= damage_points
