package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import states.PlayState;

class MenuState extends FlxState
{
	override public function create():Void
	{
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		FlxG.switchState(new PlayState());
		super.update(elapsed);
	}
}
