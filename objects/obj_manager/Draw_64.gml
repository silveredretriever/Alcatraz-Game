var _player_exists = false;
var _timer_run = true;

_player_exists = instance_exists(obj_player);

if(_player_exists)
{
	// Draw the HUD coin sprite
	draw_sprite(spr_hud_coin, 0, view_wport - 160, 25);

	// Change the font to ft_hud
	draw_set_font(fnt_hud);

	// Draw the player's coins value
	// Taken from the player
	// using obj_player.coins
	draw_text(view_wport - 120, 15, string("x") + string(obj_player.coins));
	
	// Draws the health in the bottom left
	var _heart_width = sprite_get_width(spr_hud_heart);
	var _width_count = 0;
	for(var _iterate = 5; _iterate > 0; --_iterate) {
		draw_sprite(spr_hud_heart, 0, 15 + _width_count, view_hport - 65);
		_width_count += _heart_width;
	}
	
	// Draws the timer in the top left currently
	if _timer_run
	{
		timer += time.delta_time
		milliseconds = floor(timer/10000) % 100;
		seconds = floor(timer/1000000) % 60;
		if string_length(string(seconds)) < 2
		{
			seconds = string("0") + string(seconds);
		}
		minutes = floor(timer/60000000);
		time = string(minutes) + ":" + string(seconds) + "." + string(milliseconds);
	
		draw_text(15, 15, time);
	}
}