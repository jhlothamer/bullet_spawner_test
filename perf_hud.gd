extends CanvasLayer

onready var _which_test_label: Label = $MarginContainer/VBoxContainer/Label
onready var _fps_value:Label = $MarginContainer/VBoxContainer/FPS/Value
onready var _process_value:Label = $MarginContainer/VBoxContainer/Process/Value
onready var _physics_process_value:Label = $MarginContainer/VBoxContainer/PhysicsProcess/Value

func _ready():
	_which_test_label.text = Globals.get("WhichTest")


func _process(_delta):
	var fps = Performance.get_monitor(Performance.TIME_FPS)
	var process = Performance.get_monitor(Performance.TIME_PROCESS)
	var physics_process = Performance.get_monitor(Performance.TIME_PHYSICS_PROCESS)
	
	_fps_value.text = str(fps)
	_process_value.text = str(process)
	_physics_process_value.text = str(physics_process)
	
