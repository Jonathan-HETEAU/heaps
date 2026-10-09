package h3d.mat;
import h3d.mat.Data;

/**
	A texture array: several 2D textures (layers) of the same size and format, sampled with a layer index in shaders.
**/
class TextureArray extends Texture {

	var layers : Int;

	/**
		Creates a texture array of `layers` layers of `w` x `h` pixels.
	**/
	public function new(w, h, layers, ?flags : Array<TextureFlags>, ?format : TextureFormat ) {
		this.layers = layers;
		if( flags == null ) flags = [];
		flags.push(IsArray);
		super(w,h,flags,format);
	}

	override function get_layerCount() {
		return layers;
	}

	override function clone() {
		var old = lastFrame;
		preventAutoDispose();
		var t = new TextureArray(width, height, layers, null, format);
		h3d.pass.Copy.run(this, t);
		@:bypassAccessor lastFrame = old;
		return t;
	}

	/**
		Returns a shared 1x1 texture array with a single dark grey layer, used when a texture array is missing.
	**/
	public static function defaultArrayTexture() {
		var engine = h3d.Engine.getCurrent();
		var t : h3d.mat.TextureArray = @:privateAccess engine.resCache.get(TextureArray);
		if( t != null )
			return t;
		t = new TextureArray(1, 1, 1);
		t.clear(0x202020);
		t.realloc = function() t.clear(0x202020);
		t.setName("defaultArrayTexture");
		@:privateAccess engine.resCache.set(TextureArray, t);
		return t;
	}

	override function toString() {
		return super.toString()+"["+layers+"]";
	}

}