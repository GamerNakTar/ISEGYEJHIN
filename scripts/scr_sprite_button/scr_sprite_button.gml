// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sprite_button(){
	var _mousex = device_mouse_x_to_gui(0);
	var _mousey = device_mouse_y_to_gui(0);
	var _select = false;
	
	var _sprite = argument0;
	var _subimage = argument1;
	var _x1 = argument2;
	var _y1 = argument3;
	var _scale = argument4;
	var _alpha = argument5;
	
	var _width = sprite_get_width(_sprite);
	var _height = sprite_get_height(_sprite);
	
	var _xoffset = sprite_get_xoffset(_sprite);
	var _yoffset = sprite_get_yoffset(_sprite);
	
	var _xmid = _width/2-_xoffset;
	var _ymid = _height/2-_yoffset;
	
	var _xx1 = _x1-(_width/2)*_scale;
	var _xx2 = _x1+(_width/2)*_scale;
	var _yy1 = _y1-(_height/2)*_scale;
	var _yy2 = _y1+(_height/2)*_scale;
	
	if (point_in_rectangle(_mousex,_mousey,_xx1,_yy1,_xx2,_yy2))
	{
		_select = true;
	}
	
	draw_sprite_ext(_sprite,_subimage,_x1-_xmid,_y1-_ymid,_scale,_scale,0,c_white,_alpha);
	
	return(_select);
}