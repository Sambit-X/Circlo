extends Area2D


func _on_body_entered(body):
	# Check if the colliding body has the name "CharacterBody2D"
	if body.name == "circlo":
		queue_free()
