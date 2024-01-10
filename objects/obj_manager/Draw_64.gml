var _player_exists = false;
var _timer_run = true;

_player_exists = instance_exists(obj_player);

if(_player_exists)
{
	// Draw the HUD coin sprite
	draw_sprite(spr_hud_coin, 0, 1100, 25);

	// Change the font to ft_hud
	draw_set_font(fnt_hud);

	// Draw the player's coins value
	// Taken from the player
	// using obj_player.coins
	draw_text(100, 100, string());
	draw_text(room_width - 100, 15, string("x") + string(obj_player.coins));
	
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