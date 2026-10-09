package h3d.pass;

#if macro

/**
	Unavailable in macros.
**/
class Copy {

	/**
		Unavailable in macros.
	**/
	public static function run( from : h3d.mat.Texture, to : h3d.mat.Texture, ?blend : h3d.mat.BlendMode, ?pass : h3d.mat.Pass ) {
		throw "assert";
	}

}

#else

private class ArrayCopyShader extends h3d.shader.ScreenShader {

	static var SRC = {
		@param var texture : Sampler2DArray;
		@param var layer : Int;
		function fragment() {
			pixelColor = texture.get(vec3(calculatedUV, layer));
		}
	}
}

/**
	Copies a layer of a texture array to a texture.
**/
class ArrayCopy extends ScreenFx<ArrayCopyShader> {

	/**
		Creates the pass.
	**/
	public function new() {
		super(new ArrayCopyShader());
	}

	/**
		Copies the layer `fromLayer` of `from` to the layer `layer` of `to` (or to the current target if `to` is `null`).
	**/
	public function apply( from : h3d.mat.TextureArray, fromLayer : Int, to, ?blend : h3d.mat.BlendMode, ?customPass : h3d.mat.Pass, ?layer : Int) {
		if( to != null )
			engine.pushTarget(to, layer != null ? layer : 0);
		shader.texture = from;
		shader.layer = fromLayer;
		if( customPass != null ) {
			if( blend != null ) customPass.setBlendMode(blend);
			var h = @:privateAccess customPass.shaders;
			while( h.next != null )
				h = h.next;
			h.next = @:privateAccess pass.shaders;
			var old = pass;
			pass = customPass;
			render();
			pass = old;
			h.next = null;
		} else {
			pass.setBlendMode(blend == null ? None : blend);
			render();
		}
		shader.texture = null;
		shader.layer = 0;
		if( to != null )
			engine.popTarget();
	}

	/**
		Copies a layer of a texture array using a shared instance.
	**/
	public static function run( from : h3d.mat.TextureArray, fromLayer : Int, to : h3d.mat.Texture, ?blend : h3d.mat.BlendMode, ?pass : h3d.mat.Pass, ?layer : Int ) {
		var engine = h3d.Engine.getCurrent();
		if( to != null && from != null && (blend == null || blend == None) && pass == null && engine.driver.copyTexture(from, to) )
			return;
		var inst : ArrayCopy = @:privateAccess engine.resCache.get(ArrayCopy);
		if( inst == null ) {
			inst = new ArrayCopy();
			@:privateAccess engine.resCache.set(ArrayCopy, inst);
		}
		return inst.apply(from, fromLayer, to, blend, pass, layer);
	}
}

private class CopyShader extends h3d.shader.ScreenShader {

	static var SRC = {
		@param var texture : Sampler2D;
		function fragment() {
			pixelColor = texture.getLod(calculatedUV, 0.0);
		}
	}
}

/**
	Copies a texture to another texture (or to the current target), with an optional blend mode.

	```haxe
	h3d.pass.Copy.run(source, destination);
	```
**/
class Copy extends ScreenFx<CopyShader> {

	/**
		Creates the pass.
	**/
	public function new() {
		super(new CopyShader());
	}

	/**
		Copies `from` to `to` (or to the current target if `to` is `null`).
		@param blend The blend mode used to draw.
		@param customPass A pass whose render states are used instead.
		@param layer The layer of `to` to draw to.
		@param toMip The mip level of `to` to draw to.
		@param fromMip The mip level of `from` to read.
	**/
	public function apply( from, to, ?blend : h3d.mat.BlendMode, ?customPass : h3d.mat.Pass, ?layer :Int, ?toMip :Int, ?fromMip :Int) {
		if( to != null )
			engine.pushTarget(to, layer ?? 0, toMip ?? 0, NotBound);
		shader.texture = from;
		var oldStartingMip = from.startingMip;
		if( fromMip != null )
			from.startingMip = fromMip;
		if( customPass != null ) {
			if( blend != null ) customPass.setBlendMode(blend);
			var h = @:privateAccess customPass.shaders;
			while( h.next != null )
				h = h.next;
			h.next = @:privateAccess pass.shaders;
			var old = pass;
			pass = customPass;
			render();
			pass = old;
			h.next = null;
		} else {
			pass.setBlendMode(blend ?? None);
			render();
		}
		from.startingMip = oldStartingMip;
		shader.texture = null;
		if( to != null )
			engine.popTarget();
	}

	/**
		Copies `from` to `to` using a shared instance, or a direct GPU copy when no option is given.
	**/
	public static function run( from : h3d.mat.Texture, to : h3d.mat.Texture, ?blend : h3d.mat.BlendMode, ?pass : h3d.mat.Pass, ?layer : Int, ?toMip :Int, ?fromMip :Int ) {
		var engine = h3d.Engine.getCurrent();
		if( to != null && from != null && (blend == null || blend == None) && pass == null && layer == null && toMip == null && fromMip == null && engine.driver.copyTexture(from, to) )
			return;
		var inst : Copy = @:privateAccess engine.resCache.get(Copy);
		if( inst == null ) {
			inst = new Copy();
			@:privateAccess engine.resCache.set(Copy, inst);
		}
		return inst.apply(from, to, blend, pass, layer, toMip, fromMip);
	}

}

#end