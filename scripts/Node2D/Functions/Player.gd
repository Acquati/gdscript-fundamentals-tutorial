class_name Player

var Health: int = 100: set = setHealth, get = getHealth

var Phrase: String = 'This is my default phrase.'

func _init(phrase: String):
	Phrase = phrase

func printPhrase() -> void:
	print(Phrase)

func basicFunction() -> void:
	pass # You can also use 'return', the value Null is returned regardless 

# Samples of Naming Conventions
func setHealth(health: int) -> void:
	Health = health

func getHealth() -> int:
	return Health # returns 100

func healPlayer(healthPoints := Health) -> void:
	Health += healthPoints

func damagePlayer(damagePoints := Health) -> void:
	Health -= damagePoints
