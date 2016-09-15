package sprites;

import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;
import flixel.FlxSprite;

class Jugador extends FlxSprite
{

	var vida: Int;
	var maxPuntaje : Int;
	
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		loadGraphic("assets/sprites/Pikachu 13x15.png");
		
	}
	public function Mover() 
	{
		if (x < 0)
		{
			x = 0;
		}
		if (x > FlxG.width)
		{
			x = FlxG.width - 16;
		}
		if (FlxG.keys.pressed.LEFT)
		{
			x -= 4;
		}
		if (FlxG.keys.pressed.RIGHT)
		{
			x += 4;
		}
	}
	
}