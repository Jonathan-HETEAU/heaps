package hxsl;

/**
	The kind of a shader buffer.
**/
enum BufferKind {
	/**
		A uniform (constant) buffer.
	**/
	Uniform;
	/**
		A read-only storage buffer.
	**/
	Storage;
	/**
		A read-write storage buffer.
	**/
	RW;
	/**
		A uniform buffer declaring only some fields of its format: the format of the buffer set at runtime is a compile time constant.
	**/
	Partial;
	/**
		A read-only storage buffer declaring only some fields of its format (see `Partial`).
	**/
	StoragePartial;
	/**
		A read-write storage buffer declaring only some fields of its format (see `Partial`).
	**/
	RWPartial;
}

/**
	The dimension of a texture.
**/
enum TexDimension {
	/**
		1D.
	**/
	T1D;
	/**
		2D.
	**/
	T2D;
	/**
		3D.
	**/
	T3D;
	/**
		Cube.
	**/
	TCube;
}

/**
	A shader type.
**/
enum Type {
	/**
		No value.
	**/
	TVoid;
	/**
		An integer.
	**/
	TInt;
	/**
		A boolean.
	**/
	TBool;
	/**
		A float.
	**/
	TFloat;
	/**
		A string (only in constant expressions).
	**/
	TString;
	/**
		A vector of `size` components.
	**/
	TVec( size : Int, t : VecType );
	/**
		A 3x3 matrix.
	**/
	TMat3;
	/**
		A 4x4 matrix.
	**/
	TMat4;
	/**
		A 3x4 matrix (an affine transform).
	**/
	TMat3x4;
	/**
		`size` bytes packed in an integer (`Bytes2`, `Bytes4`).
	**/
	TBytes( size : Int );
	/**
		A texture.
	**/
	TSampler( dim : TexDimension, isArray : Bool );
	/**
		A read-write texture, with its number of channels.
	**/
	TRWTexture( dim : TexDimension, isArray : Bool, channels : Int );
	/**
		A 2x2 matrix.
	**/
	TMat2;
	/**
		A structure.
	**/
	TStruct( vl : Array<TVar> );
	/**
		A function, with its signatures.
	**/
	TFun( variants : Array<FunType> );
	/**
		An array.
	**/
	TArray( t : Type, size : SizeDecl );
	/**
		A buffer.
	**/
	TBuffer( t : Type, size : SizeDecl, kind : BufferKind );
	/**
		One or more channels of a texture (see `hxsl.Channel`).
	**/
	TChannel( size : Int );
	/**
		A bindless texture handle.
	**/
	TTextureHandle;
	/**
		A bindless buffer handle.
	**/
	TBufferHandle;
	/**
		A Haxe enum, as an integer constant (see `VarQualifier.Enum`).
	**/
	TEnum( path : String );
}

/**
	The type of the components of a vector.
**/
enum VecType {
	/**
		Integers.
	**/
	VInt;
	/**
		Floats.
	**/
	VFloat;
	/**
		Booleans.
	**/
	VBool;
}

/**
	The size of an array: a constant, or a constant variable.
**/
enum SizeDecl {
	/**
		A constant size.
	**/
	SConst( v : Int );
	/**
		The size given by a constant variable.
	**/
	SVar( v : TVar );
}

/**
	The signature of a function.
**/
typedef FunType = {
	/**
		The arguments.
	**/
	var args : Array<{ name : String, type : Type }>;
	/**
		The return type.
	**/
	var ret : Type;
};

/**
	A shader compilation error.
**/
class Error {

	/**
		The error message.
	**/
	public var msg : String;
	/**
		The position of the error in the shader source.
	**/
	public var pos : Position;

	/**
		Creates an error.
	**/
	public function new( msg, pos ) {
		this.msg = msg;
		this.pos = pos;
	}

	/**
		Returns the message and position of the error.
	**/
	public function toString() {
		return "Error(" + msg + ")@" + pos;
	}

	/**
		Throws an error.
	**/
	public static function t( msg : String, pos : Position ) : Dynamic {
		throw new Error(msg, pos);
		return null;
	}
}

/**
	A position in the shader source.
**/
typedef Position = haxe.macro.Expr.Position;

/**
	An untyped shader expression, as parsed from the shader source.
**/
typedef Expr = {
	/**
		The expression.
	**/
	var expr : ExprDef;
	/**
		The position in the source.
	**/
	var pos : Position;
};

/**
	A binary operator.
**/
typedef Binop = haxe.macro.Expr.Binop;
/**
	A unary operator.
**/
typedef Unop = haxe.macro.Expr.Unop;

/**
	The kind of a shader variable.
**/
enum VarKind {
	/**
		A global variable, shared by all the shaders and set with `hxsl.Globals`.
	**/
	Global;
	/**
		A vertex attribute, read from the vertex buffers.
	**/
	Input;
	/**
		A parameter, set from Haxe code on the shader instance.
	**/
	Param;
	/**
		A variable shared by the shaders of a pass: written in the vertex shader, it is interpolated for the fragment shader.
	**/
	Var;
	/**
		A local variable.
	**/
	Local;
	/**
		An output of the shader (such as `output.position` or `output.color`).
	**/
	Output;
	/**
		A function.
	**/
	Function;
}

