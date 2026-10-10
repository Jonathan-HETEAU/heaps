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
	Partial;
	StoragePartial;
	RWPartial;
}

/**
	The dimension of a texture.
**/
enum TexDimension {
	T1D;
	T2D;
	T3D;
	TCube;
}

/**
	A shader type.
**/
enum Type {
	TVoid;
	TInt;
	TBool;
	TFloat;
	TString;
	TVec( size : Int, t : VecType );
	TMat3;
	TMat4;
	TMat3x4;
	TBytes( size : Int );
	TSampler( dim : TexDimension, isArray : Bool );
	TRWTexture( dim : TexDimension, isArray : Bool, channels : Int );
	TMat2;
	TStruct( vl : Array<TVar> );
	TFun( variants : Array<FunType> );
	TArray( t : Type, size : SizeDecl );
	TBuffer( t : Type, size : SizeDecl, kind : BufferKind );
	TChannel( size : Int );
	TTextureHandle;
	TBufferHandle;
	TEnum( path : String );
}

/**
	The type of the components of a vector.
**/
enum VecType {
	VInt;
	VFloat;
	VBool;
}

/**
	The size of an array: a constant, or a constant variable.
**/
enum SizeDecl {
	SConst( v : Int );
	SVar( v : TVar );
}

/**
	The signature of a function.
**/
typedef FunType = { args : Array<{ name : String, type : Type }>, ret : Type };

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
typedef Expr = { expr : ExprDef, pos : Position };

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
	PerInstance( v : Int );
	/**
		The documentation of the variable, for editors.
	**/
	Doc( s : String );
	Borrow( source : String );
	Sampler( name : String );
	Final;
	/**
		The variable is not interpolated between the vertex and the fragment shader.
	**/
	Flat;
	NoVar;
	Enum( path : String, constructors : Array<String> );
}

/**
	The precision of a shader variable.
**/
enum Prec {
	Low;
	Medium;
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
	CNull;
	CBool( b : Bool );
	CInt( v : Int );
	CFloat( v : Float );
	CString( v : String );
}

/**
	The untyped shader expressions, as parsed from the shader source.
**/
enum ExprDef {
 	EConst( c : Const );
	EIdent( i : String );
	EParenthesis( e : Expr );
	EField( e : Expr, f : String );
	EBinop( op : Binop, e1 : Expr, e2 : Expr );
	EUnop( op : Unop, e1 : Expr );
	ECall( e : Expr, args : Array<Expr> );
	EBlock( el : Array<Expr> );
	EVars( v : Array<VarDecl> );
	EFunction( f : FunDecl );
	EIf( econd : Expr, eif : Expr, eelse : Null<Expr> );
	EDiscard;
	EFor( v : String, loop : Expr, block : Expr );
	EReturn( ?e : Expr );
	EBreak;
	EContinue;
	EArray( e : Expr, eindex : Expr );
	EArrayDecl( el : Array<Expr> );
	ESwitch( e : Expr, cases : Array<{ values : Array<Expr>, expr:Expr }>, def : Null<Expr> );
	EWhile( cond : Expr, loop : Expr, normalWhile : Bool );
	EMeta( name : String, args : Array<Expr>, e : Expr );
}

/**
	The typed shader expressions, produced by `hxsl.Checker`.
**/
enum TExprDef {
	TConst( c : Const );
	TVar( v : TVar );
	TGlobal( g : TGlobal );
	TParenthesis( e : TExpr );
	TBlock( el : Array<TExpr> );
	TBinop( op : Binop, e1 : TExpr, e2 : TExpr );
	TUnop( op : Unop, e1 : TExpr );
	TVarDecl( v : TVar, ?init : TExpr );
	TCall( e : TExpr, args : Array<TExpr> );
	TSwiz( e : TExpr, regs : Array<Component> );
	TIf( econd : TExpr, eif : TExpr, eelse : Null<TExpr> );
	TDiscard;
	TReturn( ?e : TExpr );
	TFor( v : TVar, it : TExpr, loop : TExpr );
	TContinue;
	TBreak;
	TArray( e : TExpr, index : TExpr );
	TArrayDecl( el : Array<TExpr> );
	TSwitch( e : TExpr, cases : Array<{ values : Array<TExpr>, expr:TExpr }>, def : Null<TExpr> );
	TWhile( e : TExpr, loop : TExpr, normalWhile : Bool );
	TMeta( m : String, args : Array<Const>, e : TExpr );
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
	Radians;
	Degrees;
	Sin;
	Cos;
	Tan;
	Asin;
	Acos;
	Atan;
	Pow;
	Exp;
	Log;
	Exp2;
	Log2;
	Sqrt;
	Inversesqrt;
	Abs;
	Sign;
	Floor;
	Ceil;
	Fract;
	Mod;
	Min;
	Max;
	Clamp;
	Mix;
	InvLerp;
	Step;
	Smoothstep;
	Length;
	Distance;
	Dot;
	Cross;
	Normalize;
	//Faceforward;
	LReflect;
	//Refract;
	//MatrixCompMult;
	//Any;
	//All;
	Texture;
	TextureLod;
	Texel;
	TextureSize;
	// ...other texture* operations
	// constructors
	ToInt;
	ToFloat;
	ToBool;
	Vec2;
	Vec3;
	Vec4;
	IVec2;
	IVec3;
	IVec4;
	BVec2;
	BVec3;
	BVec4;
	Mat2;
	Mat3;
	Mat4;
	// extra (not in GLSL ES)
	Mat3x4;
	Saturate;
	Pack;
	Unpack;
	PackNormal;
	UnpackNormal;
	ScreenToUv;
	UvToScreen;
	// extensions
	DFdx;
	DFdy;
	Fwidth;
	// debug / internal
	ChannelRead;
	ChannelReadLod;
	ChannelFetch;
	ChannelTextureSize;
	Trace;
	// instancing
	VertexID;
	InstanceID;
	// gl globals
	FragCoord;
	FrontFacing;
	// dx12 barycentrics
	Barycentrics;
	VertexAt;
	// bit casting
	FloatBitsToInt;
	FloatBitsToUint;
	IntBitsToFloat;
	UintBitsToFloat;
	RoundEven;
	// compute
	SetLayout;
	ImageStore;
	ComputeVar_GlobalInvocation;
	ComputeVar_LocalInvocation;
	ComputeVar_WorkGroup;
	ComputeVar_LocalInvocationIndex;
	//ComputeVar_NumWorkGroups - no DirectX support
	//ComputeVar_WorkGroupSize - no DirectX support
	AtomicAdd;
	GroupMemoryBarrier;
	UnpackSnorm4x8;
	UnpackUnorm4x8;
	Transpose;
	TexelLod;
	ResolveSampler;
	ResolveBuffer;
	FindLSB;
	FindMSB;
	AtomicAnd;
	AtomicOr;
	BitCount;
	ToUInt;
}

/**
	How a raw code (`TSyntax`) argument is accessed.
**/
enum SyntaxArgAccess {
	Read;
	Write;
	ReadWrite;
}

/**
	An argument of a raw code expression (`TSyntax`).
**/
typedef SyntaxArg = {
	e: TExpr,
	access: SyntaxArgAccess,
}

/**
	A vector component, for swizzling.
**/
enum Component {
	X;
	Y;
	Z;
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
