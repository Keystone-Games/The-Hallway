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
	
	public static function onExit() {
		// save data
		#if sys
		var directory = System.applicationStorageDirectory;
		var oFile = "./data.json";
		var oFPath = Path.join([directory, oFile]);
		trace("Saving options data");
		var data = {
			"options":{
				"fullscreen": FlxG.fullscreen,
				"debugMode": false,
				"touchscreenmode": false,
				"pauseOnLostFocus": FlxG.autoPause
			},
			
			"data":{
				"playedTutorial": Reference.HAS_PLAYED_TUTORIAL,
				"currentLevel": Reference.CURRENT_LEVEL,
				"deaths": Reference.STAT_DEATHS,
				"kills": Reference.STAT_KILLS
			}
		};
		var content = Json.stringify(options);
		File.saveContent(oFPath, data);

		trace("Finished saving data!");
		#end
	}
}
