draw_set_alpha(0.6);
draw_rectangle_color(128,96, 640,512, c_black,c_black,c_black,c_black, 0);
draw_set_alpha(1);

draw_text(360,128,"RESULT");
draw_text(340,192,string_concat("SCORE: ",global.score));
draw_text(270,400,"PRESS ANY KEY TO CONTINUE");