package sprites;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxButton;
import sprites.spr;

class Jugador extends Nave
{

	var vida: Int;
	var maxPuntaje : Int;
	
	public function new()
	{
		spr = new FlxSprite(100, 200);
		spr.makeGraphic(64, 64, 0xFFFF00);
		add(spr);
		spr.x = FlxG.widht / 2;
		spr.y = FlxG.height;
	}
	
	override public function Mover() 
	{
		if (spr.x < 0)
		{
			spr.x = 0;
		}
		if (spr.x > FlxG.widht)
		{
			spr.x = FlxG.widht;
		}
		if (FlxG.keys.pressed.Left)
		{
			spr.x -= 4;
		}
		if (FlxG.keys.pressed.Right)
		{
			spr.x += 4;
		}
	}
	
}