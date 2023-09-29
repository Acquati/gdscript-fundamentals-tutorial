extends Node2D

# String assignment.
@export var a_string = "Hi"

# String type.
@export var another_string: String

# int type.
@export var a_int: int

# int enumeration.
@export_enum("Up", "Down") var enum_int: int

# String enumeration.
@export_enum("Up", "Down") var enum_string: String

# String enumeration with default value.
@export_enum("Up", "Down") var enum_string_init_value: String = "Up"

# enum
enum UNIQUENAME { UP, DOWN }
@export var example_enum: UNIQUENAME

# int range, starts at 0.
@export_range(0, 20) var example_range: int

# int range starts between 2 values.
@export_range(100, 200) var example_range_2: int

# RGB color with color red assigned as default value.
@export var color := Color(108,0,0)

# Node with default value as empty node path.
@export var node: NodePath

# Array assigned int values.
@export var array: Array = [1,2,3]

# Called when the node enters the scene tree for the first time.
func _ready():
	if (is_visible()):
		print("a_string: ", a_string)
		print("another_string: ", another_string)
		print("a_int: ", a_int)
		print("enum_int: ", enum_int)
		print("enum_string: ", enum_string)
		print("enum_string_init_value: ", enum_string_init_value)
		print("example_enum: ", example_enum)
		print("example_range: ", example_range)
		print("example_range_2: ", example_range_2)
		print("color: ", color)
		print("node: ", node)
		print("array: ", array)
