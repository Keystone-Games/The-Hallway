package;

import config.Reference;
import flixel.FlxGame;
import openfl.Lib;
import openfl.display.Sprite;
import sounds.SoundManager;
import states.MenuState;

class Main extends Sprite
{
	public override function new()
	{
		super();
		init();
	}

	public static function begin()
	{
		trace("Loading engine...");
		trace("Engine version: " + Reference.APP_VERSION);
		Lib.current.addChild(new FlxGame(0, 0, MenuState, 1, 60, 60, true, true));
		trace("Engine loaded!");
	}

	public static function init()
	{
		begin();
		SoundManager.init();
		SoundManager.playMusic(MENU_THEME);
	}
}