/**
	The qualifiers of a shader variable, set with metadata in the shader source (such as `@const` or `@range`).
**/
enum VarQualifier {
	/**
		The parameter is a compile time constant: each value produces a shader variant. `max` is the maximum value of an integer.
	**/
	Const( ?max : Int );
	/**
		The variable is not shared with the other shaders.
	**/
	Private;
	/**
		The texture parameter can be `null`.
	**/
	Nullable;
	/**
		The global is set for each object.
	**/
	PerObject;
	/**
		The name of the variable in the generated code.
	**/
	Name( n : String );
	/**
		The parameter is shared by all the shaders declaring it with the same name, instead of being separate for each shader.
	**/
	Shared;
	/**
		The precision of the variable.
	**/
	Precision( p : Prec );
	/**
		The range of the value, for editors.
	**/
	Range( min : Float, max : Float );
	/**
		The variable is ignored in reflection (inspector).
	**/
	Ignore;
	/**
		The input changes every `v` instances (instanced rendering).
	**/
	PerInstance( v : Int );
	/**
		The documentation of the variable, for editors.
	**/
	Doc( s : String );
	/**
		The local variable is read from the shader of the given path.
	**/
	Borrow( source : String );
	/**
		The names of the samplers of the texture.
	**/
	Sampler( name : String );
	/**
		The local variable is assigned only once, at its declaration.
	**/
	Final;
	/**
		The variable is not interpolated between the vertex and the fragment shader.
	**/
	Flat;
	/**
		The local variable is not passed from the vertex to the fragment shader.
	**/
	NoVar;
	/**
		The parameter is a Haxe enum, stored as the index of its constructor.
	**/
	Enum( path : String, constructors : Array<String> );
}

/**
	The precision of a shader variable.
**/
enum Prec {
	/**
		Low precision.
	**/
	Low;
	/**
		Medium precision.
	**/
	Medium;
	/**
		High precision.
	**/
	High;
}

/**
	A variable declaration in the shader source.
**/
typedef VarDecl = {
	/**
		The name of the variable.
	**/
	var name : String;
	/**
		The type of the variable, or `null` to infer it.
	**/
	var type : Null<Type>;
	/**
		The kind of the variable, or `null` for a local variable.
	**/
	var kind : Null<VarKind>;
	/**
		The qualifiers of the variable.
	**/
	var qualifiers : Array<VarQualifier>;
	/**
		The initial value of the variable.
	**/
	var expr : Null<Expr>;
}

/**
	A function declaration in the shader source.
**/
typedef FunDecl = {
	/**
		The name of the function.
	**/
	var name : String;
	/**
		The arguments of the function.
	**/
	var args : Array<VarDecl>;
	/**
		The return type, or `null` to infer it.
	**/
	var ret : Null<Type>;
	/**
		The body of the function.
	**/
	var expr : Expr;
}

/**
	A constant value.
**/
enum Const {
	/**
		`null`.
	**/
	CNull;
	/**
		A boolean.
	**/
	CBool( b : Bool );
	/**
		An integer.
	**/
	CInt( v : Int );
	/**
		A float.
	**/
	CFloat( v : Float );
	/**
		A string.
	**/
	CString( v : String );
}

/**
	The untyped shader expressions, as parsed from the shader source.
**/
enum ExprDef {
 	/**
 		A constant.
 	**/
 	EConst( c : Const );
	/**
		An identifier.
	**/
	EIdent( i : String );
	/**
		An expression in parentheses.
	**/
	EParenthesis( e : Expr );
	/**
		A field access `e.f`.
	**/
	EField( e : Expr, f : String );
	/**
		A binary operation.
	**/
	EBinop( op : Binop, e1 : Expr, e2 : Expr );
	/**
		A unary operation.
	**/
	EUnop( op : Unop, e1 : Expr );
	/**
		A call.
	**/
	ECall( e : Expr, args : Array<Expr> );
	/**
		A block of expressions.
	**/
	EBlock( el : Array<Expr> );
	/**
		Variable declarations.
	**/
	EVars( v : Array<VarDecl> );
	/**
		A function declaration.
	**/
	EFunction( f : FunDecl );
	/**
		A condition.
	**/
	EIf( econd : Expr, eif : Expr, eelse : Null<Expr> );
	/**
		Discards the pixel.
	**/
	EDiscard;
	/**
		A `for` loop.
	**/
	EFor( v : String, loop : Expr, block : Expr );
	/**
		A return.
	**/
	EReturn( ?e : Expr );
	/**
		A break.
	**/
	EBreak;
	/**
		A continue.
	**/
	EContinue;
	/**
		An array access.
	**/
	EArray( e : Expr, eindex : Expr );
	/**
		An array declaration.
	**/
	EArrayDecl( el : Array<Expr> );
	/**
		A switch.
	**/
	ESwitch( e : Expr, cases : Array<{ values : Array<Expr>, expr:Expr }>, def : Null<Expr> );
	/**
		A `while` loop, or a `do ... while` loop if `normalWhile` is not set.
	**/
	EWhile( cond : Expr, loop : Expr, normalWhile : Bool );
	/**
		An expression with metadata.
	**/
	EMeta( name : String, args : Array<Expr>, e : Expr );
}

