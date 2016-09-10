package sprites;
import flixel.FlxSprite;
import sprites.spr;


class Bichos extends Enemigo
{
	
	private var dire :Bool;
	private var img : FlxSprite;
	
	public function new() 
	{
		spr = 
	}
	
	override public function Mover() {
		if (dire) {
			x += 5;
			//si es igual al fin entonces cambiar dire y bajar y
		}
		else {
			x -= 5;
			//si es igual al inicio entonces cambiar dire y bajar y
		}
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		Mover();
	}
}