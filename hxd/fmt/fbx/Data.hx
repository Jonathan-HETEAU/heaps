package hxd.fmt.fbx;

/**
	A property value of a FBX node.
**/
enum FbxProp {
	/**
		An integer.
	**/
	PInt( v : Int );
	/**
		A float.
	**/
	PFloat( v : Float );
	/**
		A string.
	**/
	PString( v : String );
	/**
		An identifier (unquoted in the text format).
	**/
	PIdent( i : String );
	/**
		An array of integers.
	**/
	PInts( v : Array<Int> );
	/**
		An array of floats.
	**/
	PFloats( v : Array<Float> );
	/**
		Raw binary data.
	**/
	PBinary( v : haxe.io.Bytes );
}

/**
	A node of a FBX file: its name, properties and children.
**/
typedef FbxNode = {
	/**
		The name of the node.
	**/
	var name : String;
	/**
		The property values of the node.
	**/
	var props : Array<FbxProp>;
	/**
		The children nodes.
	**/
	var childs : Array<FbxNode>;
}

/**
	Helpers to read FBX nodes.
**/
class FbxTools {

	/**
		Returns the descendant node at the path (node names separated by dots). Throws if not found, unless `opt` is set.
	**/
	public static function get( n : FbxNode, path : String, opt = false ) {
		var parts = path.split(".");
		var cur = n;
		for( p in parts ) {
			var found = false;
			for( c in cur.childs )
				if( c.name == p ) {
					cur = c;
					found = true;
					break;
				}
			if( !found ) {
				if( opt )
					return null;
				throw n.name + " does not have " + path+" ("+p+" not found)";
			}
		}
		return cur;
	}

	/**
		Returns all the descendant nodes at the path.
	**/
	public static function getAll( n : FbxNode, path : String ) {
		var parts = path.split(".");
		var cur = [n];
		for( p in parts ) {
			var out = [];
			for( n in cur )
				for( c in n.childs )
					if( c.name == p )
						out.push(c);
			cur = out;
			if( cur.length == 0 )
				return cur;
		}
		return cur;
	}

	/**
		Returns the integer array of the node.
	**/
	public static function getInts( n : FbxNode ) {
		if( n.props.length != 1 )
			throw n.name + " has " + n.props + " props";
		switch( n.props[0] ) {
		case PInts(v):
			return v;
		default:
			throw n.name + " has " + n.props + " props";
		}
	}

	/**
		Returns the float array of the node (converting an integer array).
	**/
	public static function getFloats( n : FbxNode ) {
		if( n.props.length != 1 )
			throw n.name + " has " + n.props + " props";
		switch( n.props[0] ) {
		case PFloats(v):
			return v;
		case PInts(i):
			var fl = new Array<Float>();
			for( x in i )
				fl.push(x);
			n.props[0] = PFloats(fl); // keep data synchronized
			// this is necessary for merging geometries since we are pushing directly into the
			// float buffer
			return fl;
		default:
			throw n.name + " has " + n.props + " props";
		}
	}

	/**
		Tells if the node has the property.
	**/
	public static function hasProp( n : FbxNode, p : FbxProp ) {
		for( p2 in n.props )
			if( Type.enumEq(p, p2) )
				return true;
		return false;
	}

	static function idToInt( f : Float ) {
		// ids are unsigned and can be out of int range
		f %= 4294967296.;
		if( f >= 2147483648. )
			f -= 4294967296.;
		else if( f < -2147483648. )
			f += 4294967296.;
		return Std.int(f);
	}

	/**
		Returns the property as an integer.
	**/
	public static function toInt( n : FbxProp ) {
		if( n == null ) throw "null prop";
		return switch( n ) {
		case PInt(v): v;
		case PFloat(f): idToInt(f);
		default: throw "Invalid prop " + n;
		}
	}

	/**
		Returns the property as a float.
	**/
	public static function toFloat( n : FbxProp ) {
		if( n == null ) throw "null prop";
		return switch( n ) {
		case PInt(v): v * 1.0;
		case PFloat(v): v;
		default: throw "Invalid prop " + n;
		}
	}

	/**
		Returns the property as a string.
	**/
	public static function toString( n : FbxProp ) {
		if( n == null ) throw "null prop";
		return switch( n ) {
		case PString(v): v;
		default: throw "Invalid prop " + n;
		}
	}

	/**
		Returns the property as bytes.
	**/
	public static function toBinary( n : FbxProp ) {
		if ( n == null ) throw "null prop";
		return switch( n ) {
		case PBinary(v): v;
		default: throw "Invalid prop " + n;
		}
	}

	/**
		Returns the identifier of the object node.
	**/
	public static function getId( n : FbxNode ) {
		if( n.props.length != 3 )
			throw n.name + " is not an object";
		return switch( n.props[0] ) {
		case PInt(id): id;
		case PFloat(id) : idToInt(id);
		default: throw n.name + " is not an object " + n.props;
		}
	}

	/**
		Returns the name of the object node (without its class prefix, with dots replaced by `_`).
	**/
	public static function getName( n : FbxNode ) {
		if( n.props.length != 3 )
			throw n.name + " is not an object";
		return switch( n.props[1] ) {
		case PString(n): {
			var str = n.split("::").pop();
			str.split(".").join("_");
		};
		default: throw n.name + " is not an object";
		}
	}

	/**
		Returns the type of the object node.
	**/
	public static function getType( n : FbxNode ) {
		if( n.props.length != 3 )
			throw n.name + " is not an object";
		return switch( n.props[2] ) {
		case PString(n): n;
		default: throw n.name + " is not an object";
		}
	}

}