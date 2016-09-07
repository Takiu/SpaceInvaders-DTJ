package sprites;
import flixel.FlxSprite;
import flixel.system.FlxSound;
/**
 * ...
 * @author ...
 */
class Nave
{
	enum TipoN{
		Enemigo;
		Jugador;
		Ovni;
	}
	
	var tipo : TipoN;
	var vel : Int;
	var spr : FlxSprite;
	var sond : FlxSound; 
	var disp : Bool;
	var score : Int;
	
	public function new(t,v) 
	{
		switch(t){
			case e: this.tipo = Enemigo;
			case j: this.tipo = Jugador;
			case o: this.tipo = Ovni;
		}
		this.vel = v;
	}
	
	public function Mover(){}
	public function Disparar(){}
}