/**
	The typed shader expressions, produced by `hxsl.Checker`.
**/
enum TExprDef {
	/**
		A constant.
	**/
	TConst( c : Const );
	/**
		A variable.
	**/
	TVar( v : TVar );
	/**
		A built-in function or value.
	**/
	TGlobal( g : TGlobal );
	/**
		An expression in parentheses.
	**/
	TParenthesis( e : TExpr );
	/**
		A block of expressions.
	**/
	TBlock( el : Array<TExpr> );
	/**
		A binary operation.
	**/
	TBinop( op : Binop, e1 : TExpr, e2 : TExpr );
	/**
		A unary operation.
	**/
	TUnop( op : Unop, e1 : TExpr );
	/**
		A variable declaration.
	**/
	TVarDecl( v : TVar, ?init : TExpr );
	/**
		A call.
	**/
	TCall( e : TExpr, args : Array<TExpr> );
	/**
		A swizzle (`e.xyz`).
	**/
	TSwiz( e : TExpr, regs : Array<Component> );
	/**
		A condition.
	**/
	TIf( econd : TExpr, eif : TExpr, eelse : Null<TExpr> );
	/**
		Discards the pixel.
	**/
	TDiscard;
	/**
		A return.
	**/
	TReturn( ?e : TExpr );
	/**
		A `for` loop.
	**/
	TFor( v : TVar, it : TExpr, loop : TExpr );
	/**
		A continue.
	**/
	TContinue;
	/**
		A break.
	**/
	TBreak;
	/**
		An array access.
	**/
	TArray( e : TExpr, index : TExpr );
	/**
		An array declaration.
	**/
	TArrayDecl( el : Array<TExpr> );
	/**
		A switch.
	**/
	TSwitch( e : TExpr, cases : Array<{ values : Array<TExpr>, expr:TExpr }>, def : Null<TExpr> );
	/**
		A `while` loop, or a `do ... while` loop if `normalWhile` is not set.
	**/
	TWhile( e : TExpr, loop : TExpr, normalWhile : Bool );
	/**
		An expression with metadata.
	**/
	TMeta( m : String, args : Array<Const>, e : TExpr );
	/**
		A field access on a structure inside an array.
	**/
	TField( e : TExpr, name : String );
	/**
		Raw code inserted in the output of the given target (`"code"` inserts it for any target).
	**/
	TSyntax(target : String, code : String, args : Array<SyntaxArg> );
}

/**
	A typed shader variable.
**/
@:structInit
@:publicFields
class TVar {
	/**
		The unique identifier of the variable.
	**/
	var id : Int;
	/**
		The name of the variable.
	**/
	var name : String;
	/**
		The type of the variable.
	**/
	var type : Type;
	/**
		The kind of the variable.
	**/
	var kind : VarKind;
	/**
		The variable containing this one, for the fields of a structure.
	**/
	@:optional var parent : TVar;
	/**
		The qualifiers of the variable.
	**/
	@:optional var qualifiers : Null<Array<VarQualifier>>;

	#if heaps_compact_mem
	/**
		Clone but keep the same id, useful when v is inside a read-only memory.
	**/
	public function clone() : TVar {
		var v = this;
		var v2 : TVar = {
			id : v.id,
			name : v.name,
			type : v.type,
			kind : v.kind,
			parent : v.parent?.clone(),
			qualifiers : v.qualifiers?.copy(),
		}
		return v2;
	}
	#end
}

/**
	A typed shader function.
**/
typedef TFunction = {
	/**
		The kind of the function.
	**/
	var kind : FunctionKind;
	/**
		The variable referencing the function.
	**/
	var ref : TVar;
	/**
		The arguments of the function.
	**/
	var args : Array<TVar>;
	/**
		The return type.
	**/
	var ret : Type;
	/**
		The body of the function.
	**/
	var expr : TExpr;
}

/**
	The kind of a shader function.
**/
enum FunctionKind {
	/**
		The `vertex` entry point.
	**/
	Vertex;
	/**
		The `fragment` entry point.
	**/
	Fragment;
	/**
		An `__init__` function, computing variables before the entry points.
	**/
	Init;
	/**
		A helper function, called by the others.
	**/
	Helper;
	/**
		The `main` entry point of a compute shader.
	**/
	Main;
}

