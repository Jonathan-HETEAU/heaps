package h3d.mat;
import h3d.mat.Data;

/**
	A render pass of a material: the render states (culling, depth, blending, stencil, color mask) and the list of shaders
	used to draw an object in the renderer pass named `name`.

	A material usually has a main pass and optional extra passes (such as `"shadow"`). Extra passes can share the shaders
	of a parent pass: shaders added to the parent are then used by both.
**/
@:allow(h3d.mat.BaseMaterial)
#if !macro
@:build(hxd.impl.BitsBuilder.build())
#end
class Pass {

	/**
		The name of the renderer pass this pass is drawn in, such as `"default"`, `"alpha"`, `"additive"` or `"shadow"`.
		See `setPassName`.
	**/
	public var name(default, null) : String;
	var flags : Int;
	var passId : Int;
	var bits : Int = 0;
	var parentPass : Pass;
	var parentShaders : hxsl.ShaderList;
	var selfShaders(default, null) : hxsl.ShaderList;
	var selfShadersChanged(default, null) : Bool;
	var selfShadersCache : hxsl.ShaderList;
	var shaders : hxsl.ShaderList;
	var nextPass : Pass;

	/**
		If `true`, the light system adds the light shaders when drawing this pass.
	**/
	@:bits(flags) public var enableLights : Bool;
	/**
		Inform the pass system that the parameters will be modified in object draw() command,
		so they will be manually uploaded by calling RenderContext.uploadParams.
	**/
	@:bits(flags) public var dynamicParameters : Bool;

	/**
		Mark the pass as static, this will allow some renderers or shadows to filter it
		when rendering static/dynamic parts.
	**/
	@:bits(flags) public var isStatic : Bool;

	/**
		If `true`, the pass is not emitted (the object is not drawn in this pass).
	**/
	@:bits(flags) public var culled : Bool;

	@:bits(flags) var batchMode : Bool; // for MeshBatch

	/**
		The faces which are not drawn (`Back` by default).
	**/
	@:bits(bits) public var culling : Face;
	/**
		Writes the depth of the drawn pixels (`true` by default).
	**/
	@:bits(bits) public var depthWrite : Bool;
	/**
		Clamps the depth to the near and far planes instead of clipping (requires driver support).
	**/
	@:bits(bits) public var depthClamp : Bool;
	/**
		The depth test (`Less` by default): pixels failing it are not drawn.
	**/
	@:bits(bits) public var depthTest : Compare;
	/**
		The blend factor of the source color. See `setBlendMode` for the common presets.
	**/
	@:bits(bits) public var blendSrc : Blend;
	/**
		The blend factor of the destination color.
	**/
	@:bits(bits) public var blendDst : Blend;
	/**
		The blend factor of the source alpha.
	**/
	@:bits(bits) public var blendAlphaSrc : Blend;
	/**
		The blend factor of the destination alpha.
	**/
	@:bits(bits) public var blendAlphaDst : Blend;
	/**
		The blend operation of the colors.
	**/
	@:bits(bits) public var blendOp : Operation;
	/**
		The blend operation of the alpha.
	**/
	@:bits(bits) public var blendAlphaOp : Operation;
	/**
		Draws the triangles edges only (requires the `Wireframe` driver feature).
	**/
	@:bits(bits) public var wireframe : Bool;
	/**
		The channels written, as bits: `1` red, `2` green, `4` blue, `8` alpha, repeated every 4 bits for each render
		target. See `setColorMask`.
	**/
	public var colorMask : Int;
	/**
		The drawing order of the pass inside its pass name: lower layers are drawn first, before the depth sorting.
	**/
	public var layer : Int = 0;

	/**
		The stencil settings, or `null` to disable the stencil test.
	**/
	public var stencil : Stencil;

	// one bit for internal engine usage
	@:bits(bits) @:noCompletion var reserved : Bool;

	/**
		Creates a pass with the default render states: back face culling, depth test `Less` with depth write, no blending.
		@param name The renderer pass name.
		@param shaders The initial shader list.
		@param parent An optional parent pass whose shaders are shared.
	**/
	public function new(name, ?shaders, ?parent) {
		this.parentPass = parent;
		this.shaders = shaders;
		setPassName(name);
		culling = Back;
		blend(One, Zero);
		depth(true, Less);
		blendOp = blendAlphaOp = Add;
		colorMask = 15;
	}

