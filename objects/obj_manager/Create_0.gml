// Stop the menu music
audio_stop_sound(snd_music_menu);

// Stop the game music
audio_stop_sound(snd_music_game);

// Start game music
audio_play_sound(snd_music_game, 0, 1, 1.0, 0, 1.0);

// All of these are timer variables <3
timer = 0;
milliseconds = 0;
seconds = 0;
minutes = 0;
running_time = "0:00.00";

timer_run = true;

inventory = new Inventory();