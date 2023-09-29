extends Node2D

var BarcelonaGoalkeeper = load('res://scripts/node_2d/namespaces/barcelona/goalkeeper.gd')
# var RealMadridGoalkeeper = load('res://scripts/node_2d/namespaces/real_madrid/goalkeeper.gd')
var goalkeeper_ref = load('res://scripts/node_2d/namespaces/real_madrid/goalkeeper.gd')
var Goalkeeper = goalkeeper_ref.Goalkeeper

# Called when the node enters the scene tree for the first time.
func _ready():
	if (is_visible()):
		var goalkeeper_1_instance = BarcelonaGoalkeeper.new()
		goalkeeper_1_instance.sayName()
		var goalkeeper_2_instance = Goalkeeper.new()
		goalkeeper_2_instance.sayName()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
