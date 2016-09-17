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
	

	public function ColisionRayo(?Bicho:Bichos): Bool
	{
				
		if ( (y <= Bicho.y+15 && y >= Bicho.y) && x >= Bicho.x && x <= Bicho.x+16 && Bicho.Muerto == false)
		return true;
		else 
		return false; 
		
	}
	
	public function ColisionCaca(?Pikachu:Jugador): Bool
	{
		if ( y+7 >= Pikachu.y && x+3 >= Pikachu.x && x+3 <= Pikachu.x+13)
		return true;
		else 
		return false; 
		
	}
	
	public function ColisionCacaPlataforma(?PCenter:Plataforma): Bool
	{
		if ( y+7 >= PCenter.y && x+3 >= PCenter.x && x+3 <= PCenter.x+15 && PCenter.destruido == false)
		return true;
		else 
		return false; 
		
	}
	
	public function ColisionRayoPlataforma(?PCenter:Plataforma): Bool
	{
		if ( (y >= PCenter.y && y <= PCenter.y+16) && x+3 >= PCenter.x && x+3 <= PCenter.x+15 && PCenter.destruido == false)
		return true;
		else 
		return false; 
		
	}
}
