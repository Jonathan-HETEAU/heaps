package hxd.fmt.tiff;

/**
	The TIFF tags read and written.
**/
enum abstract TifTag(Int) {
	/** The width of the image. **/
	public var ImageWidth = 256;
	/** The height of the image. **/
	public var ImageHeight = 257;
	/** The number of bits per channel. **/
	public var BitsPerSample = 258;
	/** The compression (`1` for none). **/
	public var Compression = 259;
	/** The color space of the image. **/
	public var PhotometricInterpretation = 262;
	/** The positions of the data strips. **/
	public var StripOffsets = 273;
	/** The orientation of the image. **/
	public var Orientation = 274;
	/** The number of channels. **/
	public var SamplesPerPixel = 277;
	/** The number of rows per data strip. **/
	public var RowsPerStrip = 278;
	/** The sizes of the data strips. **/
	public var StripByteCounts = 279;
	/** How the channels are stored (`1` for interleaved). **/
	public var PlanarConfiguration = 284;
	/** The format of the channels (`1` unsigned, `2` signed, `3` float). **/
	public var SampleFormat = 339;
	/** The size of a pixel in the GeoTIFF model space. **/
	public var ModelPixelScale = 33550;
	/** The GeoTIFF tie points between the image and the model space. **/
	public var ModelTiepoint = 33922;
	/** The GeoTIFF keys. **/
	public var GeoKeyDirectory = 34735;
	/** The GeoTIFF float parameters. **/
	public var GeoDoubleParams = 34736;
	/** The GeoTIFF text parameters. **/
	public var GeoAsciiParams = 34737;
	/**
		Creates a tag from its value.
	**/
	public inline function new(v) {
		this = v;
	}
	/**
		Returns the value of the tag.
	**/
	public inline function toInt() return this;
}

/**
	The types of the TIFF tag values.
**/
enum abstract TifType(Int) {
	/** An unsigned 8 bits integer. **/
	public var Byte = 1;
	/** An ASCII character. **/
	public var Ascii = 2;
	/** An unsigned 16 bits integer. **/
	public var Short = 3;
	/** An unsigned 32 bits integer. **/
	public var Long = 4;
	/** Two unsigned 32 bits integers (numerator and denominator). **/
	public var Rational = 5;
	/** A signed 8 bits integer. **/
	public var SByte = 6;
	/** A byte of undefined type. **/
	public var UndefByte = 7;
	/** A signed 16 bits integer. **/
	public var SShort = 8;
	/** A signed 32 bits integer. **/
	public var SLong = 9;
	/** Two signed 32 bits integers (numerator and denominator). **/
	public var SRational = 10;
	/** A 32 bits float. **/
	public var Float = 11;
	/** A 64 bits float. **/
	public var Double = 12;
	/**
		Creates a type from its value.
	**/
	public inline function new(v) {
		this = v;
	}
	/**
		Returns the value of the type.
	**/
	public inline function toInt() return this;


	/**
		Returns the size of a value of the type, in bytes.
	**/
	public function getSize() {
		return switch( new TifType(this) ) {
		case Byte, Ascii, SByte, UndefByte: 1;
		case Short, SShort: 2;
		case Long, SLong, Float: 4;
		case Rational, SRational, Double: 8;
		default: throw "assert";
		}
	}

}

/**
	A TIFF tag value.
**/
enum TifValue {
	/**
		An integer.
	**/
	VInt( v : Int );
	/**
		A float.
	**/
	VFloat( v : Float );
	/**
		A string.
	**/
	VString( s : String );
	/**
		An array of values.
	**/
	VArray( a : Array<TifValue> );
}

/**
	The content of a TIFF file: its tags and its strips of data.
**/
typedef TifFile = {
	/**
		The tags of the image.
	**/
	var tags : Array<{ tag : TifTag, type : TifType, value : TifValue }>;
	/**
		The strips of image data.
	**/
	var data : Array<haxe.io.Bytes>;
}

/**
	Helpers to read the tags of a TIFF file.
**/
class Utils {

	/**
		Returns the value of the tag, or `null`.
	**/
	public static function get( f : TifFile, tag : TifTag ) {
		for( t in f.tags )
			if( t.tag == tag )
				return t.value;
		return null;
	}

	/**
		Returns the value of the tag as an integer, or `null`.
	**/
	public static function getInt( f : TifFile, tag : TifTag ) : Null<Int> {
		var v = get(f, tag);
		if( v == null ) return null;
		return switch( v ) {
		case VInt(v): v;
		case VFloat(f): Std.int(f);
		default: throw "assert";
		}
	}

}