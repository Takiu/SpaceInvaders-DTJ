package sprites;
import flixel.FlxSprite;
import flixel.system.FlxSound;
/**
 * ...
 * @author ...
 */
class Nave extends FlxSprite
{
	var vel : Int;
	var spr : FlxSprite;
	var sond : FlxSound;
	var bala : FlxSprite;
	var disp : Bool;
	var record : Int;
	
	public function new(t,v) 
	{
		this.vel = v;
	}
	
	public function Mover(){}
	public function Disparar(){}
}