/**
	The built-in functions and values of the shader language.
**/
enum TGlobal {
	/** `radians(x)`: converts degrees to radians. **/
	Radians;
	/** `degrees(x)`: converts radians to degrees. **/
	Degrees;
	/** `sin(x)`. **/
	Sin;
	/** `cos(x)`. **/
	Cos;
	/** `tan(x)`. **/
	Tan;
	/** `asin(x)`. **/
	Asin;
	/** `acos(x)`. **/
	Acos;
	/** `atan(x)` or `atan(y, x)`. **/
	Atan;
	/** `pow(x, y)`. **/
	Pow;
	/** `exp(x)`. **/
	Exp;
	/** `log(x)`: natural logarithm. **/
	Log;
	/** `exp2(x)`. **/
	Exp2;
	/** `log2(x)`. **/
	Log2;
	/** `sqrt(x)`. **/
	Sqrt;
	/** `inversesqrt(x)`: `1 / sqrt(x)`. **/
	Inversesqrt;
	/** `abs(x)`. **/
	Abs;
	/** `sign(x)`. **/
	Sign;
	/** `floor(x)`. **/
	Floor;
	/** `ceil(x)`. **/
	Ceil;
	/** `fract(x)`: the fractional part. **/
	Fract;
	/** `mod(x, y)`. **/
	Mod;
	/** `min(a, b)`. **/
	Min;
	/** `max(a, b)`. **/
	Max;
	/** `clamp(value, min, max)`. **/
	Clamp;
	/** `mix(x, y, a)`: linear interpolation. **/
	Mix;
	/** `invLerp(v, a, b)`: the position of `v` between `a` and `b`, clamped to `[0, 1]`. **/
	InvLerp;
	/** `step(edge, x)`. **/
	Step;
	/** `smoothstep(edge0, edge1, x)`. **/
	Smoothstep;
	/** `length(v)`. **/
	Length;
	/** `distance(a, b)`. **/
	Distance;
	/** `dot(a, b)`. **/
	Dot;
	/** `cross(a, b)`. **/
	Cross;
	/** `normalize(v)`. **/
	Normalize;
	//Faceforward;
	/** `reflect(i, n)`. **/
	LReflect;
	//Refract;
	//MatrixCompMult;
	//Any;
	//All;
	/** `tex.get(uv)` or `texture(tex, uv)`: samples a texture. **/
	Texture;
	/** `tex.getLod(uv, lod)`: samples a mip level of a texture. **/
	TextureLod;
	/** `tex.fetch(pos)`: reads a texel at integer coordinates. **/
	Texel;
	/** `tex.size()`: the size of a texture. **/
	TextureSize;
	// ...other texture* operations
	// constructors
	/** `int(x)` or `x.toInt()`. **/
	ToInt;
	/** `float(x)` or `x.toFloat()`. **/
	ToFloat;
	/** `x.toBool()`. **/
	ToBool;
	/** `vec2(...)`. **/
	Vec2;
	/** `vec3(...)`. **/
	Vec3;
	/** `vec4(...)`. **/
	Vec4;
	/** `ivec2(...)`. **/
	IVec2;
	/** `ivec3(...)`. **/
	IVec3;
	/** `ivec4(...)`. **/
	IVec4;
	/** `bvec2(...)`. **/
	BVec2;
	/** `bvec3(...)`. **/
	BVec3;
	/** `bvec4(...)`. **/
	BVec4;
	/** `mat2(...)`. **/
	Mat2;
	/** `mat3(...)`. **/
	Mat3;
	/** `mat4(...)`. **/
	Mat4;
	// extra (not in GLSL ES)
	/** `mat3x4(...)`. **/
	Mat3x4;
	/** `saturate(x)`: clamps to `[0, 1]`. **/
	Saturate;
	/** `pack(v)`: packs a float in `[0, 1]` into a color. **/
	Pack;
	/** `unpack(c)`: the float packed by `pack`. **/
	Unpack;
	/** `packNormal(n)`: packs a normal into a color. **/
	PackNormal;
	/** `unpackNormal(c)`: the normal from the XY of a normal map color. **/
	UnpackNormal;
	/** `screenToUv(p)`: converts screen coordinates (`[-1, 1]`, Y up) to texture coordinates. **/
	ScreenToUv;
	/** `uvToScreen(uv)`: converts texture coordinates to screen coordinates. **/
	UvToScreen;
	// extensions
	/** `dFdx(x)`: the derivative along X. **/
	DFdx;
	/** `dFdy(x)`: the derivative along Y. **/
	DFdy;
	/** `fwidth(x)`: `abs(dFdx(x)) + abs(dFdy(x))`. **/
	Fwidth;
	// debug / internal
	/** `channel.get(uv)`: reads a `TChannel`. **/
	ChannelRead;
	/** `channel.getLod(uv, lod)`: reads a mip level of a `TChannel`. **/
	ChannelReadLod;
	/** `channel.fetch(pos)`: reads a `TChannel` at integer coordinates. **/
	ChannelFetch;
	/** `channel.size()`: the size of the texture of a `TChannel`. **/
	ChannelTextureSize;
	/** `trace(...)`: prints its arguments when the shader is evaluated (debug). **/
	Trace;
	// instancing
	/** `vertexID`: the index of the vertex. **/
	VertexID;
	/** `instanceID`: the index of the instance. **/
	InstanceID;
	// gl globals
	/** `fragCoord`: the window coordinates of the pixel. **/
	FragCoord;
	/** `frontFacing`: tells if the face is front facing. **/
	FrontFacing;
	// dx12 barycentrics
	/** `barycentrics`: the barycentric coordinates of the pixel in its triangle (DirectX 12). **/
	Barycentrics;
	/** `vertexAt(v, index)`: the value of an input at a vertex of the triangle (DirectX 12). **/
	VertexAt;
	// bit casting
	/** `floatBitsToInt(x)`. **/
	FloatBitsToInt;
	/** `floatBitsToUint(x)`. **/
	FloatBitsToUint;
	/** `intBitsToFloat(x)`. **/
	IntBitsToFloat;
	/** `uintBitsToFloat(x)`. **/
	UintBitsToFloat;
	/** `roundEven(x)`. **/
	RoundEven;
	// compute
	/** `setLayout(x, y, z)`: the size of a work group of a compute shader. **/
	SetLayout;
	/** `tex.store(pos, color)`: writes a texel of a read-write texture. **/
	ImageStore;
	/** `computeVar.globalInvocation`: the index of the invocation of a compute shader. **/
	ComputeVar_GlobalInvocation;
	/** `computeVar.localInvocation`: the index of the invocation in its work group. **/
	ComputeVar_LocalInvocation;
	/** `computeVar.workGroup`: the index of the work group. **/
	ComputeVar_WorkGroup;
	/** `computeVar.localInvocationIndex`: the flattened index of the invocation in its work group. **/
	ComputeVar_LocalInvocationIndex;
	//ComputeVar_NumWorkGroups - no DirectX support
	//ComputeVar_WorkGroupSize - no DirectX support
	/** `atomicAdd(buf, index, data)`: adds to an element of a buffer and returns its previous value. **/
	AtomicAdd;
	/** `groupMemoryBarrier()`: synchronizes the memory accesses of a work group. **/
	GroupMemoryBarrier;
	/** `unpackSnorm4x8(x)`: four signed normalized bytes to a vector. **/
	UnpackSnorm4x8;
	/** `unpackUnorm4x8(x)`: four unsigned normalized bytes to a vector. **/
	UnpackUnorm4x8;
	/** `transpose(m)`. **/
	Transpose;
	/** `tex.fetchLod(pos, lod)`: reads a texel of a mip level at integer coordinates. **/
	TexelLod;
	/** `resolveSampler(handle, tex)`: sets a texture from a bindless handle. **/
	ResolveSampler;
	/** `resolveBuffer(handle, buf)`: sets a buffer from a bindless handle. **/
	ResolveBuffer;
	/** `findLSB(x)`: the index of the least significant bit set. **/
	FindLSB;
	/** `findMSB(x)`: the index of the most significant bit set. **/
	FindMSB;
	/** `atomicAnd(buf, index, data)`: combines an element of a buffer with a bitwise and, and returns its previous value. **/
	AtomicAnd;
	/** `atomicOr(buf, index, data)`: combines an element of a buffer with a bitwise or, and returns its previous value. **/
	AtomicOr;
	/** `bitCount(x)`: the number of bits set. **/
	BitCount;
	/** `uint(x)` or `x.toUInt()`. **/
	ToUInt;
}

