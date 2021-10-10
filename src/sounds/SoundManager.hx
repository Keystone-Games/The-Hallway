package sounds;

import flixel.FlxG;

class SoundManager
{
	public static function playSFX(sound:SFX)
	{
		switch (sound)
		{
			case BUTTON_CLICK:
				FlxG.sound.play(GameAssets.BUTTON_CLICK__ogg);

			case BUTTON_CLICK_FAIL:
				FlxG.sound.play(GameAssets.BUTTON_CLICK_FAIL__ogg);

			case BUTTON_HOVER:
				FlxG.sound.play(GameAssets.BUTTON_HOVER__ogg);
		}
	}

	public static function playMusic(song:Music)
	{
		switch (song)
		{
			case MENU_THEME:
				#if html
				FlxG.sound.playMusic(GameAssets.MENU_THEME__mp3, 1, true);
				#else
				FlxG.sound.playMusic(GameAssets.MENU_THEME__wav, 1, true);
				#end
		}
	}

	public static function init()
	{
		FlxG.sound.play(GameAssets.BUTTON_CLICK__ogg);
		FlxG.sound.play(GameAssets.BUTTON_CLICK_FAIL__ogg);
		FlxG.sound.play(GameAssets.BUTTON_HOVER__ogg);
	}
}

extern enum SFX
{
	BUTTON_CLICK;
	BUTTON_CLICK_FAIL;
	BUTTON_HOVER;
}

extern enum Music
{
	MENU_THEME;
}
