package sprites;
import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;


class Bichos extends FlxSprite
{
	public var Muerto :Bool; 
	
	private var dire :Bool;
	private var vel : Float;
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset)
	{
		super(X, Y, SimpleGraphic);
		loadGraphic("assets/sprites/Spearow 16x15.png");
		vel = 0.1;
		Muerto = false; 
	}
	
	public function Mover(dire : Bool) {
		if (dire){
			x += vel;
		}else{
			x -= vel;
		}
	}
	
	public function Bajar() {
		y += 4;
		vel += 0.05;
		
	}

}