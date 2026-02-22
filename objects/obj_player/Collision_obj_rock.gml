explosion_color = make_color_rgb(irandom(255), irandom(255), irandom(255));

effect_create_above(ef_firework, x, y, 1, explosion_color);
instance_destroy();

obj_game.alarm[0] = 120;