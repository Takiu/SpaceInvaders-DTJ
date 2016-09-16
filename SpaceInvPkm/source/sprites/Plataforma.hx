package sprites;
import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;
import flixel.FlxSprite;
import states.MenuState;

class Plataforma extends FlxSprite
{
	
	
	

	var estado : Int;
	public var destruido : Bool;
	private var spri : FlxSprite;
	
	
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		loadGraphic("assets/sprites/PokeCenter 16x15.png");
		estado = 5;
		destruido = false;
		
	}
	
	
		public function Destruir(): Void
	{
		estado --;
		
		switch estado
		{
			case 4:loadGraphic("assets/sprites/PokeCenter 2.png");
				
			case 3:loadGraphic("assets/sprites/PokeCenter 3.png");
				
			case 2:loadGraphic("assets/sprites/PokeCenter 4.png");
				
			case 1:loadGraphic("assets/sprites/PokeCenter 5.png");
			
			case 0:{destroy(); destruido = true; } 
				
				
		}
		
				
	}
	
	
}
	
