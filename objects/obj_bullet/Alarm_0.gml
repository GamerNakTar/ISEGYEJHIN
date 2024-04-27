var _length = 10;

var _anglediff = random_range(-15,15);
var _xdiff = x + lengthdir_x(_length,direction-180+_anglediff);
var _ydiff = y + lengthdir_y(_length,direction-180+_anglediff);

part_particles_create(particle_system,x,y,particle_trail1,1);
part_particles_create(particle_system,_xdiff,_ydiff,particle_trail2,2);

alarm_set(0,1);