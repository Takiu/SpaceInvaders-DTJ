package sprites;

import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;
import flixel.FlxSprite;
import states.MenuState;

class Jugador extends FlxSprite
{

	var vida: Int;
	var maxPuntaje : Int;
	var record : Int;
	
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		loadGraphic("assets/sprites/Pikachu 13x15.png");
		vida = 3;
		
	}
	public function Mover() 
	{
		if (x < 0)
		{
			x = 0;
		}
		if (x > FlxG.width - 16)
		{
			x = FlxG.width - 16;
		}
		if (FlxG.keys.pressed.LEFT)
		{
			x -= 1;
		}
		if (FlxG.keys.pressed.RIGHT)
		{
			x += 1;
		}
	}
	
	public function Actualizar():String
	{
		return "Vida: " + vida + "Record: " + record;
	}
	
	public function RestarVida()
	{
		vida--;
		loadGraphic("assets/sprites/pikachu die.png");
		if (vida == 0){
			//Perdio
			FlxG.switchState(new MenuState());
		}
	}
	
	public function SumRecord(tipo : Int) 
	{
		record += (tipo == 1)?1:5;		
	}
	
	public function Revivir(){
		loadGraphic("assets/sprites/Pikachu 13x15.png");
	}
	
}