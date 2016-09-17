package states;

import flixel.FlxState;
import Reg;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class Reiniciar extends FlxState
{	
	var titulo : FlxText;
	var color : FlxColor;
	
	public function new() 
	{
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
	
}