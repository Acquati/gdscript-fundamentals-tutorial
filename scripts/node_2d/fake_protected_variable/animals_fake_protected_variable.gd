# Not working on Godot 4.1.1
extends Node

class_name AnimalsFakeProtectedVariable

var _protected_variable: String = "Protected Variable": set = protected_set, get = protected_get

func protected_set(_parameter):
	print('Animals Error: Can\'t Access Private Variable Setter.')

func protected_get():
	print('Animals Error: Can\'t Access Private Variable Getter.')

func change_value():
	print("Animal Class Before Change: ", self._protected_variable)
	self._protected_variable = 'Value changed inside class Animals.' # Local access.
	print("Animal Class After Change: ", self._protected_variable)
