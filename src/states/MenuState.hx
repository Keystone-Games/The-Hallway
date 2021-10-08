package states;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;

class MenuState extends FlxState
{
	var title:FlxText;
	var background:FlxSprite;
	var playButton:FlxSprite;
	var optionsButton:FlxText;

	public override function create()
	{
		super.create();
		
		background = new FlxSprite();
		add(background);
		
		title = new FlxText(0, 0, 0, "The Hallway").setFormat("mosterrat", 64);
		title.screenCenter(X);
		add(title);
		
		playButton = new FlxSprite();
		playButton.makeGraphic(200, 100, FlxColor.RED);
		add(playButton);
		
		optionsButton = new FlxText(0, 0, 0, "Options").setFormat("monsterrat", 24);
		add(optionsButton);
	}

	public override function update(dt:Float)
	{
		super.update(dt);
		
		if (FlxG.mouse.overlaps(playButton)) {
			SoundManager.playSFX(BUTTON_HOVER);
			if (FlxG.mouse.justPressed) {
				SoundManager.playSFX(BUTTON_CLICK);
				FlxG.switchState( new LevelSelectorState() );
			}
		}
		if (FlxG.mouse.overlaps(optionsButton)) {
			SoundManager.playSFX(BUTTON_HOVER);
			if (FlxG.mouse.justPressed) {
				SoundManager.playSFX(BUTTON_CLICK):
			}
		}
	}
}
