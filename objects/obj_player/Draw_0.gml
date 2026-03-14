draw_self();

if alarm[0] > 0 {
	draw_set_halign(fa_center);
	var _time = round(alarm[0] / 60); // convert frames to seconds
	draw_text(x, y - 60, _time);
	draw_set_halign(fa_left);
}

if (show_fire) {
	var _dist = -40;
	
	var _x = x + lengthdir_x(_dist, image_angle);
	var _y = y + lengthdir_y(_dist, image_angle);

draw_sprite_ext(spr_flame, 0, _x, _y, 1, 1, image_angle, c_white, 1);
}