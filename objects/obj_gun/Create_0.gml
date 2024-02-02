/// @description
// Você pode escrever seu código neste editor

amount_bullets = 7
quantity_bullets = 30
speed_attack = 60
next_shot = speed_attack

/// @method direction_and_shooting
direction_and_shooting = function() {
	#region direction
	if instance_exists(obj_player) {
		x = obj_player.x
		y = obj_player.y

		direction = point_direction(x, y, mouse_x, mouse_y)
		if direction < 280 and direction > 90 {
			image_yscale = -1
			obj_player.image_xscale = -1
		} else {
			image_yscale = 1
			obj_player.image_xscale = 1
		}
	}
	image_angle = direction
	#endregion
	
	#region shoot
	if next_shot > 0 next_shot--
	if mouse_check_button(mb_left) {
		if amount_bullets and next_shot == 0 {
			amount_bullets--
			next_shot = speed_attack
			var _weapon_tip_x = lengthdir_x(20, direction)
			var _weapon_tip_y = lengthdir_y(20, direction)
			var _shot = instance_create_layer(x + _weapon_tip_x, y + _weapon_tip_y, "Instances", obj_shot)
			_shot.direction = direction
			_shot.image_angle = direction
			_shot.speed = 15
		}
	}
	// reload
	if keyboard_check(ord("R")) and amount_bullets < 7 and quantity_bullets > 0 {
		var _total_bullets_to_reload = 7 - amount_bullets
		 if quantity_bullets >= _total_bullets_to_reload {
		   amount_bullets = 7
			 quantity_bullets -= _total_bullets_to_reload
		 } else {
			amount_bullets = quantity_bullets
			quantity_bullets = 0
		 }
	}
	#endregion
}






