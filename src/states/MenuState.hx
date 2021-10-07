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
		add(playButton);
		
		optionsButton = new FlxText(0, 0, 0, "Options").setFormat("monsterrat", 24);
		add(optionsButton);
	}

	public override function update(dt:Float)
	{
		super.update(dt);
	}
}
