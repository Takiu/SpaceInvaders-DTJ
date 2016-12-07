package;


import haxe.Timer;
import haxe.Unserializer;
import lime.app.Future;
import lime.app.Preloader;
import lime.app.Promise;
import lime.audio.AudioSource;
import lime.audio.openal.AL;
import lime.audio.AudioBuffer;
import lime.graphics.Image;
import lime.net.HTTPRequest;
import lime.system.CFFI;
import lime.text.Font;
import lime.utils.Bytes;
import lime.utils.UInt8Array;
import lime.Assets;

#if sys
import sys.FileSystem;
#end

#if flash
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Loader;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
import flash.media.Sound;
import flash.net.URLLoader;
import flash.net.URLRequest;
#end


class DefaultAssetLibrary extends AssetLibrary {
	
	
	public var className (default, null) = new Map <String, Dynamic> ();
	public var path (default, null) = new Map <String, String> ();
	public var type (default, null) = new Map <String, AssetType> ();
	
	private var lastModified:Float;
	private var timer:Timer;
	
	
	public function new () {
		
		super ();
		
		#if (openfl && !flash)
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		
		
		#end
		
		#if flash
		
		className.set ("assets/sounds/click.wav", __ASSET__assets_sounds_click_wav);
		type.set ("assets/sounds/click.wav", AssetType.SOUND);
		className.set ("assets/sounds/force.wav", __ASSET__assets_sounds_force_wav);
		type.set ("assets/sounds/force.wav", AssetType.SOUND);
		className.set ("assets/sounds/fuite.wav", __ASSET__assets_sounds_fuite_wav);
		type.set ("assets/sounds/fuite.wav", AssetType.SOUND);
		className.set ("assets/sounds/GameStart.wav", __ASSET__assets_sounds_gamestart_wav);
		type.set ("assets/sounds/GameStart.wav", AssetType.SOUND);
		className.set ("assets/sounds/go pokeball.wav", __ASSET__assets_sounds_go_pokeball_wav);
		type.set ("assets/sounds/go pokeball.wav", AssetType.SOUND);
		className.set ("assets/sounds/menu.wav", __ASSET__assets_sounds_menu_wav);
		type.set ("assets/sounds/menu.wav", AssetType.SOUND);
		className.set ("assets/sounds/open.wav", __ASSET__assets_sounds_open_wav);
		type.set ("assets/sounds/open.wav", AssetType.SOUND);
		className.set ("assets/sounds/Pokemon BlueRed .wav", __ASSET__assets_sounds_pokemon_bluered__wav);
		type.set ("assets/sounds/Pokemon BlueRed .wav", AssetType.SOUND);
		className.set ("assets/sounds/PokemonBattle.wav", __ASSET__assets_sounds_pokemonbattle_wav);
		type.set ("assets/sounds/PokemonBattle.wav", AssetType.SOUND);
		className.set ("assets/sounds/sortie.wav", __ASSET__assets_sounds_sortie_wav);
		type.set ("assets/sounds/sortie.wav", AssetType.SOUND);
		className.set ("assets/sprites/Caca.png", __ASSET__assets_sprites_caca_png);
		type.set ("assets/sprites/Caca.png", AssetType.IMAGE);
		className.set ("assets/sprites/Colision Rayo.png", __ASSET__assets_sprites_colision_rayo_png);
		type.set ("assets/sprites/Colision Rayo.png", AssetType.IMAGE);
		className.set ("assets/sprites/Ho-Oh 16x15 .png", __ASSET__assets_sprites_ho_oh_16x15__png);
		type.set ("assets/sprites/Ho-Oh 16x15 .png", AssetType.IMAGE);
		className.set ("assets/sprites/Pikachu 13x15.png", __ASSET__assets_sprites_pikachu_13x15_png);
		type.set ("assets/sprites/Pikachu 13x15.png", AssetType.IMAGE);
		className.set ("assets/sprites/pikachu die.png", __ASSET__assets_sprites_pikachu_die_png);
		type.set ("assets/sprites/pikachu die.png", AssetType.IMAGE);
		className.set ("assets/sprites/PikachuCam1.png", __ASSET__assets_sprites_pikachucam1_png);
		type.set ("assets/sprites/PikachuCam1.png", AssetType.IMAGE);
		className.set ("assets/sprites/PikachuCam2.png", __ASSET__assets_sprites_pikachucam2_png);
		type.set ("assets/sprites/PikachuCam2.png", AssetType.IMAGE);
		className.set ("assets/sprites/PokeCenter 16x15.png", __ASSET__assets_sprites_pokecenter_16x15_png);
		type.set ("assets/sprites/PokeCenter 16x15.png", AssetType.IMAGE);
		className.set ("assets/sprites/PokeCenter 2.png", __ASSET__assets_sprites_pokecenter_2_png);
		type.set ("assets/sprites/PokeCenter 2.png", AssetType.IMAGE);
		className.set ("assets/sprites/PokeCenter 3.png", __ASSET__assets_sprites_pokecenter_3_png);
		type.set ("assets/sprites/PokeCenter 3.png", AssetType.IMAGE);
		className.set ("assets/sprites/PokeCenter 4.png", __ASSET__assets_sprites_pokecenter_4_png);
		type.set ("assets/sprites/PokeCenter 4.png", AssetType.IMAGE);
		className.set ("assets/sprites/PokeCenter 5.png", __ASSET__assets_sprites_pokecenter_5_png);
		type.set ("assets/sprites/PokeCenter 5.png", AssetType.IMAGE);
		className.set ("assets/sprites/Rayo 5x7.png", __ASSET__assets_sprites_rayo_5x7_png);
		type.set ("assets/sprites/Rayo 5x7.png", AssetType.IMAGE);
		className.set ("assets/sprites/Sperrow.png", __ASSET__assets_sprites_sperrow_png);
		type.set ("assets/sprites/Sperrow.png", AssetType.IMAGE);
		className.set ("flixel/sounds/beep.ogg", __ASSET__flixel_sounds_beep_ogg);
		type.set ("flixel/sounds/beep.ogg", AssetType.SOUND);
		className.set ("flixel/sounds/flixel.ogg", __ASSET__flixel_sounds_flixel_ogg);
		type.set ("flixel/sounds/flixel.ogg", AssetType.SOUND);
		className.set ("flixel/fonts/nokiafc22.ttf", __ASSET__flixel_fonts_nokiafc22_ttf);
		type.set ("flixel/fonts/nokiafc22.ttf", AssetType.FONT);
		className.set ("flixel/fonts/monsterrat.ttf", __ASSET__flixel_fonts_monsterrat_ttf);
		type.set ("flixel/fonts/monsterrat.ttf", AssetType.FONT);
		className.set ("flixel/images/ui/button.png", __ASSET__flixel_images_ui_button_png);
		type.set ("flixel/images/ui/button.png", AssetType.IMAGE);
		className.set ("flixel/images/logo/default.png", __ASSET__flixel_images_logo_default_png);
		type.set ("flixel/images/logo/default.png", AssetType.IMAGE);
		
		
		#elseif html5
		
		var id;
		id = "assets/sounds/click.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/force.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/fuite.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/GameStart.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/go pokeball.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/menu.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/open.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/Pokemon BlueRed .wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/PokemonBattle.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/sortie.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sprites/Caca.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/sprites/Colision Rayo.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/sprites/Ho-Oh 16x15 .png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/sprites/Pikachu 13x15.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/sprites/pikachu die.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/sprites/PikachuCam1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/sprites/PikachuCam2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/sprites/PokeCenter 16x15.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/sprites/PokeCenter 2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/sprites/PokeCenter 3.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/sprites/PokeCenter 4.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/sprites/PokeCenter 5.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/sprites/Rayo 5x7.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/sprites/Sperrow.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/sounds/beep.ogg";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "flixel/sounds/flixel.ogg";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "flixel/fonts/nokiafc22.ttf";
		className.set (id, __ASSET__flixel_fonts_nokiafc22_ttf);
		
		type.set (id, AssetType.FONT);
		id = "flixel/fonts/monsterrat.ttf";
		className.set (id, __ASSET__flixel_fonts_monsterrat_ttf);
		
		type.set (id, AssetType.FONT);
		id = "flixel/images/ui/button.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/images/logo/default.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		
		
		var assetsPrefix = null;
		if (ApplicationMain.config != null && Reflect.hasField (ApplicationMain.config, "assetsPrefix")) {
			assetsPrefix = ApplicationMain.config.assetsPrefix;
		}
		if (assetsPrefix != null) {
			for (k in path.keys()) {
				path.set(k, assetsPrefix + path[k]);
			}
		}
		
		#else
		
		#if (windows || mac || linux)
		
		var useManifest = false;
		
		className.set ("assets/sounds/click.wav", __ASSET__assets_sounds_click_wav);
		type.set ("assets/sounds/click.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/force.wav", __ASSET__assets_sounds_force_wav);
		type.set ("assets/sounds/force.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/fuite.wav", __ASSET__assets_sounds_fuite_wav);
		type.set ("assets/sounds/fuite.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/GameStart.wav", __ASSET__assets_sounds_gamestart_wav);
		type.set ("assets/sounds/GameStart.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/go pokeball.wav", __ASSET__assets_sounds_go_pokeball_wav);
		type.set ("assets/sounds/go pokeball.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/menu.wav", __ASSET__assets_sounds_menu_wav);
		type.set ("assets/sounds/menu.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/open.wav", __ASSET__assets_sounds_open_wav);
		type.set ("assets/sounds/open.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/Pokemon BlueRed .wav", __ASSET__assets_sounds_pokemon_bluered__wav);
		type.set ("assets/sounds/Pokemon BlueRed .wav", AssetType.SOUND);
		
		className.set ("assets/sounds/PokemonBattle.wav", __ASSET__assets_sounds_pokemonbattle_wav);
		type.set ("assets/sounds/PokemonBattle.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/sortie.wav", __ASSET__assets_sounds_sortie_wav);
		type.set ("assets/sounds/sortie.wav", AssetType.SOUND);
		
		className.set ("assets/sprites/Caca.png", __ASSET__assets_sprites_caca_png);
		type.set ("assets/sprites/Caca.png", AssetType.IMAGE);
		
		className.set ("assets/sprites/Colision Rayo.png", __ASSET__assets_sprites_colision_rayo_png);
		type.set ("assets/sprites/Colision Rayo.png", AssetType.IMAGE);
		
		className.set ("assets/sprites/Ho-Oh 16x15 .png", __ASSET__assets_sprites_ho_oh_16x15__png);
		type.set ("assets/sprites/Ho-Oh 16x15 .png", AssetType.IMAGE);
		
		className.set ("assets/sprites/Pikachu 13x15.png", __ASSET__assets_sprites_pikachu_13x15_png);
		type.set ("assets/sprites/Pikachu 13x15.png", AssetType.IMAGE);
		
		className.set ("assets/sprites/pikachu die.png", __ASSET__assets_sprites_pikachu_die_png);
		type.set ("assets/sprites/pikachu die.png", AssetType.IMAGE);
		
		className.set ("assets/sprites/PikachuCam1.png", __ASSET__assets_sprites_pikachucam1_png);
		type.set ("assets/sprites/PikachuCam1.png", AssetType.IMAGE);
		
		className.set ("assets/sprites/PikachuCam2.png", __ASSET__assets_sprites_pikachucam2_png);
		type.set ("assets/sprites/PikachuCam2.png", AssetType.IMAGE);
		
		className.set ("assets/sprites/PokeCenter 16x15.png", __ASSET__assets_sprites_pokecenter_16x15_png);
		type.set ("assets/sprites/PokeCenter 16x15.png", AssetType.IMAGE);
		
		className.set ("assets/sprites/PokeCenter 2.png", __ASSET__assets_sprites_pokecenter_2_png);
		type.set ("assets/sprites/PokeCenter 2.png", AssetType.IMAGE);
		
		className.set ("assets/sprites/PokeCenter 3.png", __ASSET__assets_sprites_pokecenter_3_png);
		type.set ("assets/sprites/PokeCenter 3.png", AssetType.IMAGE);
		
		className.set ("assets/sprites/PokeCenter 4.png", __ASSET__assets_sprites_pokecenter_4_png);
		type.set ("assets/sprites/PokeCenter 4.png", AssetType.IMAGE);
		
		className.set ("assets/sprites/PokeCenter 5.png", __ASSET__assets_sprites_pokecenter_5_png);
		type.set ("assets/sprites/PokeCenter 5.png", AssetType.IMAGE);
		
		className.set ("assets/sprites/Rayo 5x7.png", __ASSET__assets_sprites_rayo_5x7_png);
		type.set ("assets/sprites/Rayo 5x7.png", AssetType.IMAGE);
		
		className.set ("assets/sprites/Sperrow.png", __ASSET__assets_sprites_sperrow_png);
		type.set ("assets/sprites/Sperrow.png", AssetType.IMAGE);
		
		className.set ("flixel/sounds/beep.ogg", __ASSET__flixel_sounds_beep_ogg);
		type.set ("flixel/sounds/beep.ogg", AssetType.SOUND);
		
		className.set ("flixel/sounds/flixel.ogg", __ASSET__flixel_sounds_flixel_ogg);
		type.set ("flixel/sounds/flixel.ogg", AssetType.SOUND);
		
		className.set ("flixel/fonts/nokiafc22.ttf", __ASSET__flixel_fonts_nokiafc22_ttf);
		type.set ("flixel/fonts/nokiafc22.ttf", AssetType.FONT);
		
		className.set ("flixel/fonts/monsterrat.ttf", __ASSET__flixel_fonts_monsterrat_ttf);
		type.set ("flixel/fonts/monsterrat.ttf", AssetType.FONT);
		
		className.set ("flixel/images/ui/button.png", __ASSET__flixel_images_ui_button_png);
		type.set ("flixel/images/ui/button.png", AssetType.IMAGE);
		
		className.set ("flixel/images/logo/default.png", __ASSET__flixel_images_logo_default_png);
		type.set ("flixel/images/logo/default.png", AssetType.IMAGE);
		
		
		if (useManifest) {
			
			loadManifest ();
			
			if (Sys.args ().indexOf ("-livereload") > -1) {
				
				var path = FileSystem.fullPath ("manifest");
				lastModified = FileSystem.stat (path).mtime.getTime ();
				
				timer = new Timer (2000);
				timer.run = function () {
					
					var modified = FileSystem.stat (path).mtime.getTime ();
					
					if (modified > lastModified) {
						
						lastModified = modified;
						loadManifest ();
						
						onChange.dispatch ();
						
					}
					
				}
				
			}
			
		}
		
		#else
		
		loadManifest ();
		
		#end
		#end
		
	}
	
	
	public override function exists (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var assetType = this.type.get (id);
		
		if (assetType != null) {
			
			if (assetType == requestedType || ((requestedType == SOUND || requestedType == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if (requestedType == BINARY && (assetType == BINARY || assetType == TEXT || assetType == IMAGE)) {
				
				return true;
				
			} else if (requestedType == TEXT && assetType == BINARY) {
				
				return true;
				
			} else if (requestedType == null || path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (requestedType == BINARY || requestedType == null || (assetType == BINARY && requestedType == TEXT)) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getAudioBuffer (id:String):AudioBuffer {
		
		#if flash
		
		var buffer = new AudioBuffer ();
		buffer.src = cast (Type.createInstance (className.get (id), []), Sound);
		return buffer;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		if (className.exists(id)) return AudioBuffer.fromBytes (cast (Type.createInstance (className.get (id), []), Bytes));
		else return AudioBuffer.fromFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getBytes (id:String):Bytes {
		
		#if flash
		
		switch (type.get (id)) {
			
			case TEXT, BINARY:
				
				return Bytes.ofData (cast (Type.createInstance (className.get (id), []), flash.utils.ByteArray));
			
			case IMAGE:
				
				var bitmapData = cast (Type.createInstance (className.get (id), []), BitmapData);
				return Bytes.ofData (bitmapData.getPixels (bitmapData.rect));
			
			default:
				
				return null;
			
		}
		
		return cast (Type.createInstance (className.get (id), []), Bytes);
		
		#elseif html5
		
		var loader = Preloader.loaders.get (path.get (id));
		
		if (loader == null) {
			
			return null;
			
		}
		
		var bytes = loader.bytes;
		
		if (bytes != null) {
			
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Bytes);
		else return Bytes.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Font {
		
		#if flash
		
		var src = Type.createInstance (className.get (id), []);
		
		var font = new Font (src.fontName);
		font.src = src;
		return font;
		
		#elseif html5
		
		return cast (Type.createInstance (className.get (id), []), Font);
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Font);
			
		} else {
			
			return Font.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	public override function getImage (id:String):Image {
		
		#if flash
		
		return Image.fromBitmapData (cast (Type.createInstance (className.get (id), []), BitmapData));
		
		#elseif html5
		
		return Image.fromImageElement (Preloader.images.get (path.get (id)));
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Image);
			
		} else {
			
			return Image.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	/*public override function getMusic (id:String):Dynamic {
		
		#if flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif openfl_html5
		
		//var sound = new Sound ();
		//sound.__buffer = true;
		//sound.load (new URLRequest (path.get (id)));
		//return sound;
		return null;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return null;
		//if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		//else return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}*/
	
	
	public override function getPath (id:String):String {
		
		//#if ios
		
		//return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		//#else
		
		return path.get (id);
		
		//#end
		
	}
	
	
	public override function getText (id:String):String {
		
		#if html5
		
		var loader = Preloader.loaders.get (path.get (id));
		
		if (loader == null) {
			
			return null;
			
		}
		
		var bytes = loader.bytes;
		
		if (bytes != null) {
			
			return bytes.getString (0, bytes.length);
			
		} else {
			
			return null;
		}
		
		#else
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.getString (0, bytes.length);
			
		}
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		
		#if flash
		
		//if (requestedType != AssetType.MUSIC && requestedType != AssetType.SOUND) {
			
			return className.exists (id);
			
		//}
		
		#end
		
		return true;
		
	}
	
	
	public override function list (type:String):Array<String> {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var items = [];
		
		for (id in this.type.keys ()) {
			
			if (requestedType == null || exists (id, type)) {
				
				items.push (id);
				
			}
			
		}
		
		return items;
		
	}
	
	
	public override function loadAudioBuffer (id:String):Future<AudioBuffer> {
		
		var promise = new Promise<AudioBuffer> ();
		
		#if (flash)
		
		if (path.exists (id)) {
			
			var soundLoader = new Sound ();
			soundLoader.addEventListener (Event.COMPLETE, function (event) {
				
				var audioBuffer:AudioBuffer = new AudioBuffer();
				audioBuffer.src = event.currentTarget;
				promise.complete (audioBuffer);
				
			});
			soundLoader.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			soundLoader.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			soundLoader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getAudioBuffer (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<AudioBuffer> (function () return getAudioBuffer (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	public override function loadBytes (id:String):Future<Bytes> {
		
		var promise = new Promise<Bytes> ();
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.dataFormat = flash.net.URLLoaderDataFormat.BINARY;
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = Bytes.ofData (event.currentTarget.data);
				promise.complete (bytes);
				
			});
			loader.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			loader.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getBytes (id));
			
		}
		
		#elseif html5
		
		if (path.exists (id)) {
			
			var request = new HTTPRequest ();
			promise.completeWith (request.load (path.get (id) + "?" + Assets.cache.version));
			
		} else {
			
			promise.complete (getBytes (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<Bytes> (function () return getBytes (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	public override function loadImage (id:String):Future<Image> {
		
		var promise = new Promise<Image> ();
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bitmapData = cast (event.currentTarget.content, Bitmap).bitmapData;
				promise.complete (Image.fromBitmapData (bitmapData));
				
			});
			loader.contentLoaderInfo.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			loader.contentLoaderInfo.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getImage (id));
			
		}
		
		#elseif html5
		
		if (path.exists (id)) {
			
			var image = new js.html.Image ();
			image.onload = function (_):Void {
				
				promise.complete (Image.fromImageElement (image));
				
			}
			image.onerror = promise.error;
			image.src = path.get (id) + "?" + Assets.cache.version;
			
		} else {
			
			promise.complete (getImage (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<Image> (function () return getImage (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	#if (!flash && !html5)
	private function loadManifest ():Void {
		
		try {
			
			#if blackberry
			var bytes = Bytes.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = Bytes.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = Bytes.readFile ("assets/manifest");
			#elseif (mac && java)
			var bytes = Bytes.readFile ("../Resources/manifest");
			#elseif (ios || tvos)
			var bytes = Bytes.readFile ("assets/manifest");
			#else
			var bytes = Bytes.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				if (bytes.length > 0) {
					
					var data = bytes.getString (0, bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<Dynamic> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							if (!className.exists (asset.id)) {
								
								#if (ios || tvos)
								path.set (asset.id, "assets/" + asset.path);
								#else
								path.set (asset.id, asset.path);
								#end
								type.set (asset.id, cast (asset.type, AssetType));
								
							}
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest (bytes was null)");
				
			}
		
		} catch (e:Dynamic) {
			
			trace ('Warning: Could not load asset manifest (${e})');
			
		}
		
	}
	#end
	
	
	public override function loadText (id:String):Future<String> {
		
		var promise = new Promise<String> ();
		
		#if html5
		
		if (path.exists (id)) {
			
			var request = new HTTPRequest ();
			var future = request.load (path.get (id) + "?" + Assets.cache.version);
			future.onProgress (function (progress) promise.progress (progress));
			future.onError (function (msg) promise.error (msg));
			future.onComplete (function (bytes) promise.complete (bytes.getString (0, bytes.length)));
			
		} else {
			
			promise.complete (getText (id));
			
		}
		
		#else
		
		promise.completeWith (loadBytes (id).then (function (bytes) {
			
			return new Future<String> (function () {
				
				if (bytes == null) {
					
					return null;
					
				} else {
					
					return bytes.getString (0, bytes.length);
					
				}
				
			});
			
		}));
		
		#end
		
		return promise.future;
		
	}
	
	
}


#if !display
#if flash

@:keep @:bind #if display private #end class __ASSET__assets_sounds_click_wav extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_force_wav extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_fuite_wav extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_gamestart_wav extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_go_pokeball_wav extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_menu_wav extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_open_wav extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_pokemon_bluered__wav extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_pokemonbattle_wav extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_sortie_wav extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sprites_caca_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_sprites_colision_rayo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_sprites_ho_oh_16x15__png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_sprites_pikachu_13x15_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_sprites_pikachu_die_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_sprites_pikachucam1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_sprites_pikachucam2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_sprites_pokecenter_16x15_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_sprites_pokecenter_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_sprites_pokecenter_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_sprites_pokecenter_4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_sprites_pokecenter_5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_sprites_rayo_5x7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_sprites_sperrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }


#elseif html5



























@:keep #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { super (); name = "Nokia Cellphone FC Small"; } } 
@:keep #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { super (); name = "Monsterrat"; } } 




#else



#if (windows || mac || linux || cpp)


@:file("assets/sounds/click.wav") #if display private #end class __ASSET__assets_sounds_click_wav extends lime.utils.Bytes {}
@:file("assets/sounds/force.wav") #if display private #end class __ASSET__assets_sounds_force_wav extends lime.utils.Bytes {}
@:file("assets/sounds/fuite.wav") #if display private #end class __ASSET__assets_sounds_fuite_wav extends lime.utils.Bytes {}
@:file("assets/sounds/GameStart.wav") #if display private #end class __ASSET__assets_sounds_gamestart_wav extends lime.utils.Bytes {}
@:file("assets/sounds/go pokeball.wav") #if display private #end class __ASSET__assets_sounds_go_pokeball_wav extends lime.utils.Bytes {}
@:file("assets/sounds/menu.wav") #if display private #end class __ASSET__assets_sounds_menu_wav extends lime.utils.Bytes {}
@:file("assets/sounds/open.wav") #if display private #end class __ASSET__assets_sounds_open_wav extends lime.utils.Bytes {}
@:file("assets/sounds/Pokemon BlueRed .wav") #if display private #end class __ASSET__assets_sounds_pokemon_bluered__wav extends lime.utils.Bytes {}
@:file("assets/sounds/PokemonBattle.wav") #if display private #end class __ASSET__assets_sounds_pokemonbattle_wav extends lime.utils.Bytes {}
@:file("assets/sounds/sortie.wav") #if display private #end class __ASSET__assets_sounds_sortie_wav extends lime.utils.Bytes {}
@:image("assets/sprites/Caca.png") #if display private #end class __ASSET__assets_sprites_caca_png extends lime.graphics.Image {}
@:image("assets/sprites/Colision Rayo.png") #if display private #end class __ASSET__assets_sprites_colision_rayo_png extends lime.graphics.Image {}
@:image("assets/sprites/Ho-Oh 16x15 .png") #if display private #end class __ASSET__assets_sprites_ho_oh_16x15__png extends lime.graphics.Image {}
@:image("assets/sprites/Pikachu 13x15.png") #if display private #end class __ASSET__assets_sprites_pikachu_13x15_png extends lime.graphics.Image {}
@:image("assets/sprites/pikachu die.png") #if display private #end class __ASSET__assets_sprites_pikachu_die_png extends lime.graphics.Image {}
@:image("assets/sprites/PikachuCam1.png") #if display private #end class __ASSET__assets_sprites_pikachucam1_png extends lime.graphics.Image {}
@:image("assets/sprites/PikachuCam2.png") #if display private #end class __ASSET__assets_sprites_pikachucam2_png extends lime.graphics.Image {}
@:image("assets/sprites/PokeCenter 16x15.png") #if display private #end class __ASSET__assets_sprites_pokecenter_16x15_png extends lime.graphics.Image {}
@:image("assets/sprites/PokeCenter 2.png") #if display private #end class __ASSET__assets_sprites_pokecenter_2_png extends lime.graphics.Image {}
@:image("assets/sprites/PokeCenter 3.png") #if display private #end class __ASSET__assets_sprites_pokecenter_3_png extends lime.graphics.Image {}
@:image("assets/sprites/PokeCenter 4.png") #if display private #end class __ASSET__assets_sprites_pokecenter_4_png extends lime.graphics.Image {}
@:image("assets/sprites/PokeCenter 5.png") #if display private #end class __ASSET__assets_sprites_pokecenter_5_png extends lime.graphics.Image {}
@:image("assets/sprites/Rayo 5x7.png") #if display private #end class __ASSET__assets_sprites_rayo_5x7_png extends lime.graphics.Image {}
@:image("assets/sprites/Sperrow.png") #if display private #end class __ASSET__assets_sprites_sperrow_png extends lime.graphics.Image {}
@:file("C:/HaxeToolkit/haxe/lib/flixel/4,2,0/assets/sounds/beep.ogg") #if display private #end class __ASSET__flixel_sounds_beep_ogg extends lime.utils.Bytes {}
@:file("C:/HaxeToolkit/haxe/lib/flixel/4,2,0/assets/sounds/flixel.ogg") #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends lime.utils.Bytes {}
@:font("C:/HaxeToolkit/haxe/lib/flixel/4,2,0/assets/fonts/nokiafc22.ttf") #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:font("C:/HaxeToolkit/haxe/lib/flixel/4,2,0/assets/fonts/monsterrat.ttf") #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:image("C:/HaxeToolkit/haxe/lib/flixel/4,2,0/assets/images/ui/button.png") #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:image("C:/HaxeToolkit/haxe/lib/flixel/4,2,0/assets/images/logo/default.png") #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}



#end
#end

#if (openfl && !flash)
@:keep #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { var font = new __ASSET__flixel_fonts_nokiafc22_ttf (); src = font.src; name = font.name; super (); }}
@:keep #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { var font = new __ASSET__flixel_fonts_monsterrat_ttf (); src = font.src; name = font.name; super (); }}

#end

#end