package hxd.fs;

#if js
/**
	The native type of a `LoadedBitmap`: an image element.
**/
typedef LoadedBitmapData = js.html.Image;
#else
/**
	The native type of a `LoadedBitmap`.
**/
typedef LoadedBitmapData = hxd.BitmapData;
#end

/**
	An image decoded by the platform, returned by `FileEntry.loadBitmap`.
**/
abstract LoadedBitmap(LoadedBitmapData) {

	/**
		Wraps the native image.
	**/
	public inline function new(data) {
		this = data;
	}

	/**
		Returns the image as a `BitmapData` (drawn into a canvas on JS).
	**/
	public function toBitmap() : hxd.BitmapData {
		#if js
		var bmp = new hxd.BitmapData(this.width, this.height);
		@:privateAccess bmp.ctx.drawImage(this, 0, 0);
		return bmp;
		#else
		return this;
		#end
	}

	/**
		Returns the native image.
	**/
	public inline function toNative() : LoadedBitmapData {
		return this;
	}

}