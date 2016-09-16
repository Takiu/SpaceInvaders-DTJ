package lime;


import lime.utils.Assets;


class AssetData {

	private static var initialized:Bool = false;
	
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var path = new #if haxe3 Map <String, #else Hash <#end String> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();	
	
	public static function initialize():Void {
		
		if (!initialized) {
			
			path.set ("assets/sounds/- Game Start.wav", "assets/sounds/- Game Start.wav");
			type.set ("assets/sounds/- Game Start.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/click.wav", "assets/sounds/click.wav");
			type.set ("assets/sounds/click.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/force.wav", "assets/sounds/force.wav");
			type.set ("assets/sounds/force.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/fuite.wav", "assets/sounds/fuite.wav");
			type.set ("assets/sounds/fuite.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/go pokeball.wav", "assets/sounds/go pokeball.wav");
			type.set ("assets/sounds/go pokeball.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/menu.wav", "assets/sounds/menu.wav");
			type.set ("assets/sounds/menu.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/open.wav", "assets/sounds/open.wav");
			type.set ("assets/sounds/open.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/Pokemon BlueRed .wav", "assets/sounds/Pokemon BlueRed .wav");
			type.set ("assets/sounds/Pokemon BlueRed .wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/PokemonBattle.wav", "assets/sounds/PokemonBattle.wav");
			type.set ("assets/sounds/PokemonBattle.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/sortie.wav", "assets/sounds/sortie.wav");
			type.set ("assets/sounds/sortie.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sprites/Caca.png", "assets/sprites/Caca.png");
			type.set ("assets/sprites/Caca.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/sprites/Colision Rayo.png", "assets/sprites/Colision Rayo.png");
			type.set ("assets/sprites/Colision Rayo.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/sprites/Ho HO 16x15 .png", "assets/sprites/Ho HO 16x15 .png");
			type.set ("assets/sprites/Ho HO 16x15 .png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/sprites/Pikachu 13x15.png", "assets/sprites/Pikachu 13x15.png");
			type.set ("assets/sprites/Pikachu 13x15.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/sprites/PikachuCam1.png", "assets/sprites/PikachuCam1.png");
			type.set ("assets/sprites/PikachuCam1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/sprites/PikachuCam2.png", "assets/sprites/PikachuCam2.png");
			type.set ("assets/sprites/PikachuCam2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/sprites/PokeCenter 16x15.png", "assets/sprites/PokeCenter 16x15.png");
			type.set ("assets/sprites/PokeCenter 16x15.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/sprites/PokeCenter 2.png", "assets/sprites/PokeCenter 2.png");
			type.set ("assets/sprites/PokeCenter 2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/sprites/PokeCenter 3.png", "assets/sprites/PokeCenter 3.png");
			type.set ("assets/sprites/PokeCenter 3.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/sprites/PokeCenter 4.png", "assets/sprites/PokeCenter 4.png");
			type.set ("assets/sprites/PokeCenter 4.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/sprites/PokeCenter 5.png", "assets/sprites/PokeCenter 5.png");
			type.set ("assets/sprites/PokeCenter 5.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/sprites/Rayo 5x7.png", "assets/sprites/Rayo 5x7.png");
			type.set ("assets/sprites/Rayo 5x7.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/sprites/Spearow 16x15.png", "assets/sprites/Spearow 16x15.png");
			type.set ("assets/sprites/Spearow 16x15.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/sounds/beep.ogg", "flixel/sounds/beep.ogg");
			type.set ("flixel/sounds/beep.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/sounds/flixel.ogg", "flixel/sounds/flixel.ogg");
			type.set ("flixel/sounds/flixel.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/fonts/nokiafc22.ttf", "flixel/fonts/nokiafc22.ttf");
			type.set ("flixel/fonts/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/fonts/monsterrat.ttf", "flixel/fonts/monsterrat.ttf");
			type.set ("flixel/fonts/monsterrat.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/images/ui/button.png", "flixel/images/ui/button.png");
			type.set ("flixel/images/ui/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			
			
			initialized = true;
			
		} //!initialized
		
	} //initialize
	
	
} //AssetData