	/**
		Copies the name and render states of `p` (not the shaders).
	**/
	public function load( p : Pass ) {
		name = p.name;
		passId = p.passId;
		bits = p.bits;
		enableLights = p.enableLights;
		dynamicParameters = p.dynamicParameters;
		culling = p.culling;
		depthWrite = p.depthWrite;
		depthClamp = p.depthClamp;
		depthTest = p.depthTest;
		blendSrc = p.blendSrc;
		blendDst = p.blendDst;
		blendOp = p.blendOp;
		blendAlphaSrc = p.blendAlphaSrc;
		blendAlphaDst = p.blendAlphaDst;
		blendAlphaOp = p.blendAlphaOp;
		colorMask = p.colorMask;
		if (p.stencil != null) {
			if (stencil == null) stencil = new Stencil();
			stencil.load(p.stencil);
		}
	}

	/**
		Changes the renderer pass this pass is drawn in.
	**/
	public function setPassName( name : String ) {
		this.name = name;
		passId = hxsl.Globals.allocID(name);
	}

	/**
		Sets the blend factors of the source and destination, for both the colors and the alpha.
	**/
	public inline function blend( src, dst ) {
		this.blendSrc = src;
		this.blendAlphaSrc = src;
		this.blendDst = dst;
		this.blendAlphaDst = dst;
	}

	/**
		Sets the blend factors and operations of a common blend mode.
	**/
	public function setBlendMode( b : BlendMode ) {
		blendOp = Add;
		blendAlphaOp = Add;

		switch( b ) {
		case None: // Out = 1 * Src + 0 * Dst
			blend(One, Zero);
		case Alpha: // Out = SrcA * Src + (1 - SrcA) * Dst
			blend(SrcAlpha, OneMinusSrcAlpha);
			blendAlphaSrc = One;
		case Add: // Out = SrcA * Src + 1 * Dst
			blend(SrcAlpha, One);
			blendAlphaSrc = One;
		case AlphaAdd: // Out = Src + (1 - SrcA) * Dst
			blend(One, OneMinusSrcAlpha);
		case SoftAdd: // Out = (1 - Dst) * Src + 1 * Dst
			blend(OneMinusDstColor, One);
			blendAlphaSrc = One;
		case Multiply: // Out = Dst * Src + 0 * Dst
			blend(DstColor, Zero);
			blendAlphaSrc = One;
		case AlphaMultiply: // Out = Dst * Src + (1 - SrcA) * Dst
			blend(DstColor, OneMinusSrcAlpha);
		case Erase: // Out = 0 * Src + (1 - Srb) * Dst
			blend(Zero, OneMinusSrcColor);
		case Screen: // Out = 1 * Src + (1 - Srb) * Dst
			blend(One, OneMinusSrcColor);
		case Sub: // Out = 1 * Dst - SrcA * Src
			blend(SrcAlpha, One);
			blendOp = ReverseSub;
			blendAlphaOp = ReverseSub;
		case Max: // Out = MAX( Src, Dst )
			blend(One, One);
			blendAlphaOp = Max;
			blendOp = Max;
		case Min: // Out = MIN( Src, Dst )
			blend(One, One);
			blendAlphaOp = Min;
			blendOp = Min;
		}
	}

	/**
		Sets the depth write, depth test and depth clamp.
	**/
	public function depth( write, test, clamp = false) {
		this.depthWrite = write;
		this.depthTest = test;
		this.depthClamp = clamp;
	}

	/**
		Sets the channels written to the render target.
	**/
	public function setColorMask(r, g, b, a) {
		this.colorMask = (r?1:0) | (g?2:0) | (b?4:0) | (a?8:0);
	}

	/**
		Writes only the channel `c` (`R`, `G`, `B` or `A`).
	**/
	public function setColorChannel( c : hxsl.Channel) {
		switch( c ) {
		case R: setColorMask(true, false, false, false);
		case G: setColorMask(false, true, false, false);
		case B: setColorMask(false, false, true, false);
		case A: setColorMask(false, false, false, true);
		default: throw "Unsupported channel "+c;
		}
	}

	/**
		Adds the channels written to the render target `i` when drawing to several targets.
	**/
	public function setColorMaski(r, g, b, a, i) {
		if ( i > 8 )
			throw "Color mask i supports 8 Render target";
		var mask = (r?1:0) | (g?2:0) | (b?4:0) | (a?8:0);
		mask = mask << (i * 4);
		this.colorMask = this.colorMask | mask;
	}

	/**
		Adds a shader to the pass and returns it. Shaders are sorted by priority (see `hxsl.Shader.setPriority`).
	**/
	public function addShader<T:hxsl.Shader>(s:T) : T {
		// throwing an exception will require NG GameServer review
		if( s == null ) return null;
		shaders = hxsl.ShaderList.addSort(s, shaders);
		return s;
	}

