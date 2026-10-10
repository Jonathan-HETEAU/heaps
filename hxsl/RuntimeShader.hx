package hxsl;

/**
	How shaders are linked together.
**/
enum LinkMode {
	/**
		A vertex and a fragment shader.
	**/
	Default;
	/**
		A shader generated for a batch (see `Cache.makeBatchShader`).
	**/
	Batch;
	/**
		A compute shader.
	**/
	Compute;
}

/**
	A parameter of a linked shader, and where its value is written.
**/
class AllocParam {
	/**
		The name of the parameter.
	**/
	public var name : String;
	/**
		The position of the value in the parameters buffer, in floats (or the index of a texture or buffer).
	**/
	public var pos : Int;
	/**
		The index of the shader of the list that owns the parameter, or `-1` for a per object global.
	**/
	public var instance : Int;
	/**
		The index of the parameter in its shader.
	**/
	public var index : Int;
	/**
		The type of the parameter.
	**/
	public var type : Ast.Type;
	/**
		The global providing the value, for a per object global.
	**/
	public var perObjectGlobal : AllocGlobal;
	/**
		The next parameter.
	**/
	public var next : AllocParam;
	/**
		Creates a parameter.
	**/
	public function new(name, pos, instance, index, type) {
		this.name = name;
		this.pos = pos;
		this.instance = instance;
		this.index = index;
		this.type = type;
	}
	/**
		Returns a copy of the list of parameters from this one.
	**/
	public function clone( resetGID = false ) {
		var p = new AllocParam(name,pos,instance,index,type);
		if( perObjectGlobal != null ) p.perObjectGlobal = perObjectGlobal.clone(resetGID);
		if( next != null ) p.next = next.clone(resetGID);
		return p;
	}
}

/**
	A global used by a linked shader, and where its value is written.
**/
class AllocGlobal {
	/**
		The position of the value in the globals buffer, in floats.
	**/
	public var pos : Int;
	/**
		The identifier of the global (see `Globals.allocID`).
	**/
	public var gid : Int;
	/**
		The path of the global.
	**/
	public var path : String;
	/**
		The type of the global.
	**/
	public var type : Ast.Type;
	/**
		The next global.
	**/
	public var next : AllocGlobal;
	/**
		Creates a global.
	**/
	public function new(pos, path, type) {
		this.pos = pos;
		this.path = path;
		this.gid = Globals.allocID(path);
		this.type = type;
	}
	/**
		Returns a copy of the list of globals from this one. If `resetGID` is set, the identifiers are reset to `0`.
	**/
	public function clone( resetGID = false ) {
		var g = new AllocGlobal(pos, path, type);
		if( next != null ) g.next = next.clone(resetGID);
		if( resetGID ) g.gid = 0;
		return g;
	}
}

/**
	The data of one stage (vertex, fragment or compute) of a linked shader: its code and the layout of its parameters.
**/
class RuntimeShaderData {
	/**
		The stage.
	**/
	public var kind : hxsl.Ast.FunctionKind;
	/**
		The flattened shader code.
	**/
	public var data : Ast.ShaderData;
	/**
		The code generated for the driver (GLSL, HLSL...), set by the driver.
	**/
	public var code : String;
	/**
		The list of the parameters.
	**/
	public var params : AllocParam;
	/**
		The size of the parameters buffer, in vec4.
	**/
	public var paramsSize : Int;
	/**
		The list of the globals.
	**/
	public var globals : AllocGlobal;
	/**
		The size of the globals buffer, in vec4.
	**/
	public var globalsSize : Int;
	/**
		The list of the texture parameters and globals.
	**/
	public var textures : AllocParam;
	/**
		The number of textures.
	**/
	public var texturesCount : Int;
	/**
		The list of the buffer parameters and globals.
	**/
	public var buffers : AllocParam;
	/**
		The number of buffers.
	**/
	public var bufferCount : Int;
	/**
		The number of texture handles (bindless) in the globals.
	**/
	public var globalsTexHandleCount : Int;
	/**
		The number of buffer handles (bindless) in the globals.
	**/
	public var globalsBufHandleCount : Int;
	/**
		The number of texture handles (bindless) in the parameters.
	**/
	public var paramsTexHandleCount : Int;
	/**
		The number of buffer handles (bindless) in the parameters.
	**/
	public var paramsBufHandleCount : Int;
	/**
		Tells if the stage uses bindless texture or buffer handles.
	**/
	public var hasBindless : Bool;
	/**
		Creates empty data.
	**/
	public function new() {
	}
}

