// rotate to point at direction
var _dir = point_direction(x,y,mouse_x,mouse_y) - 90;
image_angle = _dir;
image_yscale = max(1,15/sprite_width);

particle_system = part_system_create_layer("Bullets",0);

particle_trail1 = part_type_create();

part_type_sprite(particle_trail1,spr_trail,0,0,0);
part_type_life(particle_trail1,15,20);
part_type_alpha3(particle_trail1,1,1,0);
part_type_size(particle_trail1,2,3,0,0);

particle_trail2 = part_type_create();

part_type_sprite(particle_trail2,spr_trail2,0,0,0);
part_type_life(particle_trail2,15,20);
part_type_alpha3(particle_trail2,1,1,0);
part_type_size(particle_trail2,1,2,0,0);

alarm[0] = 2;