package entity;

import flixel.FlxG;

class EntityTeacher extends Entity
{
	public function whipChild(e:EntityChild)
	{
		if (e == null)
			return;

		FlxG.sound.play(GameAssets.WHIP_CHILD__ogg);
		e.whip(this);
	}
}
