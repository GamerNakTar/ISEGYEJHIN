audio_play_sound(snd_mouse_pressed,0,false);

if (!global.tutorial_played)
{
	global.tutorial_played = true;
	room_goto(rm_tutorial);
}
else
{
	room_goto(rm_game);
}