	function addSelfShader<T:hxsl.Shader>(s:T) : T {
		if ( s == null ) return null;
		if ( selfShaders == selfShadersCache ) {
			selfShaders = new hxsl.ShaderList(s, shaders);
			selfShaders.next = selfShadersCache = shaders;
		} else {
			selfShadersChanged = true;
			selfShaders = hxsl.ShaderList.addSort(s, selfShaders);
		}
		return s;
	}

	/**
		Can be used for internal usage
	**/
	function addShaderAtIndex<T:hxsl.Shader>(s:T, index:Int) : T {
		var prev = null;
		var cur = shaders;
		while( index > 0 && cur != parentShaders ) {
			prev = cur;
			cur = cur.next;
			index--;
		}
		if( prev == null )
			shaders = new hxsl.ShaderList(s, cur);
		else
			prev.next = new hxsl.ShaderList(s, cur);
		return s;
	}

	function getShaderIndex(s:hxsl.Shader) : Int {
		var index = 0;
		var cur = shaders;
		while( cur != parentShaders ) {
			if( cur.s == s ) return index;
			cur = cur.next;
			index++;
		}
		return -1;
	}

	/**
		Removes a shader from the pass. Returns `true` if it was found.
	**/
	public function removeShader(s) {
		var sl = shaders, prev = null;
		var shaderFound = false;
		while( sl != null ) {
			if( sl.s == s ) {
				if( prev == null )
					shaders = sl.next;
				else
					prev.next = sl.next;
				shaderFound = true;
				break;
			}
			prev = sl;
			sl = sl.next;
		}
		sl = selfShaders;
		prev = null;
		while ( sl != null ) {
			if ( sl.s == s ) {
				if ( selfShadersCache == sl )
					selfShadersCache = selfShadersCache.next;
				if ( prev == null )
					selfShaders = sl.next;
				else
					prev.next = sl.next;
				return true;
			}
			prev = sl;
			sl = sl.next;
		}
		return shaderFound;
	}

	/**
		Removes all the shaders of class `t` from the pass.
	**/
	public function removeShaders< T:hxsl.Shader >(t:Class<T>) {
		var sl = shaders;
		var prev = null;
		while( sl != null ) {
			if( Std.isOfType(sl.s, t) ) {
				if( prev == null )
					shaders = sl.next;
				else
					prev.next = sl.next;
			}
			else
				prev = sl;
			sl = sl.next;
		}
		sl = selfShaders;
		prev = null;
		while( sl != null ) {
			if( Std.isOfType(sl.s, t) ) {
				if ( selfShadersCache == sl )
					selfShadersCache = selfShadersCache.next;
				if( prev == null )
					selfShaders = sl.next;
				else
					prev.next = sl.next;
			}
			else
				prev = sl;
			sl = sl.next;
		}
	}

	/**
		Returns the first shader of class `t` of the pass (excluding the shaders of the parent pass), or `null`.
	**/
	public function getShader< T:hxsl.Shader >(t:Class<T>) : T {
		var s = _getShader(t, shaders);
		return s != null ? s : _getShader(t, selfShaders);
	}

	function _getShader< T:hxsl.Shader >(t:Class<T>, s : hxsl.ShaderList) : T {
		while( s != null && s != parentShaders ) {
			var sh = Std.downcast(s.s, t);
			if( sh != null )
				return sh;
			s = s.next;
		}
		return null;
	}

	/**
		Returns the first shader whose name is `name` (excluding the shaders of the parent pass), or `null`.
	**/
	public function getShaderByName( name : String ) : hxsl.Shader {
		var s = _getShaderByName(name, shaders);
		return s != null ? s : _getShaderByName(name, selfShaders);
	}

	function _getShaderByName( name : String, sl : hxsl.ShaderList ) : hxsl.Shader {
		while( sl != null && sl != parentShaders ) {
			if( @:privateAccess sl.s.shader.data.name == name )
				return sl.s;
			sl = sl.next;
		}
		return null;
	}

	/**
		Returns an iterator on the shaders of the pass (excluding the shaders of the parent pass).
	**/
	public inline function getShaders() {
		return shaders.iterateTo(parentShaders);
	}

	function checkInfiniteLoop() {
		var shaderList = [];
		var s = selfShaders;
		while ( s != null ) {
			for ( already in shaderList )
				if ( already == s )
					throw "infinite loop";
			shaderList.push(s);
			s = s.next;
		}
	}

