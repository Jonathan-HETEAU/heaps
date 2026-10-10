package hxsl;

/**
	An output value of a link shader (see `Cache.getLinkShader`).
**/
enum Output {
	/**
		A constant.
	**/
	Const( v : Float);
	/**
		The value of a variable of the given name.
	**/
	Value( v : String, ?size : Int );
	/**
		A normal packed in a color.
	**/
	PackNormal( v : Output );
	/**
		A float packed in a color.
	**/
	PackFloat( v : Output );
	/**
		A vector of 2 values.
	**/
	Vec2( a : Array<Output> );
	/**
		A vector of 3 values.
	**/
	Vec3( a : Array<Output> );
	/**
		A vector of 4 values.
	**/
	Vec4( a : Array<Output> );
	/**
		Some components of a value.
	**/
	Swiz( a : Output, swiz : Array<hxsl.Ast.Component> );
}
