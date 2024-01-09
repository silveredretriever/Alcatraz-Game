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
	draw_text(1135, 15, string("x") + string(obj_player.coins));
	
	if _timer_run
	{
		milliseconds = floor(get_timer()/10000) % 100;
		seconds = floor(get_timer()/1000000) % 60;
		if string_length(string(seconds)) < 2
		{
			seconds = string("0") + string(seconds);
		}
		minutes = floor(get_timer()/60000000);
		time = string(minutes) + ":" + string(seconds) + "." + string(milliseconds);
	
		draw_text(5, 5, time);
	}
}