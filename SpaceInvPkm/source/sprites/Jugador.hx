package sprites;

import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxButton;
import sprites.bala;
import sprites.disp;
import sprites.new;
import sprites.spr;

class Jugador extends Nave
{

	var vida: Int;
	var maxPuntaje : Int;
	
	public function new()
	{
		bala = new FlxSprite();
		spr = new FlxSprite();
		bala.makeGraphic(4, 16, 0xFFFF00);
		spr.makeGraphic(64, 64, 0xFFFF00);
		add(bala);
		add(spr);
		spr.x = FlxG.width / 2;
		spr.y = FlxG.height - spr.height;
	}
	
	override public function Disparar()
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
		if (FlxG.keys.pressed.Left)
		{
			spr.x -= 4;
		}
		if (FlxG.keys.pressed.Right)
		{
			spr.x += 4;
		}
	}
	
}