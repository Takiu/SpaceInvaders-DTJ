package sprites;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;

/**
 * ...
 * @author ...
 */
class Disparo extends FlxSprite
{

	
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset, tipo:Int) 
	{
		super(X, Y, SimpleGraphic);
		if (tipo == 1)
		{
			velocity.y = 50;
			loadGraphic("assets/sprites/Caca.png");
			y = y + 16;	
		}
		else if (tipo == 0)
		{
			loadGraphic("assets/sprites/Rayo 5x7.png");
			y = y - 8;
			velocity.y = - 50;
		}
		
	}
	public function Rango():Bool
	{
		if (y < 0)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
}