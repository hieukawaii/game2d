 if (global.music_on) {
    audio_stop_sound(snd_bgm);
    global.music_on = false;
} else {
    audio_play_sound(snd_bgm, 0, true);
    global.music_on = true;
}

                          