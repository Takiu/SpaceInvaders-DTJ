package sprites;

import flixel.FlxSprite;
import flixel.FlxButton;
import sprites.spr;

class Jugador extends Nave
{

	var vida: Int;
	var maxPuntaje : int
	
	public function new()
	{
	spr = new FlxSprite(100, 200);
	spr.makeGraphic(64, 64, 0xFFFF00);
	add(spr);
	}
	
	override public function Mover() 
	{
		if(FlxG.keys.p
	}
	
}