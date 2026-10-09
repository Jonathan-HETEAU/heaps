package hxd;


/**
	The storage precision of a buffer input.
**/
enum abstract Precision(Int) {
	/**
		32 bits float.
	**/
	var F32 = 0;
	/**
		16 bits float.
	**/
	var F16 = 1;
	/**
		Unsigned 8 bits, normalized to the `[0, 1]` range.
	**/
	var U8 = 2;
	/**
		Signed 8 bits, normalized to the `[-1, 1]` range.
	**/
	var S8 = 3;
	inline function new(v) {
		this = v;
	}
	/**
		Returns the size in bytes of a component.
	**/
	public inline function getSize() {
		return SIZES[this];
	}
	/**
		Returns the integer value of the precision.
	**/
	public inline function toInt() {
		return this;
	}
	/**
		Returns the precision of the given integer value.
	**/
	public static inline function fromInt( v : Int ) : Precision {
		return new Precision(v);
	}
	/**
		Returns the name of the precision.
	**/
	public function toString() {
		return switch( new Precision(this) ) {
		case F32: "F32";
		case F16: "F16";
		case U8: "U8";
		case S8: "S8";
		}
	}
	static var SIZES = [4,2,1,1];
}

/**
	The type of a buffer input. The value is the number of components (except for `DBytes4`).
**/
enum abstract InputFormat(Int) {

	/**
		A single float.
	**/
	public var DFloat = 1;
	/**
		A vector of 2 floats.
	**/
	public var DVec2 = 2;
	/**
		A vector of 3 floats.
	**/
	public var DVec3 = 3;
	/**
		A vector of 4 floats.
	**/
	public var DVec4 = 4;
	/**
		A 3x4 matrix (12 floats).
	**/
	public var DMat3x4 = 12;
	/**
		A 4x4 matrix (16 floats).
	**/
	public var DMat4 = 16;
	/**
		4 bytes, stored in a single 32 bits component.
	**/
	public var DBytes4 = 9;

	inline function new(v) {
		this = v;
	}

	/**
		Returns the number of 32 bits components.
	**/
	public inline function getSize() {
		return this == cast (DBytes4,Int) ? 1 : this;
	}

	/**
		Returns the integer value of the format.
	**/
	public inline function toInt() {
		return this;
	}

	/**
		Returns the name of the format.
	**/
	public function toString() {
		return switch( new InputFormat(this) ) {
		case DFloat: "DFloat";
		case DVec2: "DVec2";
		case DVec3: "DVec3";
		case DVec4: "DVec4";
		case DMat3x4: "DMat3x4";
		case DMat4: "DMat4";
		case DBytes4: "DBytes4";
		}
	}

	/**
		Returns the format of the given integer value.
	**/
	public static inline function fromInt( v : Int ) : InputFormat {
		return new InputFormat(v);
	}

	/**
		Returns the format matching a shader type. Throws if the type can't be used in a buffer.
	**/
	public static function fromHXSL( t : hxsl.Ast.Type ) {
		return switch( t ) {
		case TVec(2, VFloat): DVec2;
		case TVec(3, VFloat): DVec3;
		case TVec(4, VFloat): DVec4;
		case TMat4 : DMat4;
		case TMat3x4 : DMat3x4;
		case TBytes(4): DBytes4;
		case TFloat, TInt: DFloat;
		default: throw "Unsupported buffer type " + t;
		}
	}

}

/**
	An input (vertex attribute) of a `BufferFormat`: its name, type and precision.
**/
@:structInit
class BufferInput {
	/**
		The name of the input, matching the shader input name (such as `"position"`).
	**/
	public var name(default,null) : String;
	/**
		The type of the input.
	**/
	public var type(default,null) : InputFormat;
	/**
		The storage precision of the input.
	**/
	public var precision(default,null) : Precision;
	/**
		Creates an input.
	**/
	public inline function new( name : String, type : InputFormat, precision = F32 ) {
		this.name = name;
		this.type = type;
		this.precision = precision;
	}
	/**
		Returns the size of the input in bytes (without alignment).
	**/
	public inline function getBytesSize() {
		return type.getSize() * precision.getSize();
	}
	/**
		Tells if the input has the same name, type and precision as `b`.
	**/
	public inline function equals(b:BufferInput) {
		return type == b.type && name == b.name && precision == b.precision;
	}
}

