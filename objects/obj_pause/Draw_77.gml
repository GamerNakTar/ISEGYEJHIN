/// Toggle pause
if (keyboard_check_pressed(vk_escape))
{
	if (!global.pause)
	{
		global.pause = true;
		
		// deactivate everything other then this instance
		// instance_deactivate_all(true);
		instance_deactivate_layer("Instances");
		instance_create_layer(256,128,"Menu",obj_restart_button);
		instance_create_layer(256,160,"Menu",obj_main_menu_button);
	}
	else
	{
		global.pause = false;
		// instance_activate_all();
		instance_activate_layer("Instances");		
		instance_destroy(obj_restart_button);
		instance_destroy(obj_main_menu_button);
	}
}