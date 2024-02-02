/// @description
// Você pode escrever seu código neste editor

life = 100
direction = 0
_speed = 2

/// @method movimentation
movimentation = function() {
	var _up, _down, _left, _right, _speed_x, _speed_y
	
	_up = keyboard_check(ord("W"))
	_down = keyboard_check(ord("S"))
	_left = keyboard_check(ord("A"))
	_right = keyboard_check(ord("D"))
	
	_speed_x = (_right - _left) * _speed
	_speed_y = (_down - _up) * _speed
	
	x += _speed_x
	y += _speed_y
}


