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

		title = new FlxText(0, 0, 0, "The Hallway", 64);
		title.screenCenter(X);
		add(title);
	}

	public override function update(dt:Float)
	{
		super.update(dt);
	}
}
