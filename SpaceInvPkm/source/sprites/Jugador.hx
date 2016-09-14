package sprites;

import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;
import flixel.FlxSprite;

class Jugador extends FlxSprite
{

	var vida: Int;
	var maxPuntaje : Int;
	public var spr = new FlxSprite();
	
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		spr.makeGraphic(16, 16);
		spr.x = FlxG.width / 2;
		spr.y = FlxG.height - spr.height;
		
		super(X, Y, SimpleGraphic);
		
		
	}
	/*override public function Disparar()
	{
		if (FlxG.keys.justPressed.X)
		{
			
		}
	}
	override public function Mover() 
	{
		if (spr.x < 0)
		{
			spr.x = 0;
		}
		if (spr.x > FlxG.width)
		{
			spr.x = FlxG.width - spr.width;
		}
		if (FlxG.keys.pressed.LEFT)
		{
			spr.x -= 4;
		}
		if (FlxG.keys.pressed.RIGHT)
		{
			spr.x += 4;
		}
	}*/
	
}