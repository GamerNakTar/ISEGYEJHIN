if (x + dir*move_speed > 640 || x + dir*move_speed < 0)
{
	dir *= -1;
}
x += dir * move_speed;
time++;
if (time > timer)
{
	time = 0;
	dir = random(2) - 1;
	if (dir < 0.5 && dir > 0)
	{
		dir = 0.5;
	}
	else if (dir > -0.5 && dir < 0)
	{
		dir = -0.5;
	}
	timer = random_range(15, 40);
}