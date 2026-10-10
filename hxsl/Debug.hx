package hxsl;

/**
	Debug helpers of the shader compiler.
**/
class Debug {

	/**
		If set, the variable names are printed with their identifier (`-D shader_debug_var_ids`).
	**/
	public static var VAR_IDS = #if shader_debug_var_ids true #else false #end;
	/**
		If set, the compiler traces its steps (`-D shader_debug_dump`).
	**/
	public static var TRACE = #if shader_debug_dump true #else false #end;

	/**
		Traces the string if `TRACE` is set.
	**/
	public static macro function trace(str) {
		return macro if( hxsl.Debug.TRACE ) trace($str);
	}

	/**
		Returns the name of the variable, with the swizzled components if `swizBits` is not `15` (all of them).
	**/
	public static function varName( v : Ast.TVar, swizBits = 15 ) {
		var name = v.name;
		if( swizBits != 15 ) name += swizStr(swizBits);
		return VAR_IDS ? name+"@"+v.id : name;
	}

	static function swizStr( bits : Int ) {
		var str = ".";
		if( bits & 1 != 0 ) str += "x";
		if( bits & 2 != 0 ) str += "y";
		if( bits & 4 != 0 ) str += "z";
		if( bits & 8 != 0 ) str += "w";
		return str;
	}

	/**
		Traces the string indented by the current depth, if `TRACE` is set.
	**/
	public static macro function traceDepth(str) {
		return macro if( hxsl.Debug.TRACE ) {
			var msg = $str;
			for( i in 0...debugDepth ) msg = "    " + msg;
			trace(msg);
		};
	}

}