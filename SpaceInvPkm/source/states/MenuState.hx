package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import states.PlayState;
import flixel.ui.FlxButton;
import flixel.text.FlxText;
import flixel.system.FlxSound;

class MenuState extends FlxState
{
	var pikachu : FlxSprite;
	var camina : Int = 0;
	var tiempo : Int = 0;
	var salto : Bool;
	var texto : String;
	var myText : FlxText;
	var titulo : FlxText;
	var sonido : FlxSound;
	
	override public function create():Void
	{		
		super.create();		
		sonido = FlxG.sound.load(AssetPaths.GameStart__wav, 1, true);
		sonido.play();
		var button:FlxButton = new FlxButton(40,70, "Jugar", OnClickButton);
        add(button);
		pikachu = new FlxSprite();
		pikachu.y = 56;		
		ReiniciarPikachu();
		add(pikachu);
		texto = "Volonterio Julian Nari David     Kasai Takunori";		
		titulo = new FlxText(40, 0, 90, "Space Pokemons", 8, false);
		titulo.alignment = "center";
		titulo.color = 0xffffff00;
		add(titulo);
	}

	override public function update(elapsed:Float):Void
	{		
		super.update(elapsed);
		if(tiempo % 5 == 0){
			if (camina % 2 == 0){
				pikachu.loadGraphic("assets/sprites/PikachuCam2.png");
			}
			else{
				pikachu.loadGraphic("assets/sprites/PikachuCam1.png");
			}			
			if (pikachu.x == 80-7){
				pikachu.loadGraphic("assets/sprites/Pikachu 13x15.png");				
				if (!salto){
					pikachu.y--;					
				}else{
					pikachu.y++;					
				}				
				if (pikachu.y == 50){
					salto = true;	
					myText = new FlxText(40,20,90,texto,8,false);
					add(myText);
				}
				if (pikachu.y == 56) pikachu.x++;
			}else{
				pikachu.x ++;
			}
			if (pikachu.x > FlxG.width - 15 ){
				myText.destroy();
				ReiniciarPikachu();
			}
			camina++;
			tiempo = 0;
		}
		tiempo++;
		
	}
	
	function OnClickButton():Void
    {
        FlxG.switchState(new PlayState());
    }
	
	private function ReiniciarPikachu(){
		pikachu.x = 0;	
		pikachu.loadGraphic("assets/sprites/PikachuCam1.png");
		camina = 0;
		salto = false;
	}
}
