package entity;

import flixel.FlxSprite;

class Entity
{
	public var baseSprite:FlxSprite;

	public static function update(dt:Float) {}

	public static function hit(tool:Tool)
	{
		switch (tool)
		{
			case PENCIL:
				hpc();
			case PEN:
				hpn();
			case STICK:
				hst();
		}
	}

	private static function hpc() {}

	private static function hpn() {}

	private static function hst() {}
}

extern enum Person
{
	teacher;
	student;
}