/**
	How a raw code (`TSyntax`) argument is accessed.
**/
enum SyntaxArgAccess {
	/**
		Read only.
	**/
	Read;
	/**
		Written only.
	**/
	Write;
	/**
		Read and written.
	**/
	ReadWrite;
}

/**
	An argument of a raw code expression (`TSyntax`).
**/
typedef SyntaxArg = {
	/**
		The argument.
	**/
	var e : TExpr;
	/**
		How the argument is accessed.
	**/
	var access : SyntaxArgAccess;
}

/**
	A vector component, for swizzling.
**/
enum Component {
	/**
		The first component (`x` or `r`).
	**/
	X;
	/**
		The second component (`y` or `g`).
	**/
	Y;
	/**
		The third component (`z` or `b`).
	**/
	Z;
	/**
		The fourth component (`w` or `a`).
	**/
	W;
}

/**
	A typed shader expression.
**/
@:structInit
class TExpr {
	/**
		The expression.
	**/
	public var e : TExprDef;
	/**
		The type of the expression.
	**/
	public var t : Type;
	/**
		The position of the expression in the shader source.
	**/
	public var p : Position;
}

/**
	A typed shader: its variables and functions.
**/
typedef ShaderData = {
	/**
		The name of the shader.
	**/
	var name : String;
	/**
		The variables of the shader.
	**/
	var vars : Array<TVar>;
	/**
		The functions of the shader.
	**/
	var funs : Array<TFunction>;
}

/**
	Helpers on the shader types, variables and expressions.
**/
class Tools {

	static var UID = 0;
	#if heaps_mt_hxsl_cache
	static var uidMutex = new sys.thread.Mutex();
	#end

