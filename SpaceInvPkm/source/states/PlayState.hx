package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import sprites.Bichos;
import sprites.Jugador;

class PlayState extends FlxState
{
	
	public var limitBic : Bool;
	private var jug : Jugador;
	private var bic : Bichos;
	private var Invasion = new Array<Bichos>();
	
	override public function create():Void
	{
		super.create();
		/*var Coordy = 16;
		while (Coordy < 145)
		{
			
			var Coordx = 16;
			while (Coordx < 16)
			{
				
				bic = new Bichos(); 
				bic.x = Coordx;				
				bic.y = Coordy;
				Invasion.push(bic);	
				this.add(bic);
				Coordx += 16;			
				
				
			}		
			Coordy += 16;					
			
		}*/
	}

	override public function update(elapsed:Float):Void
	{
		bic.Mover();
		super.update(elapsed);
	}
}