/**
	A shader variant used by a linked shader.
**/
class ShaderInstanceDesc {
	/**
		The shader.
	**/
	public var shader : SharedShader;
	/**
		The constant bits selecting the variant.
	**/
	public var bits : Int;
	/**
		The index of the shader in the list.
	**/
	public var index : Int;
	/**
		Creates a description.
	**/
	public function new(shader, bits) {
		this.shader = shader;
		this.bits = bits;
	}
}

/**
	The result of linking a list of shaders (`Cache.link`): the code of each stage, ready to be compiled by the driver.
**/
class RuntimeShader {

	static var UID = 0;
	#if heaps_mt_hxsl_cache
	static var uidMutex = new sys.thread.Mutex();
	#end

	/**
		The unique identifier of the shader.
	**/
	public var id : Int;
	/**
		The vertex stage.
	**/
	public var vertex : RuntimeShaderData;
	/**
		The fragment stage.
	**/
	public var fragment : RuntimeShaderData;
	/**
		The compute stage, for a compute shader (stored in `vertex`).
	**/
	public var compute(get,set) : RuntimeShaderData;
	/**
		The identifiers of the globals used by the shader.
	**/
	public var globals : Map<Int,Bool>;

	inline function get_compute() return vertex;
	inline function set_compute(v) return vertex = v;

	/**
		Signature of the resulting HxSL code.
		Several shaders with the different specification might still get the same resulting signature.
	**/
	public var signature : String;
	/**
		How the shaders were linked.
	**/
	public var mode : LinkMode;
	/**
		The shader variants linked together, and their signature.
	**/
	public var spec : { instances : Array<ShaderInstanceDesc>, signature : String };

	/**
		Creates an empty shader.
	**/
	public function new() {
		#if heaps_mt_hxsl_cache
		uidMutex.acquire();
		#end
		id = UID++;
		#if heaps_mt_hxsl_cache
		uidMutex.release();
		#end
	}

	/**
		Tells if a stage uses bindless handles.
	**/
	public inline function hasBindless() : Bool {
		return vertex.hasBindless || (fragment != null && fragment.hasBindless);
	}

	/**
		Tells if the shader uses the global of the given identifier.
	**/
	public inline function hasGlobal( gid : Int ) {
		return globals.exists(gid);
	}

	/**
		Returns the stages of the shader.
	**/
	public function getShaders() {
		return mode == Compute ? [compute] : [vertex, fragment];
	}

	/**
		Releases the functions of the shader data (the variables and the generated code are kept to recompile the shader after a context loss).
	**/
	public function releaseData() {
		inline function release( s : RuntimeShaderData ) {
			// vars and code are kept: the driver needs them to recompile the shader after a context loss
			if( s != null && (s.data.funs == null || s.data.funs.length > 0) )
				s.data = SharedShader.compactMem({ name : s.data.name, vars : s.data.vars, funs : [] });
		}
		release(vertex);
		release(fragment);
	}

	/**
		Returns the format of the vertex inputs used by the shader (the per instance inputs if `instance` is set).
	**/
	public function getInputFormat( instance=false ) {
		var format : Array<hxd.BufferFormat.BufferInput> = [];
		for( v in vertex.data.vars )
			switch( v.kind ) {
			case Input:
				var isInst = false;
				if( v.qualifiers != null ) {
					for( q in v.qualifiers )
						if( q.match(PerInstance(_)) ) {
							isInst = true;
							break;
						}
				}
				if( isInst == instance )
					format.push({ name : v.name, type : hxd.BufferFormat.InputFormat.fromHXSL(v.type) });
			default:
			}
		return hxd.BufferFormat.make(format);
	}

}
