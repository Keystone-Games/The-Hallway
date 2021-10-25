package entity;

class EntityChild extends Entity
{
	public function whip(e:EntityTeacher) {
		if (e != null) {
			FlxG.playSound(GameAssets.CHILD_WHIP__wav);
		}
	}
}