/**
	The location of a shader input in the buffers of a mesh: the index of the buffer, the byte offset in a vertex, and the precision.
**/
abstract BufferMapping(Int) {
	/**
		The index of the buffer containing the input.
	**/
	public var bufferIndex(get,never) : Int;
	/**
		The offset of the input in a vertex, in bytes.
	**/
	public var offset(get,never) : Int;
	/**
		The storage precision of the input.
	**/
	public var precision(get,never) : Precision;
	/**
		Creates a mapping.
	**/
	public function new(index,offset,prec:Precision) {
		this = (index << 3) | prec.toInt() | (offset << 16);
	}
	inline function get_bufferIndex() return (this >> 3) & 0xFF;
	inline function get_precision() return @:privateAccess new Precision(this & 7);
	inline function get_offset() return this >> 16;
}

/**
	The vertex layout of a `h3d.Buffer`: the list of its inputs.
	Formats are unique: use `BufferFormat.make` to get the format for a list of inputs, or one of the predefined formats.
	Each input is aligned to 4 bytes.
**/
class BufferFormat {

	static var _UID = 0;
	static var COMPRESSED_CONFIG(get,null) : BufferFormat;
	static function get_COMPRESSED_CONFIG() {
		if( COMPRESSED_CONFIG == null ) {
			COMPRESSED_CONFIG = make([
				// First is first to be compressed
				{ name : "data", 		type : DVec4, precision : F16 },
				{ name : "color", 		type : DVec4, precision : F16 },
				{ name : "position", 	type : DVec2, precision : F16 },
				{ name : "normal", 		type : DVec3, precision : S8 },
				{ name : "uv", 			type : DVec2, precision : F16 },
				{ name : "position", 	type : DVec3, precision : F16 }
			]);
			COMPRESSED_CONFIG.compressed = COMPRESSED_CONFIG;
		}

		return COMPRESSED_CONFIG;
	}
	/**
		The unique identifier of the format.
	**/
	public var uid(default,null) : Int;
	/**
		The number of 32 bits components of a vertex, ignoring the precision.
	**/
	public var stride(default,null) : Int;
	/**
		The size of a vertex in bytes.
	**/
	public var strideBytes(default,null) : Int;
	/**
		Tells if an input has a precision lower than `F32`.
	**/
	public var hasLowPrecision(default,null) : Bool;
	var inputs : Array<BufferInput>;
	var mappings : Array<Array<BufferMapping>>;
	var compressed : BufferFormat;

	function new( inputs : Array<BufferInput> ) {
		uid = _UID++;
		stride = strideBytes = 0;
		this.inputs = inputs.copy();
		hasLowPrecision = false;
		for( i in inputs ) {
			stride += i.type.getSize();
			strideBytes += i.getBytesSize();
			// 4 bytes align
			if( strideBytes & 3 != 0 )
				strideBytes += 4 - (strideBytes & 3);
			if( i.precision != F32 )
				hasLowPrecision = true;
		}
	}

	/**
		Returns the input of the given name, or `null`.
	**/
	public function getInput( name : String ) {
		for( i in inputs )
			if( i.name == name )
				return i;
		return null;
	}

