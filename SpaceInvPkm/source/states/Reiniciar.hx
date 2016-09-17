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
			texto = "GANASTE";		
			color = 0x00FF40;
		}
		else {
			//Perdio
			texto = "PERDISTE";		
			color = 0xffff0000;
		}		
		titulo = new FlxText(40, 50, 90, texto, 8, false);
		titulo.alignment = "center";
		titulo.color = color;
		add(titulo);
		FlxG.switchState(new MenuState());
	}
	
	override public function update(elapsed:Float):Void
	{		
		super.update(elapsed);
	}
}