# Not working on Godot 4.1.1
extends AnimalsFakeProtectedVariable

class_name FrogFakeProtectedVariable

func changeValue():
	self._protectedVariable = 'Value changed inside Frog.' # local access
	# self._protectedVariable = "Hello" # setter called
	# self._protectedVariable # getter called
	
	print("Frog Class After Change:", self._protectedVariable)
