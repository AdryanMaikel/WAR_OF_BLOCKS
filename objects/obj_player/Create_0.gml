/// @description
// Você pode escrever seu código neste editor

life = 100
direction = 0
_speed = 2

contains_gun = true

/// @method movimentation
movimentation = function() {
	var _up, _down, _left, _right, _speed_x, _speed_y

	_up = keyboard_check(ord("W"))
	_down = keyboard_check(ord("S"))
	_left = keyboard_check(ord("A"))
	_right = keyboard_check(ord("D"))

	_speed_x = (_right - _left) * _speed
	_speed_y = (_down - _up) * _speed
	
	direction = point_direction(x, y, mouse_x, mouse_y)
	image_angle = direction
	
	if place_meeting(x+_speed_x, y, obj_colisor) {
		while !place_meeting(x+sign(_speed_x), y, obj_colisor) {
			x = x + sign(_speed_x)
			direction = direction + sign(_speed_x)
		}
		_speed_x = 0
	}
	x += _speed_x

	if place_meeting(x, y+_speed_y, obj_colisor) {
		while !place_meeting(x, y+sign(_speed_y), obj_colisor) {
			 direction = direction
			 y = y + sign(_speed_y)
		}
		_speed_y = 0
	}
	y += _speed_y
}