	inline function findTail(first : hxsl.ShaderList, last : hxsl.ShaderList) {
		var sl = first, prev = null;
		while ( sl != null && sl != last ) {
			prev = sl;
			sl = sl.next;
		}
		return prev;
	}

	function selfShadersRec(rebuild : Bool) {
		if ( selfShaders == null )
			return shaders;
		if ( !selfShadersChanged && !rebuild && shaders == selfShadersCache )
			return selfShaders;
		var tail = findTail(selfShaders, selfShadersCache);
		selfShadersCache = shaders;
		if ( tail != null )
			tail.next = selfShadersCache;
		else
			selfShaders = shaders;
		return selfShaders;
	}

	function getShadersRec() {
		if( parentPass == null || parentShaders == parentPass.shaders ) {
			return selfShadersRec(false);
		}
		// relink to our parent shader list
		var tail = findTail(shaders, parentShaders);
		parentShaders = parentPass.shaders;
		if( tail == null )
			shaders = parentShaders;
		else
			tail.next = parentShaders;
		return selfShadersRec(true);
	}

	function reverseDepthTest() {
		depthTest = switch( depthTest ) {
			case Greater: Less;
			case GreaterEqual: LessEqual;
			case Less: Greater;
			case LessEqual: GreaterEqual;
			default: depthTest;
		};
	}

	#if !macro
	/**
		Returns a copy of the pass, with its render states and shaders.
		@param parent The parent pass of the copy.
	**/
	public function clone( ?parent : Pass ) {
		var sl = shaders == null ? null : (parent == null ? shaders.clone() : shaders.clone(parentShaders));
		var p = new Pass(name, sl, parent);
		var tail = findTail(selfShaders, selfShadersCache);
		if ( tail != null ) {
			tail.next = null;
			p.selfShaders = selfShaders.clone();
			tail.next = selfShadersCache = shaders;
		}
		p.loadBits(bits);
		p.loadFlags(flags);
		p.layer = layer;
		p.colorMask = colorMask;
		if (stencil != null) p.stencil = stencil.clone();
		return p;
	}

	/**
		Decodes the render state bits of a pass into a list of field names and values (debug).
	**/
	public static function bitsToFields( bits : Int ) : Array<{ name : String, value : String }> {
		static var FACES : Array<h3d.mat.Data.Face> = Type.allEnums(h3d.mat.Data.Face);
		static var COMPARES : Array<h3d.mat.Data.Compare> = Type.allEnums(h3d.mat.Data.Compare);
		static var BLENDS : Array<h3d.mat.Data.Blend> = Type.allEnums(h3d.mat.Data.Blend);
		static var OPS : Array<h3d.mat.Data.Operation> = Type.allEnums(h3d.mat.Data.Operation);

		inline function shiftOf( mask : Int ) {
			var s = 0;
			while( mask & 1 == 0 ) { mask >>>= 1; s++; }
			return s;
		}

		inline function get( bits : Int, mask : Int ) : Int {
			return (bits & mask) >>> shiftOf(mask);
		}

		inline function name<T>( values : Array<T>, idx : Int ) : String {
			return idx < values.length ? Std.string(values[idx]) : 'invalid($idx)';
		}

		inline function b( mask ) return get(bits, mask) != 0 ? "true" : "false";

		return [
			{ name : "culling",       value : name(FACES,    get(bits, Pass.culling_mask)) },
			{ name : "depthWrite",    value : b(Pass.depthWrite_mask) },
			{ name : "depthClamp",    value : b(Pass.depthClamp_mask) },
			{ name : "depthTest",     value : name(COMPARES, get(bits, Pass.depthTest_mask)) },
			{ name : "blendSrc",      value : name(BLENDS,   get(bits, Pass.blendSrc_mask)) },
			{ name : "blendDst",      value : name(BLENDS,   get(bits, Pass.blendDst_mask)) },
			{ name : "blendAlphaSrc", value : name(BLENDS,   get(bits, Pass.blendAlphaSrc_mask)) },
			{ name : "blendAlphaDst", value : name(BLENDS,   get(bits, Pass.blendAlphaDst_mask)) },
			{ name : "blendOp",       value : name(OPS,      get(bits, Pass.blendOp_mask)) },
			{ name : "blendAlphaOp",  value : name(OPS,      get(bits, Pass.blendAlphaOp_mask)) },
			{ name : "wireframe",     value : b(Pass.wireframe_mask) },
		];
	}
	#end
}