	/**
		All the components, in order.
	**/
	public static var SWIZ = Component.createAll();
	/**
		The number of bits used to encode the channel of a `TChannel` constant.
	**/
	public static var MAX_CHANNELS_BITS = 3;
	/**
		The number of bits used to encode the mapping of a partial buffer.
	**/
	public static var MAX_PARTIAL_MAPPINGS_BITS = 7;

	/**
		Returns a new unique variable identifier (negative for the variables created at compile time).
	**/
	public static function allocVarId() {
		// in order to prevent compile time ids to conflict with runtime allocated ones
		// let's use negative numbers for compile time ones
		#if macro
		return --UID;
		#else
		#if heaps_mt_hxsl_cache
		uidMutex.acquire();
		#end
		var id = ++UID;
		#if heaps_mt_hxsl_cache
		uidMutex.release();
		#end
		return id;
		#end
	}

	/**
		Returns the number of coordinates to sample a texture of the given dimension (one more for an array).
	**/
	public static function getTexUVSize( dim : TexDimension, arr = false ) {
		var size = switch( dim ) {
		case T1D: 1;
		case T2D: 2;
		case T3D, TCube: 3;
		}
		if( arr ) size++;
		return size;
	}

	/**
		Returns the number of components of the size of a texture of the given dimension (one more for an array).
	**/
	public static function getDimSize( dim : TexDimension, arr = false ) {
		var size = switch( dim ){
		case T1D: 1;
		case T2D, TCube: 2;
		case T3D: 3;
		}
		if( arr ) size++;
		return size;
	}

	/**
		Returns the name of the variable in the generated code (its `Name` qualifier, or its name).
	**/
	public static function getName( v : TVar ) {
		if( v.qualifiers == null )
			return v.name;
		for( q in v.qualifiers )
			switch( q ) {
			case Name(n): return n;
			default:
			}
		return v.name;
	}

	/**
		Returns the documentation of the variable (its `Doc` qualifier), or `null`.
	**/
	public static function getDoc( v : TVar ) {
		if ( v.qualifiers == null )
			return null;
		for ( q in v.qualifiers )
			switch ( q ) {
			case Doc(s): return s;
			default:
			}
		return null;
	}

	/**
		Returns the enum of the variable (its `Enum` qualifier), or `null`.
	**/
	public static function getEnum( v : TVar ) {
		if( v.qualifiers == null )
			return null;
		for( q in v.qualifiers )
			switch( q ) {
			case Enum(path, constructors): return { path : path, constructors : constructors };
			default:
			}
		return null;
	}

	/**
		Returns the number of bits used to encode the constant variable in the shader variant key.
	**/
	public static function getConstBits( v : TVar ) {
		switch( v.type ) {
		case TBool:
			if( isConst(v) ) return 1;
		case TInt:
			for( q in v.qualifiers )
				switch( q ) {
				case Const(n):
					if( n != null ) {
						var bits = 0;
						while( n >= 1 << bits )
							bits++;
						return bits;
					}
					return 8;
				default:
				}
		case TChannel(_):
			return 3 + MAX_CHANNELS_BITS;
		case TBuffer(_, _, Partial|StoragePartial|RWPartial):
			return MAX_PARTIAL_MAPPINGS_BITS;
		default:
		}
		return 0;
	}

	/**
		Tells if the variable is a compile time constant.
	**/
	public static function isConst( v : TVar ) {
		if( v.type.match(TChannel(_)|TBuffer(_,_,Partial|StoragePartial|RWPartial)) )
			return true;
		if( v.qualifiers != null )
			for( q in v.qualifiers )
				switch( q ) {
				case Const(_): return true;
				default:
				}
		return false;
	}

	/**
		Tells if the variable is a local `final` number or boolean.
	**/
	public static function isFinalConst( v : TVar ) {
		return v.kind.match(Local) && v.type.match(TInt | TFloat | TBool) && hasQualifier(v, Final);
	}

	/**
		Tells if the variable is a local `final` integer.
	**/
	public static function isFinalInt( v : TVar ) {
		return isFinalConst(v) && v.type.match(TInt);
	}

	/**
		Tells if the variable is a structure.
	**/
	public static function isStruct( v : TVar ) {
		return switch( v.type ) { case TStruct(_): true; default: false; }
	}

	/**
		Tells if the variable is an array.
	**/
	public static function isArray( v : TVar ) {
		return switch( v.type ) { case TArray(_): true; default: false; }
	}

	/**
		Tells if the variable has the qualifier.
	**/
	public static function hasQualifier( v : TVar, q ) {
		if( v.qualifiers != null )
			for( q2 in v.qualifiers )
				if( q2 == q )
					return true;
		return false;
	}

	/**
		Tells if the variable borrows the variables of the shader of the given path.
	**/
	public static function hasBorrowQualifier( v : TVar, path : String ) {
		if ( v.qualifiers != null )
			for( q in v.qualifiers )
				switch (q) {
					case Borrow(s): return path == s;
					default:
				}
		return false;
	}

