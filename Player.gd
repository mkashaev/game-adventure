extends KinematicBody2D

export (int) var speed = 25
export (int) var wave_height = 50

var counter = 0
var step = 1

func _process(delta):
	var velocity = Vector2()
	velocity.y += step
	velocity = velocity.normalized() * speed
	position += velocity * delta
	
	if counter == wave_height:
		step *= -1
		counter = 0
	counter += 1
