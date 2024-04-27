// direction
image_angle = point_direction(x,y,mouse_x,mouse_y) - 90;

// fire
var _fire = mouse_check_button(mb_left);
if (_fire && can_shoot)
{
	var _bullet = instance_create_layer(x,y,"Bullets",obj_bullet);
	
	with(_bullet)
	{
		move_towards_point(mouse_x, mouse_y,global.bullet_speed);
	}

	can_shoot = false;
	alarm[0] = shoot_delay;
	sprite_index = spr_jhin_shoot;
	
	// screen shake
	layer_set_visible("Shake",true);
	alarm[2] = 15;
}

// create hearts randomly
if (e_spawn && global.cnt < max_num)
{
	global.cnt++;
	random_set_seed(current_time);
	instance_create_layer(random_range(16,624),random_range(16,260),"Instances",obj_heart);
	e_spawn = false;
	alarm[1] = timer_spawn;
}

global.currtime++;
if (global.currtime > global.timer)
{
	room_goto(rm_result);
}