	/**
		Returns a format with lower precisions for the known inputs (data, color, position, normal and uv), raising some of them back to fill the alignment padding.
	**/
	public function getCompressed() : BufferFormat {
		if ( compressed != null )
			return compressed;

		var compressedInputs = new Array<BufferInput>();
		var lookupIndices = new Array<{ compressedIndex : Int, index : Int}>();

		compressedInputs.resize(inputs.length);
		lookupIndices.resize(inputs.length);

		// Find all compressed version of the inputs and compute the minimum strideBytes
		var minStrideBytes = 0;
		for ( index => input in inputs ) {
			var found : Bool = false;
			for ( compressedIndex => compressedInput in COMPRESSED_CONFIG.inputs) {
				if ( input.type == compressedInput.type && ( Reflect.compare( input.name, compressedInput.name ) == 0 ) ) {
					minStrideBytes += compressedInput.getBytesSize();
					if( minStrideBytes & 3 != 0 )
						minStrideBytes += 4 - (minStrideBytes & 3);
					compressedInputs[index] = { name : compressedInput.name, type : compressedInput.type, precision : compressedInput.precision };
					lookupIndices[index] = { compressedIndex : compressedIndex, index : index };
					found = true;
					break;
				}
			}
			if ( !found ) {
				minStrideBytes += input.getBytesSize();
				if( minStrideBytes & 3 != 0 )
					minStrideBytes += 4 - (minStrideBytes & 3);
				compressedInputs[index] =  { name : input.name, type : input.type, precision : input.precision };
				lookupIndices[index] = { compressedIndex : -1, index : index };
			}
		}

		var maxStrideBytes = minStrideBytes;
		if( maxStrideBytes & 7 != 0 )
			maxStrideBytes += 8 - (maxStrideBytes & 7);

		// Do we have unused memory ?
		if ( maxStrideBytes != minStrideBytes ) {
			// Try to reduce compression to fill the unused memory
			// Reduce compression for lowest priority first
			lookupIndices.sort( ( o1, o2 ) -> o2.compressedIndex - o1.compressedIndex );
			for ( indices in lookupIndices) {
				var currentInput = compressedInputs[indices.index];

				var inputStrideBytes = currentInput.getBytesSize();
				if( inputStrideBytes & 3 != 0 )
					inputStrideBytes += 4 - (inputStrideBytes & 3);
				var strideBytesMinusInput = minStrideBytes - inputStrideBytes;

				var previousCurrentStrideBytes = minStrideBytes, currentStrideBytes = minStrideBytes;
				while ( currentStrideBytes < maxStrideBytes && currentInput.precision.toInt() > 0) {
					previousCurrentStrideBytes = currentStrideBytes;
					@:privateAccess currentInput.precision = Precision.fromInt(currentInput.precision.toInt() - 1);
					currentStrideBytes = strideBytesMinusInput + currentInput.getBytesSize();
					if( currentStrideBytes & 3 != 0 )
						currentStrideBytes += 4 - (currentStrideBytes & 3);
				}

				if (currentStrideBytes > maxStrideBytes) {
					@:privateAccess currentInput.precision = Precision.fromInt(currentInput.precision.toInt() + 1);
					currentStrideBytes = previousCurrentStrideBytes;
				}
				compressedInputs[indices.index] = currentInput;

				minStrideBytes = currentStrideBytes;
				if (minStrideBytes == maxStrideBytes)
					break;
			}
		}

		compressed = make(compressedInputs);
		compressed.compressed = compressed;
		return compressed;
	}


	/**
		Returns the offset in bytes of the input in a vertex. Throws if it is not found.
	**/
	public function calculateInputOffset( name : String ) {
		var offset = 0;
		for( i in inputs ) {
			if( i.name == name )
				return offset;
			offset += i.getBytesSize();
			if( offset & 3 != 0 ) offset += 4 - (offset & 3);
		}
		throw "Input not found : "+name;
	}

	/**
		Tells if the format has an input of the given name, and of the given type if set.
	**/
	public function hasInput( name : String, ?type : InputFormat ) {
		for( i in inputs )
			if( i.name == name )
				return type == null || type == i.type;
		return false;
	}

	/**
		Returns the format with an input added at the end.
	**/
	public function append( name : String, type : InputFormat ) {
		var inputs = inputs.copy();
		inputs.push({ name : name, type : type });
		return make(inputs);
	}

	/**
		Returns the format without its last input.
	**/
	public function pop() {
		var inputs = inputs.copy();
		inputs.pop();
		return make(inputs);
	}

	/**
		Tells if the inputs of this format are the first inputs of `fmt`.
	**/
	public function isSubSet( fmt : BufferFormat ) {
		if( fmt == this )
			return true;
		if( inputs.length >= fmt.inputs.length )
			return false;
		for( i in 0...inputs.length ) {
			var i1 = inputs[i];
			var i2 = fmt.inputs[i];
			if( i1.name != i2.name || i1.type != i2.type )
				return false;
		}
		return true;
	}

