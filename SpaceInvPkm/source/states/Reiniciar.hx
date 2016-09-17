package states;

import flixel.FlxState;
import Reg;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.FlxG;
import states.MenuState;

class Reiniciar extends FlxState
{	
	var titulo : FlxText;
	var color : FlxColor;
	var texto : String;
	
	override public function create():Void
	{
		super.create();	
		if (Reg.Fin) {
			//Gano
			texto = "¡GANASTE!";		
			color = 0x00FF40;
		}
		else {
			//Perdio
			texto = "¡PERDISTE!";		
			color = 0xffff0000;
		}		
		titulo = new FlxText(0, 144, 150, texto, 20, false);
		titulo.alignment = "center";
		titulo.color = color;
		add(titulo);		
	}
	var time : Int=0;
	override public function update(elapsed:Float):Void
	{		
		time++;
		if(time == 3){
			titulo.y--;
			time = 0;
		}
		if (titulo.y == 50) {
			FlxG.switchState(new MenuState());
		}
		super.update(elapsed);
	}
}