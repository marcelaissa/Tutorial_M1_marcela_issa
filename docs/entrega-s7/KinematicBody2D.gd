extends KinematicBody2D


func _ready():
	pass 
	
func _physics_process(delta):
	var movimento = Vector2()
	movimento.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	movimento = move_and_slide(movimento)
	movimento.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	move_and_slide(movimento*100)


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://gameover.tscn")