	/**
		Returns where to find each input of `target` in this format. Throws if one is missing.
	**/
	public function resolveMapping( target : BufferFormat ) {
		var m = mappings == null ? null : mappings[target.uid];
		if( m != null )
			return m;
		m = [];
		for( i in target.inputs ) {
			var found = false;
			for( i2 in inputs ) {
				if( i2.name == i.name && i2.type == i.type ) {
					m.push(new BufferMapping(0,calculateInputOffset(i2.name),i2.precision));
					found = true;
					break;
				}
			}
			if( !found ) throw "Missing buffer input '"+i.name+"'";
		}
		if( mappings == null ) mappings = [];
		mappings[target.uid] = m;
		return m;
	}

	/**
		Returns an iterator on the inputs.
	**/
	public inline function getInputs() {
		return inputs.iterator();
	}

	/**
		Returns a description of the inputs.
	**/
	public function toString() {
		return [for( i in inputs ) i.name+":"+i.type.toString()+(i.precision == F32?"":"."+i.precision.toString().toLowerCase())].toString();
	}

	/**
		Alias for XY_UV_RGBA
	**/
	public static var H2D(get,never) : BufferFormat;
	/**
		2D position, UV and color: the format of `h2d` vertices.
	**/
	public static var XY_UV_RGBA(get,null) : BufferFormat;
	/**
		2D position and UV.
	**/
	public static var XY_UV(get,null) : BufferFormat;
	/**
		3D position.
	**/
	public static var POS3D(get,null) : BufferFormat;
	/**
		3D position and normal.
	**/
	public static var POS3D_NORMAL(get,null) : BufferFormat;
	/**
		3D position and UV.
	**/
	public static var POS3D_UV(get,null) : BufferFormat;
	/**
		3D position, normal and UV.
	**/
	public static var POS3D_NORMAL_UV(get,null) : BufferFormat;
	/**
		3D position, normal, UV and color.
	**/
	public static var POS3D_NORMAL_UV_RGBA(get,null) : BufferFormat;
	/**
		A single `vec4` input named `data`.
	**/
	public static var VEC4_DATA(get,null) : BufferFormat;
	/**
		A single 4x4 matrix input named `data`.
	**/
	public static var MAT4_DATA(get,null) : BufferFormat;
	/**
		A single 3x4 matrix input named `data`.
	**/
	public static var MAT3x4_DATA(get,null) : BufferFormat;

	/**
		16 bits indexes.
	**/
	public static var INDEX16(get,null) : BufferFormat;
	/**
		32 bits indexes.
	**/
	public static var INDEX32(get,null) : BufferFormat;

	static inline function get_H2D() return XY_UV_RGBA;
	static function get_XY_UV_RGBA() {
		if( XY_UV_RGBA == null ) XY_UV_RGBA = make([{ name : "position", type : DVec2 },{ name : "uv", type : DVec2 },{ name : "color", type : DVec4 }]);
		return XY_UV_RGBA;
	}
	static function get_XY_UV() {
		if( XY_UV == null ) XY_UV = make([{ name : "position", type : DVec2 },{ name : "uv", type : DVec2 }]);
		return XY_UV;
	}
	static function get_POS3D() {
		if( POS3D == null ) POS3D = make([{ name : "position", type : DVec3 }]);
		return POS3D;
	}
	static function get_POS3D_NORMAL() {
		if( POS3D_NORMAL == null ) POS3D_NORMAL = make([{ name : "position", type : DVec3 },{ name : "normal", type : DVec3 }]);
		return POS3D_NORMAL;
	}
	static function get_POS3D_NORMAL_UV() {
		if( POS3D_NORMAL_UV == null ) POS3D_NORMAL_UV = make([{ name : "position", type : DVec3 },{ name : "normal", type : DVec3 },{ name : "uv", type : DVec2 }]);
		return POS3D_NORMAL_UV;
	}
	static function get_POS3D_NORMAL_UV_RGBA() {
		if( POS3D_NORMAL_UV_RGBA == null ) POS3D_NORMAL_UV_RGBA = POS3D_NORMAL_UV.append("color",DVec4);
		return POS3D_NORMAL_UV_RGBA;
	}
	static function get_POS3D_UV() {
		if( POS3D_UV == null ) POS3D_UV = make([{ name : "position", type : DVec3 },{ name : "uv", type : DVec2 }]);
		return POS3D_UV;
	}
	static function get_VEC4_DATA() {
		if( VEC4_DATA == null ) VEC4_DATA = hxd.BufferFormat.make([{ name : "data", type : DVec4 }]);
		return VEC4_DATA;
	}

