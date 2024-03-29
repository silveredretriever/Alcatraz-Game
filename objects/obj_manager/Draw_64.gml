var _player_exists = false;

_player_exists = instance_exists(obj_player);

if(_player_exists)
{

	// Change the font to ft_hud
	draw_set_font(fnt_hud);
	draw_set_halign(fa_right);

	// Draw the player's coins value
	// Taken from the player
	// using obj_player.coins
	draw_text(view_wport - 40, 15, string(obj_player.points));
	draw_set_halign(fa_left);
	
	// Draws the health in the bottom left
	var _heart_width = sprite_get_width(spr_hud_heart);
	var _width_count = 0;
	for(var _iterate = obj_player.hearts; _iterate > 0; --_iterate) {
		draw_sprite(spr_hud_heart, 0, 15 + _width_count, view_hport - 65);
		_width_count += _heart_width;
	}
	
	// Draws the inventory
	var _heart_height = sprite_get_height(spr_hud_heart);
	_width_count = 0;
	draw_set_font(fnt_item_hud);
	for (var _iterate = inventory.count(); _iterate > 0; --_iterate) {
		draw_sprite(inventory.get(inventory.count()-_iterate).sprite, 0, 15 + _width_count, view_hport - (65 + _heart_height));
		_width_count += sprite_get_width(inventory.get(inventory.count()-_iterate).sprite)
		draw_text(_width_count, view_hport - (45 + _heart_height), string(inventory.get(inventory.count()-_iterate).amount));
	}
	
	// Draws the timer in the top left currently
	if timer_run
	{
		draw_set_font(fnt_hud);
		timer += delta_time;
		milliseconds = floor(timer/10000) % 100;
		if string_length(string(milliseconds)) < 2
		{
			milliseconds = string("0") + string(milliseconds);
		}
		seconds = floor(timer/1000000) % 60;
		if string_length(string(seconds)) < 2
		{
			seconds = string("0") + string(seconds);
		}
		minutes = floor(timer/60000000);
		running_time = string(minutes) + ":" + string(seconds) + "." + string(milliseconds);
	
		draw_text(15, 15, running_time);
	}
}