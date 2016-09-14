package sprites;
import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;


class Bichos extends FlxSprite
{
	
	private var dire :Bool;
	public var img = new FlxSprite();
	
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset)
	{
		img.makeGraphic(16, 16);
		super(X, Y, SimpleGraphic);
	}
	
	public function Mover() {
		
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}