	static function get_MAT4_DATA() {
		if( MAT4_DATA == null ) MAT4_DATA = hxd.BufferFormat.make([{ name : "data", type : DMat4 }]);
		return MAT4_DATA;
	}

	static function get_MAT3x4_DATA() {
		if( MAT3x4_DATA == null ) MAT3x4_DATA = hxd.BufferFormat.make([{ name : "data", type : DMat3x4 }]);
		return MAT3x4_DATA;
	}

	static function get_INDEX16() {
		if( INDEX16 == null ) {
			INDEX16 = hxd.BufferFormat.make([{ name : "index", type : DFloat, precision: F16 }]);
			INDEX16.strideBytes = 2; // fix ! not subject to vertex buffer alignment !
		}
		return INDEX16;
	}
	static function get_INDEX32() {
		if( INDEX32 == null ) INDEX32 = hxd.BufferFormat.make([{ name : "index", type : DFloat, precision: F32 }]);
		return INDEX32;
	}

	static var ALL_FORMATS = new Map<String,Array<BufferFormat>>();

	/**
		Returns the format with the given `uid`, or `null`.
	**/
	public static function fromID( uid : Int ) {
		for( fl in ALL_FORMATS )
			for( f in fl )
				if( f.uid == uid )
					return f;
		return null;
	}

	#if heaps_mt_hxsl_cache
	static var makeMutex = new sys.thread.Mutex();
	#end
	/**
		Returns the unique format for the list of inputs, creating it if needed.
	**/
	public static function make( inputs : Array<BufferInput> ) {
		#if heaps_mt_hxsl_cache
		makeMutex.acquire();
		var fmt = makeUnsafe(inputs);
		makeMutex.release();
		return fmt;
		#else
		return makeUnsafe(inputs);
		#end
	}

	static function makeUnsafe( inputs : Array<BufferInput> ) {
		var names = [];
		for( b in inputs )
			names.push(b.name);
		var key = names.join("|");
		var arr = ALL_FORMATS.get(key);
		if( arr == null ) {
			arr = [];
			ALL_FORMATS.set(key,arr);
		}
		for( fmt in arr ) {
			var found = true;
			for( i in 0...inputs.length )
				if( !inputs[i].equals(fmt.inputs[i]) ) {
					found = false;
					break;
				}
			if( found )
				return fmt;
		}
		var fmt = new BufferFormat(inputs);
		arr.push(fmt);
		return fmt;
	}

	/**
		Converts a float to the bits of a 16 bits float.
	**/
	public static function float32to16( v : Float, denormalsAreZero : Bool = false ) : Int {
		var i = haxe.io.FPHelper.floatToI32(v);
		var sign = (i & 0x80000000) >>> 16;
		var exp = (i & 0x7f800000) >>> 23;
		var bits = i & 0x7FFFFF;
		if( exp > 112 )
			return sign | (((exp - 112) << 10)&0x7C00) | (bits>>13);
		if( exp < 113 && exp > 101 && !denormalsAreZero )
			return sign | ((((0x7FF000+bits)>>(125-exp))+1)>>1);
		if( exp > 143 )
			return sign | 0x7FFF;
		return 0;
	}

