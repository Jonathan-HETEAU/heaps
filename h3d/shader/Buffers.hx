package h3d.shader;

/**
	The kinds of shader data uploaded to the GPU.
**/
enum abstract BufferKind(Int) {
	/**
		The global values (camera, time...), uploaded once per shader.
	**/
	public var Globals = 0;
	/**
		The parameters of the shaders of an object.
	**/
	public var Params = 1;
	/**
		The textures of the shaders of an object.
	**/
	public var Textures = 2;
	/**
		The buffers of the shaders of an object.
	**/
	public var Buffers = 3;
}

/**
	The float data of a shader stage.
**/
typedef ShaderBufferData = hxd.impl.TypedArray.Float32Array;

/**
	The data of a shader stage (vertex or fragment) filled before a draw call.
**/
class ShaderBuffers {

	/**
		The global values.
	**/
	public var globals : ShaderBufferData;
	/**
		The parameters.
	**/
	public var params : ShaderBufferData;
	/**
		The textures.
	**/
	public var tex : haxe.ds.Vector<h3d.mat.Texture>;
	/**
		The buffers.
	**/
	public var buffers : haxe.ds.Vector<h3d.Buffer>;
	/**
		The bindless texture handles.
	**/
	public var texHandles : haxe.ds.Vector<h3d.mat.TextureHandle>;
	/**
		The bindless buffer handles.
	**/
	public var bufHandles : haxe.ds.Vector<h3d.BufferHandle>;

	/**
		Creates empty buffers.
	**/
	public function new() {
		globals = new ShaderBufferData(0);
		params = new ShaderBufferData(0);
		tex = new haxe.ds.Vector(0);
	}

	/**
		Makes the buffers large enough for the shader stage `s`.
	**/
	public function grow( s : hxsl.RuntimeShader.RuntimeShaderData ) {
		var ng = s.globalsSize << 2;
		var np = s.paramsSize << 2;
		var nt = s.texturesCount;
		var nb = s.bufferCount;
		var nth = s.globalsTexHandleCount + s.paramsTexHandleCount;
		var nbh = s.globalsBufHandleCount + s.paramsBufHandleCount;
		if( globals.length < ng ) globals = new ShaderBufferData(ng);
		if( params.length < np ) params = new ShaderBufferData(np);
		if( tex.length < nt ) tex = new haxe.ds.Vector(nt);
		if( nb > 0 && (buffers == null || buffers.length < nb) ) buffers = new haxe.ds.Vector(nb);
		if( nth > 0 && (texHandles == null || texHandles.length < nth) ) texHandles = new haxe.ds.Vector(nth);
		if( nbh > 0 && (bufHandles == null || bufHandles.length < nbh) ) bufHandles = new haxe.ds.Vector(nbh);
	}

}

/**
	The data of the vertex and fragment stages of a shader, filled before a draw call.
**/
class Buffers {

	/**
		The vertex stage data.
	**/
	public var vertex : ShaderBuffers;
	/**
		The fragment stage data.
	**/
	public var fragment : ShaderBuffers;

	/**
		Creates empty buffers.
	**/
	public function new() {
		vertex = new ShaderBuffers();
		fragment = new ShaderBuffers();
	}

	/**
		Makes the buffers large enough for the shader `s`.
	**/
	public inline function grow( s : hxsl.RuntimeShader ) {
		vertex.grow(s.vertex);
		if( s.fragment != null ) fragment.grow(s.fragment);
	}
}