	/**
		Tells if the type is a texture (sampler or read-write texture).
	**/
	public static function isTexture( t : Type ) {
		return switch( t ) {
		case TSampler(_), TChannel(_), TRWTexture(_):
			true;
		default:
			false;
		}
	}

	/**
		Returns the type as written in the shader source.
	**/
	public static function toString( t : Type ) {
		return switch( t ) {
		case TVec(size, t):
			var prefix = switch( t ) {
			case VFloat: "";
			case VInt: "I";
			case VBool: "B";
			}
			prefix + "Vec" + size;
		case TStruct(vl):"{" + [for( v in vl ) v.name + " : " + toString(v.type)].join(",") + "}";
		case TArray(t, s): toString(t) + "[" + (switch( s ) { case SConst(i): "" + i; case SVar(v): v.name; } ) + "]";
		case TBuffer(t, s, k):
			var prefix = switch( k ) {
			case Uniform: "Buffer";
			case Storage: "StorageBuffer";
			case RW: "RWBuffer";
			case Partial: "PartialBuffer";
			case StoragePartial: "StoragePartialBuffer";
			case RWPartial: "RWPartialBuffer";
			};
			prefix+" "+toString(t) + "[" + (switch( s ) { case SConst(i): "" + i; case SVar(v): v.name; } ) + "]";
		case TBytes(n): "Bytes" + n;
		case TEnum(path): path;
		case TSampler(dim, arr):
			"Sampler"+dim.getName().substr(1)+(arr ? "Array":"");
		case TRWTexture(dim, arr,dims):
			"RWTexture"+dim.getName().substr(1)+(arr ? "Array":"")+"<"+(dims == 1 ? "Float" : "Vec"+dims)+">";
		default: t.getName().substr(1);
		}
	}

	/**
		Returns the scalar type of the vector components.
	**/
	public static function toType( t : VecType ) {
		return switch( t ) {
		case VFloat: TFloat;
		case VBool: TBool;
		case VInt: TInt;
		};
	}

	/**
		Tells if evaluating the expression may have side effects (assignments, discards, function calls...).
	**/
	public static function hasSideEffect( e : TExpr ) {
		switch( e.e ) {
		case TParenthesis(e):
			return hasSideEffect(e);
		case TBlock(el), TArrayDecl(el):
			for( e in el )
				if( hasSideEffect(e) )
					return true;
			return false;
		case TBinop(OpAssign | OpAssignOp(_), _, _):
			return true;
		case TBinop(_, e1, e2):
			return hasSideEffect(e1) || hasSideEffect(e2);
		case TUnop(_, e1):
			return hasSideEffect(e1);
		case TSwiz(e, _):
			return hasSideEffect(e);
		case TIf(econd, eif, eelse):
			return hasSideEffect(econd) || hasSideEffect(eif) || (eelse != null && hasSideEffect(eelse));
		case TFor(_, it, loop):
			return hasSideEffect(it) || hasSideEffect(loop);
		case TArray(e, index):
			return hasSideEffect(e) || hasSideEffect(index);
		case TConst(_), TVar(_), TGlobal(_):
			return false;
		case TCall({ e : TGlobal(SetLayout) },_):
			return true;
		case TCall(e, pl):
			switch( e.e ) {
			case TGlobal( ImageStore | AtomicAdd | AtomicAnd | AtomicOr | GroupMemoryBarrier | ResolveSampler | ResolveBuffer ):
				return true;
			case TGlobal(g):
			default:
				return true;
			}
			for( p in pl )
				if( hasSideEffect(p) )
					return true;
			return false;
		case TVarDecl(_), TDiscard, TContinue, TBreak, TReturn(_), TSyntax(_, _, _):
			return true;
		case TSwitch(e, cases, def):
			for( c in cases ) {
				for( v in c.values ) if( hasSideEffect(v) ) return true;
				if( hasSideEffect(c.expr) ) return true;
			}
			return hasSideEffect(e) || (def != null && hasSideEffect(def));
		case TWhile(e, loop, _):
			return hasSideEffect(e) || hasSideEffect(loop);
		case TMeta(_, _, e):
			return hasSideEffect(e);
		case TField(e,_):
			return hasSideEffect(e);
		}
	}

	/**
		Calls `f` on each sub expression.
	**/
	public static function iter( e : TExpr, f : TExpr -> Void ) {
		switch( e.e ) {
		case TParenthesis(e): f(e);
		case TBlock(el): for( e in el ) f(e);
		case TBinop(_, e1, e2): f(e1); f(e2);
		case TUnop(_, e1): f(e1);
		case TVarDecl(_,init): if( init != null ) f(init);
		case TCall(e, args): f(e); for( a in args ) f(a);
		case TSwiz(e, _): f(e);
		case TIf(econd, eif, eelse): f(econd); f(eif); if( eelse != null ) f(eelse);
		case TReturn(e): if( e != null ) f(e);
		case TFor(_, it, loop): f(it); f(loop);
		case TArray(e, index): f(e); f(index);
		case TArrayDecl(el): for( e in el ) f(e);
		case TSwitch(e, cases, def):
			f(e);
			for( c in cases ) {
				for( v in c.values ) f(v);
				f(c.expr);
			}
			if( def != null ) f(def);
		case TWhile(e, loop, _):
			f(e);
			f(loop);
		case TConst(_), TVar(_), TGlobal(_), TDiscard, TContinue, TBreak:
		case TMeta(_, _, e): f(e);
		case TField(e, _): f(e);
		case TSyntax(_, _, args): for (arg in args) f(arg.e);
		}
	}