	/**
		Converts the bits of a 16 bits float to a float.
	**/
	public static function float16to32( v : Int ) : Float {
		var sign = (v & 0x8000) << 16;
		var bits = (v & 0x3FF) << 13;
		var exp = (v & 0x7C00) >> 10;
		if( exp != 0 )
			return haxe.io.FPHelper.i32ToFloat(sign | ((exp + 112) << 23) | bits);
		if( bits == 0 )
			return 0;
		var bitcount = haxe.io.FPHelper.floatToI32(bits) >> 23; // hack to get exp (number of leading zeros)
		return haxe.io.FPHelper.i32ToFloat(sign | ((bitcount - 37) << 23) | ((bits<<(150-bitcount))&0x7FE000));
	}

	/**
		Converts a float in the `[-1, 1]` range to a signed 8 bits value.
	**/
	public static function float32toS8( v : Float ) : Int {
		var i = Math.floor(v * 128);
		if( i >= 127 )
			return 0x7F;
		if( i <= -127 )
			return 0x80;
		return i >= 0 ? i : (0x7F + i) | 0x80;
	}

	/**
		Converts a signed 8 bits value to a float in the `[-1, 1]` range.
	**/
	public static function floatS8to32( v : Int ) : Float {
		if ( v & 0x80 != 0 )
			return -1*(0x7F-(v&0x7F))/128;
		else
			return (v&0x7F)/128;
	}

	/**
		Converts a float in the `[0, 1]` range to an unsigned 8 bits value.
	**/
	public static function float32toU8( v : Float ) : Int {
		if( v < 0 )
			return 0;
		if( v >= 1 )
			return 0xFF;
		return Math.floor(v * 256);
	}

	/**
		Converts an unsigned 8 bits value to a float in the `[0, 1]` range.
	**/
	public inline static function floatU8to32( v : Int ) {
		return (v & 0xFF) / 255;
	}

}

/**
	The cache of `MultiFormat.make`, indexed by format uids.
**/
typedef MultiFormatCache = Map<Int, { found : MultiFormat, nexts : MultiFormatCache }>;

/**
	The combination of the formats of several buffers, used to draw a mesh with more than one vertex buffer.
**/
class MultiFormat {

	static var UID = 0;
	static var CACHE = new MultiFormatCache();

	static var _UID = 0;
	/**
		The unique identifier of the combination.
	**/
	public var uid(default,null) : Int;
	var formats : Array<BufferFormat>;
	var mappings : Array<Array<BufferMapping>> = [];

	function new( formats : Array<BufferFormat> ) {
		uid = _UID++;
		this.formats = formats;
	}

	/**
		Returns where to find each input of `format` (the shader inputs) in the buffers. The first buffer containing an input is used.
	**/
	public inline function resolveMapping( format : hxd.BufferFormat ) {
		var m = mappings[format.uid];
		if( m == null )
			m = makeMapping(format);
		return m;
	}

	function makeMapping( format : hxd.BufferFormat ) {
		var m = [];
		for( input in format.getInputs() ) {
			var found = false, match = null;
			for( idx => f in formats ) {
				var i = f.getInput(input.name);
				if( i != null ) {
					match = i;
					if( i.type != input.type ) continue;
					var offset = f.calculateInputOffset(i.name);
					m.push(new BufferMapping(idx,offset,i.precision));
					found = true;
					break;
				}
			}
			if( !found ) {
				if( match != null )
					throw "Shader buffer "+input.name+" was requested with "+input.type+" but found with "+match.type;
				throw "Missing shader buffer "+input.name;
			}
		}
		mappings[format.uid] = m;
		return m;
	}

	/**
		The maximum number of buffers.
	**/
	public static var MAX_FORMATS = 16;
	/**
		Returns the unique combination of the formats, creating it if needed.
	**/
	public static function make( formats : Array<BufferFormat> ) : MultiFormat {
		if( formats.length > MAX_FORMATS )
			throw "Too many formats (addBuffer leak?) "+[for( f in formats ) f.toString()];
		var c = { found : null, nexts : CACHE };
		for( f in formats ) {
			var c2 = c.nexts.get(f.uid);
			if( c2 == null ) {
				c2 = { found : null, nexts : new Map() };
				c.nexts.set(f.uid, c2);
			}
			c = c2;
		}
		if( c.found == null )
			c.found = new MultiFormat(formats);
		return c.found;
	}

}

