package hxd.res;

/**
	The default font embedded in Heaps.
**/
class DefaultFont {

	/**
		Returns the default font, loaded once per engine.
	**/
	public static function get() : h2d.Font {
		var engine = h3d.Engine.getCurrent();
		var fnt : h2d.Font = engine.resCache.get(DefaultFont);
		if( fnt == null ) {
			var BYTES = hxd.res.Embed.getResource("hxd/res/defaultFont.png");
			var DESC = hxd.res.Embed.getResource("hxd/res/defaultFont.fnt");
			var bmp = new BitmapFont(DESC.entry);
			@:privateAccess bmp.loader = BYTES.loader;
			fnt = bmp.toFont();
			engine.resCache.set(DefaultFont, fnt);
		}
		return fnt;
	}

}