	/**
		Returns a copy of the expression with each sub expression replaced by `f`.
	**/
	public static inline function map( e : TExpr, f : TExpr -> TExpr ) : TExpr {
		var ed = switch( e.e ) {
		case TParenthesis(e): TParenthesis(f(e));
		case TBlock(el): TBlock([for( e in el ) f(e)]);
		case TBinop(op, e1, e2): TBinop(op, f(e1), f(e2));
		case TUnop(op, e1): TUnop(op, f(e1));
		case TVarDecl(v,init): TVarDecl(v, if( init != null ) f(init) else null);
		case TCall(e, args): TCall(f(e),[for( a in args ) f(a)]);
		case TSwiz(e, c): TSwiz(f(e), c);
		case TIf(econd, eif, eelse): TIf(f(econd),f(eif),if( eelse != null ) f(eelse) else null);
		case TReturn(e): TReturn(if( e != null ) f(e) else null);
		case TFor(v, it, loop): TFor(v, f(it), f(loop));
		case TArray(e, index): TArray(f(e), f(index));
		case TArrayDecl(el): TArrayDecl([for( e in el ) f(e)]);
		case TSwitch(e, cases, def): TSwitch(f(e), [for( c in cases ) { values : [for( v in c.values ) f(v)], expr : f(c.expr) }], def == null ? null : f(def));
		case TWhile(e, loop, normalWhile): TWhile(f(e), f(loop), normalWhile);
		case TConst(_), TVar(_), TGlobal(_), TDiscard, TContinue, TBreak: e.e;
		case TMeta(m, args, e): TMeta(m, args, f(e)); // don't map args
		case TField(e, name): TField(f(e), name);
		case TSyntax(target, code, args): TSyntax(target, code, [for (arg in args) ({ e : f(arg.e), access : arg.access })]);
		}
		return { e : ed, t : e.t, p : e.p };
	}

	/**
		Returns the number of floats used by the type.
	**/
	public static function size( t : Type ) {
		return switch( t ) {
		case TVoid: 0;
		case TFloat, TInt, TEnum(_): 1;
		case TVec(n, _), TChannel(n): n;
		case TStruct(vl):
			var s = 0;
			for( v in vl ) s += size(v.type);
			return s;
		case TMat2: 4;
		case TMat3: 9;
		case TMat4: 16;
		case TMat3x4: 12;
		case TBytes(s): s;
		case TBool: 1;
		case TString, TSampler(_), TRWTexture(_), TFun(_): 0;
		case TArray(t, SConst(v)), TBuffer(t, SConst(v),_): size(t) * v;
		case TArray(_, SVar(_)), TBuffer(_): 0;
		case TTextureHandle: 2;
		case TBufferHandle: 1;
		}
	}

	#if !macro
	/**
		Evaluates a constant expression.
	**/
	public static function evalConst( e : TExpr ) : Dynamic {
		return switch( e.e ) {
		case TConst(c):
			switch( c ) {
			case CNull: null;
			case CBool(b): b;
			case CInt(i): i;
			case CFloat(f): f;
			case CString(s): s;
			}
		case TCall({ e : TGlobal(Vec4) }, args):
			var vals = [for( a in args ) evalConst(a)];
			if( vals.length == 1 )
				return new Types.Vec4(vals[0], vals[0], vals[0], vals[0]);
			return new Types.Vec4(vals[0], vals[1], vals[2], vals[3]);
		case TCall({ e : TGlobal(Vec2 | Vec3) }, args):
			var vals = [for( a in args ) evalConst(a)];
			if( vals.length == 1 )
				return new Types.Vec(vals[0], vals[0], vals[0]);
			return new Types.Vec(vals[0], vals[1], vals[2]);
		default:
			throw "Unhandled constant init " + Printer.toString(e);
		}
	}
	#end

}

/**
	Helpers on the shader built-in functions.
**/
class Tools2 {

	/**
		Returns the name of the built-in function in the shader source.
	**/
	public static function toString( g : TGlobal ) {
		var n = g.getName();
		return n.charAt(0).toLowerCase() + n.substr(1);
	}

}

/**
	Helpers on the shader data.
**/
class Tools3 {

	/**
		Returns the shader as source code.
	**/
	public static function toString( s : ShaderData ) {
		return Printer.shaderToString(s);
	}

}

/**
	Helpers on the shader expressions.
**/
class Tools4 {

	/**
		Returns the expression as source code.
	**/
	public static function toString( e : TExpr ) {
		return Printer.toString(e);
	}

}
