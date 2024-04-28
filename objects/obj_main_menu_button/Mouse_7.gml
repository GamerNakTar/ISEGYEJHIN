room_restart();
audio_pause_all();
audio_play_sound(snd_mouse_pressed,0,false);
global.pause = false;
room_goto(rm_start);