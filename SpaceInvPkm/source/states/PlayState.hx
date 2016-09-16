package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.math.FlxMath;
import sprites.Bichos;
import sprites.Disparo;
import sprites.Jugador;
import Std.random;
import sprites.Plataforma;

class PlayState extends FlxState
{
	
	public var limitBic : Bool;
	private var jug : Jugador;
	private var bic : Bichos;
	private var hooh : Bichos;
	private var Invasion = new Array<Bichos>();
	private var Test : Plataforma; //Test Deivid
	private var PokeCenters = new Array<Plataforma>(); // Test Deivid
	private var dire : Bool;
	private var elimDisp : Bool;
	private var dis : Disparo;
	private var disJ : Disparo;
	//private var ovni : Ovni;
	var text : String;
	
	override public function create():Void
	{
		dire = true;
		var Coordy = 16;
		while (Coordy < 80)
		{			
			var Coordx = 16;
			while (Coordx < 126)
			{				
				bic = new Bichos(1,Coordx,Coordy); 
				Invasion.push(bic);	
				add(bic);
				Coordx += 16;
			}		
			Coordy += 16;	
		}
		jug = new Jugador(FlxG.width/2 - 8,FlxG.height-16);
		add(jug);
		text = "Hello world";
        var myText = new FlxText(0,0,150,text,6,false);
        add(myText);
		super.create();
		
		var Coordx = 20;
		Coordy = 100;
		for (i in 0...4) 
		{
			Test = new Plataforma(Coordx, Coordy);
			PokeCenters.push(Test);
			add (Test);
			Coordx += 36;
		}
		
	}
	var baja : Bool;
	var timeD : Int = 0;
	var timeH : Int = 0;
	var timeSpr : Int = 0;
	var eneDisp : Bool;
	override public function update(elapsed:Float):Void
	{		
		timeD++;
		timeH++;
		baja = false;
		for (i in 0...Invasion.length){
			if (Invasion[i].x + 16 >= 160)
			{
				dire = false;
				baja = true;
			}
			if (Invasion[i].x <= 0)
			{
				dire = true;
				baja = true;
			}
			Invasion[i].Mover(dire);				
		}
		
		if (baja) for (i in 0...Invasion.length) 
			{
				Invasion[i].Bajar();
				if (Invasion[i].ColisionPikachu(jug))
				{
					Invasion[i].destroy();
					Invasion[i].Muerto = true;
					jug.RestarVida();
				}
			}
			
		if (timeD == 150){
			timeD = 0;
			var rand : Int = random(Invasion.length-1);
			dis = new Disparo(Invasion[rand].x, Invasion[rand].y, 1);
			add(dis);
			eneDisp = true;
		}
		if (eneDisp)	
		{
			dis.y ++;
			
			if (dis.ColisionCaca(jug)) 
			{
				eneDisp = false;
				dis.destroy();
				jug.RestarVida();
				timeSpr++;
			}
			
			for (i in 0...4)
			{
			if (dis.ColisionCacaPlataforma(PokeCenters[i])) 
			{
				eneDisp = false;
				dis.destroy();
				PokeCenters[i].Destruir();
			}
			}
			
			if (dis.y >= 144) {
				eneDisp = false;
				dis.destroy();
			}
		}
		jug.Mover();
		if (!elimDisp)
		{
			if (FlxG.keys.justPressed.SPACE)
			{
				disJ = new Disparo( jug.x + 5, jug.y, 0);
				add(disJ);
				elimDisp = true;
			}
		}
		if (elimDisp)
		{
			for (i in 0...Invasion.length)
			{
				if (disJ.ColisionRayo(Invasion[i]))
				{
					disJ.destroy();
					Invasion[i].destroy();
					Invasion[i].Muerto = true;
					elimDisp = false;
				}
			}
					
			if (disJ.Rango())
			{
				disJ.destroy();
				elimDisp = false;
			}
		}
		if (timeH == 400){
			hooh = new Bichos(2,0,8);
			add(hooh);			
		}
		if (timeH > 400){
			hooh.Mover(true);
			if (hooh.x > FlxG.width - 16){
				hooh.destroy();
				timeH = 0;
			}
		}
		if (timeSpr != 0){
			timeSpr++;
			if (timeSpr == 30){
				timeSpr = 0;
				jug.Revivir();
			}
		}
		super.update(elapsed);
	}
}
