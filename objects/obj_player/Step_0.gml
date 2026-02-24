obj_game.player_speed = speed;

if keyboard_check(vk_up) || keyboard_check(ord("W")) {
	motion_add(image_angle, 0.1)	
}

if keyboard_check(vk_left) || keyboard_check(ord("A"))  {
	image_angle += 4		
}

if keyboard_check(vk_right) || keyboard_check(ord("D")){
	image_angle -= 4	
}

if keyboard_check(vk_down) || keyboard_check(ord("S")) {
	if (speed != 0) {
		motion_add(image_angle, -0.1)	
	}
}

move_wrap(true, true, 0)



if (mouse_check_button_pressed(mb_left) || keyboard_check(vk_space))  {
		instance_create_layer(x, y, "Instances", obj_bullet);
		//can_shoot = false;
		//alarm[0] = fire_rate;
		
		if powerup == 1 {
			var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
			_bullet.direction += 10;
			var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
			_bullet.direction -= 10;
		}
}

//if (invincible_timer > 0) {
	//invincible_timer--;
	//image_alpha = 0.5;
//} else {
//	image_alpha = 1;
//}