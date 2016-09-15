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

	
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		loadGraphic("assets/sprites/Caca.png");
		y = y + 16;
		velocity.y = 50;		
	}
	
	override public function update(elapsed:Float):Void
	{
		
		super.update(elapsed);
	}
}