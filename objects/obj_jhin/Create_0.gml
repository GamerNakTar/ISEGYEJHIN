// bullet
can_shoot = true;
shoot_delay = 60;
global.bullet_speed = 20; 
alarm[0] = shoot_delay;

// heart
e_spawn = true;
timer_spawn = 180;
max_num = 10;
global.cnt = 0;
global.spawn_cnt = 1;

// score
global.score = 0;

// gameover
global.currtime = 0;
global.timer = 60*60;

// fire count
fire_cnt = 1;

// bgm
audio_play_sound(snd_ult1,0,false);
alarm[3] = 60*13;