package states.levels;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;

class LevelBase extends FlxState
{
	final level = 0;

	static var baseMap:{};

	var title:FlxText;

	public override function create()
	{
		super.create();

		initMap();
		title = new FlxText(0, 0, 0, "Level " + level).setFormat("monsterrat", 64);
		add(title);
	}

	public override function update(dt:Float)
	{
		super.update(dt);
	}

	private static function initMap()
	{
		baseMap = {
			floor: {},
			rooms: {}
		};
	}

	public static function makePerson(type:Person)
	{
		var p = {ai: {}, sprite: {}};

		switch (type)
		{
			case teacher:
				p.sprite = {
					idle: {
						frametime: 700,
						frames: [
							new FlxSprite(0, 0, GameAssets.TEACHER_IDLE_1__png),
							new FlxSprite(0, 0, GameAssets.TEACHER_IDLE_2__png)
						]
					}
				};

				p.ai = {
					whipChild: function(t):Bool
					{
						if (t.csprite.overlaps(Child))
						{
							return true;
						}
						else
						{
							return false;
						}
					}
				};

			case student:
		}

		return p;
	}
}

extern enum Person
{
	teacher;
	student;
}
