package;

import openfl.display.Sprite;
import openfl.Lib;
import openfl.Assets;
import openfl.display.BitmapData;
import openfl.utils.ByteArray;
import haxe.crypto.Base64;
import haxe.io.Bytes;
import openfl.geom.Rectangle;
import openfl.display.JPEGEncoderOptions;

/**
 * ...
 * @author wuey99
 */
class Main extends Sprite 
{

	public function new() 
	{
		super();
		
		trace(": starting... : ");
		
		var bitmapData:BitmapData = Assets.getBitmapData( "img/stop-icon.png" );

		var byteArray:ByteArray = bitmapData.encode( bitmapData.rect, new JPEGEncoderOptions() );
		byteArray.position = 0;
		var bytes:Bytes = Bytes.ofString( byteArray.readUTFBytes( byteArray.length ) );
		
		trace(": JPEG: ", bytes.length, Base64.encode(bytes));
	}

}
