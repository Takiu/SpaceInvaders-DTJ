package sprites;
import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;


class Bichos extends FlxSprite
{
	public var Muerto :Bool; 
	
	private var dire :Bool;
	private var vel : Float;	
	public function new(tipo : Int, ?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset)
	{
		super(X, Y, SimpleGraphic);
		if (tipo == 1){
			loadGraphic("assets/sprites/Spearow 16x15.png");
			vel = 0.1;	
		}else{
			loadGraphic("assets/sprites/Ho-Oh 16x15 .png");
			vel = 0.3;	
		}
		
		
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
	
	
	public function ColisionPikachu(?Pikachu:Jugador): Bool
	{
		if ( y+15 >= Pikachu.y && (x >= Pikachu.x || x+16 >= Pikachu.x )&& x <= Pikachu.x+13 )
		return true;
		else 
		return false; 
		
	}

}