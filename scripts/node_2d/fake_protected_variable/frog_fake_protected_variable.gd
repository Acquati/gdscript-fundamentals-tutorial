# Not working on Godot 4.1.1
extends AnimalsFakeProtectedVariable

class_name FrogFakeProtectedVariable

func change_value():
	self._protected_variable = 'Value changed inside Frog.' # local access
	# self._protected_variable = "Hello" # setter called
	# self._protected_variable # getter called
	
	print("Frog Class After Change:", self._protected_variable)
