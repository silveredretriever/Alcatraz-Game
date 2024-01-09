draw_self();

if image_speed == 0
{
	if locked
	{
		draw_sprite_ext(spr_key, 0, x, y - 40, 1, 1, 0, c_red, 0.6)
	}
	else
	{
		draw_sprite_ext(spr_key, 0, x, y - 40, 1, 1, 0, c_green, 0.6)
	}
}