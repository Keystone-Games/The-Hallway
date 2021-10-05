package;

import config.Reference;
import flixel.FlxGame;
import openfl.Lib;
import openfl.display.Sprite;
import states.MenuState;

class Main extends Sprite
{
	public override function new()
	{
		super();
		begin();
	}

	public static function begin()
	{
		trace("Loading engine...");
		trace("Engine version: " + Reference.app_version);
		Lib.current.addChild(new FlxGame(0, 0, MenuState, 1, 60, 60, true, true));
		trace("Engine loaded!");
	}
}
