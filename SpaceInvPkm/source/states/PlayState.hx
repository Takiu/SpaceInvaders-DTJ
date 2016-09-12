package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import sprites.Jugador;

class PlayState extends FlxState
{
	
	public var limitBic : Bool;
	private var jug : Jugador;
	
	override public function create():Void
	{
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		jug = new Jugador();
		super.update(elapsed);
	}
}
