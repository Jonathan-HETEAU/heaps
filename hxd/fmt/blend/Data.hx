package hxd.fmt.blend;



/**
	Reads the data structures of a Blender file (`.blend`, uncompressed), using its embedded DNA description. Ported from https://github.com/armory3d/blend.
**/
class Blend {

	/**
		The current read position.
	**/
	public var pos:Int;
	var bytes: haxe.io.Bytes;

	// Header
	/**
		The Blender version that saved the file.
	**/
	public var version:String;
	/**
		The size of the pointers, in bytes (4 or 8).
	**/
	public var pointerSize:Int;
	/**
		Tells if the data is little endian.
	**/
	public var littleEndian:Bool;
	/**
		The data blocks of the file.
	**/
	public var blocks:Array<Block> = [];
	/**
		The description of the data structures.
	**/
	public var dna:Dna;

	/**
		Parses the file data (compressed files are not supported).
	**/
	public function new(bytes: haxe.io.Bytes) {
		this.bytes = bytes;
		this.pos = 0;

		if (readChars(7) == 'BLENDER') parse();
		// else decompress();
	}

	/**
		Returns the declarations of the fields of the structure type, or `null` if the type is unknown.
	**/
	public function dir(type:String):Array<String> {
		// Return structure fields
		var typeIndex = getTypeIndex(dna, type);
		if (typeIndex == -1) return null;
		var ds = getStruct(dna, typeIndex);
		var fields:Array<String> = [];
		for (i in 0...ds.fieldNames.length) {
			var nameIndex = ds.fieldNames[i];
			var typeIndex = ds.fieldTypes[i];
			fields.push(dna.types[typeIndex] + ' ' + dna.names[nameIndex]);
		}
		return fields;
	}

	/**
		Returns handles on all the structures of the type, or `null` if the type is unknown.
	**/
	public function get(type:String):Array<Handle> {
		// Return all structures of type
		var typeIndex = getTypeIndex(dna, type);
		if (typeIndex == -1) return null;
		var ds = getStruct(dna, typeIndex);
		var handles:Array<Handle> = [];
		for (b in blocks) {
			if (dna.structs[b.sdnaIndex].type == typeIndex) {
				var h = new Handle();
				handles.push(h);
				h.block = b;
				h.ds = ds;
			}
		}
		return handles;
	}

	/**
		Returns the structure description of the type index.
	**/
	public static function getStruct(dna:Dna, typeIndex:Int):DnaStruct {
		for (ds in dna.structs) if (ds.type == typeIndex) return ds;
		return null;
	}

	/**
		Returns the index of the type name, or `-1`.
	**/
	public static function getTypeIndex(dna:Dna, type:String):Int {
		for (i in 0...dna.types.length) if (type == dna.types[i]) { return i; }
		return -1;
	}

	function parse() {

		// Pointer size: _ 32bit, - 64bit
		pointerSize = readChar() == '_' ? 4 : 8;

		// v - little endian, V - big endian
		littleEndian = readChar() == 'v';
		if (littleEndian) {
			read16 = read16LE;
			read32 = read32LE;
		}
		else {
			read16 = read16BE;
			read32 = read32BE;
		}

		version = readChars(3);

		// Reading file blocks
		// Header - data
		while (pos < bytes.length) {

			align();

			var b = new Block();

			// Block type
			b.code = readChars(4);

			if (b.code == 'ENDB') break;

			blocks.push(b);
			b.blend = this;

			// Total block length
			b.size = read32();

			// var addr;
			pos += pointerSize;

			// Index of dna struct contained in this block
			b.sdnaIndex = read32();

			// Number of dna structs in this block
			b.count = read32();

			b.pos = pos;

			// This block stores dna structures
			if (b.code == 'DNA1') {
				dna = new Dna();

				var id = readChars(4); // SDNA
				var nameId = readChars(4); // NAME
				var namesCount = read32();
				for (i in 0...namesCount) {
					dna.names.push(readString());
				}
				align();


				var typeId = readChars(4); // TYPE
				var typesCount = read32();
				for (i in 0...typesCount) {
					dna.types.push(readString());
				}
				align();


				var lenId = readChars(4); // TLEN
				for (i in 0...typesCount) {
					dna.typesLength.push(read16());
				}
				align();


				var structId = readChars(4); // STRC
				var structCount = read32();
				for (i in 0...structCount) {
					var ds = new DnaStruct();
					dna.structs.push(ds);
					ds.dna = dna;
					ds.type = read16();
					var fieldCount = read16();
					if (fieldCount > 0) {
						ds.fieldTypes = [];
						ds.fieldNames = [];
						for (j in 0...fieldCount) {
							ds.fieldTypes.push(read16());
							ds.fieldNames.push(read16());
						}
					}
				}
			}
			else {
				pos += b.size;
			}
		}
	}

	function align() {
		// 4 bytes aligned
		var mod = pos % 4;
		if (mod > 0) pos += 4 - mod;
	}

	/**
		Reads a byte.
	**/
	public function read8():Int {
		var i = bytes.get(pos);
		pos += 1;
		return i;
	}

	/**
		Reads a 16 bits integer, with the endianness of the file.
	**/
	public var read16:Void->Int;
	/**
		Reads a 32 bits integer, with the endianness of the file.
	**/
	public var read32:Void->Int;

	function read16LE():Int {
        var first = bytes.get(pos + 0);
		var second  = bytes.get(pos + 1);
		var sign = (second & 0x80) == 0 ? 1 : -1;
		second = second & 0x7F;
		pos += 2;
		if (sign == -1) return -0x7fff + second * 256 + first;
		else return second * 256 + first;
	}

	function read32LE():Int {
		var fourth = bytes.get(pos + 0);
		var third  = bytes.get(pos + 1);
		var second = bytes.get(pos + 2);
		var first  = bytes.get(pos + 3);
		var sign = (first & 0x80) == 0 ? 1 : -1;
		first = first & 0x7F;
		pos += 4;
		if (sign == -1) return -0x7fffffff + fourth + third * 256 + second * 256 * 256 + first * 256 * 256 * 256;
		else return fourth + third * 256 + second * 256 * 256 + first * 256 * 256 * 256;
	}

	function read16BE():Int {
		var first = bytes.get(pos + 0);
		var second  = bytes.get(pos + 1);
		pos += 2;
		var sign = (first & 0x80) == 0 ? 1 : -1;
		first = first & 0x7F;
		if (sign == -1) return -0x7fff + first * 256 + second;
		else return first * 256 + second;
	}

	function read32BE():Int {
		var fourth = bytes.get(pos + 0);
		var third  = bytes.get(pos + 1);
		var second = bytes.get(pos + 2);
		var first  = bytes.get(pos + 3);
		var sign = (fourth & 0x80) == 0 ? 1 : -1;
		fourth = fourth & 0x7F;
		pos += 4;
		if (sign == -1) return -0x7fffffff + first + second * 256 + third * 256 * 256 + fourth * 256 * 256 * 256;
		return first + second * 256 + third * 256 * 256 + fourth * 256 * 256 * 256;
	}

	/**
		Reads a null terminated string.
	**/
	public function readString():String {
		var s = '';
		while (true) {
			var ch = read8();
			if (ch == 0) break;
			s += String.fromCharCode(ch);
		}
		return s;
	}

	/**
		Reads `len` characters.
	**/
	public function readChars(len:Int):String {
		var s = '';
		for (i in 0...len) s += readChar();
		return s;
	}

	/**
		Reads a character.
	**/
	public function readChar():String {
		return String.fromCharCode(read8());
	}
}

/**
	A data block of a Blender file.
**/
class Block {
	/**
		The file of the block.
	**/
	public var blend:Blend;
	/**
		The code of the block type.
	**/
	public var code:String;
	/**
		The size of the block data, in bytes.
	**/
	public var size:Int;
	/**
		The index of the structure contained in the block.
	**/
	public var sdnaIndex:Int;
	/**
		The number of structures in the block.
	**/
	public var count:Int;
	/**
		The position of the block data in the file.
	**/
	public var pos:Int;
	/**
		Creates a block.
	**/
	public function new() {}
}

/**
	The description of the data structures of a Blender file.
**/
class Dna {
	/**
		The field names.
	**/
	public var names:Array<String> = [];
	/**
		The type names.
	**/
	public var types:Array<String> = [];
	/**
		The size of each type, in bytes.
	**/
	public var typesLength:Array<Int> = [];
	/**
		The structure descriptions.
	**/
	public var structs:Array<DnaStruct> = [];
	/**
		Creates an empty description.
	**/
	public function new() {}
}

/**
	The description of a structure.
**/
class DnaStruct {
	/**
		The description containing the structure.
	**/
	public var dna:Dna;
	/**
		The index of the structure type in `Dna.types`.
	**/
	public var type:Int;
	/**
		The index of the type of each field in `Dna.types`.
	**/
	public var fieldTypes:Array<Int>;
	/**
		The index of the name of each field in `Dna.names`.
	**/
	public var fieldNames:Array<Int>;
	/**
		Creates a description.
	**/
	public function new() {}
}

/**
	A handle on a structure in a block, to read its fields.
**/
class Handle {
	/**
		The block containing the structure.
	**/
	public var block:Block;
	/**
		The offset of the structure in the block data.
	**/
	public var offset:Int = 0;
	/**
		The description of the structure.
	**/
	public var ds:DnaStruct;
	/**
		Creates a handle.
	**/
	public function new() {}
	function getSize(index:Int):Int {
		var nameIndex = ds.fieldNames[index];
		var typeIndex = ds.fieldTypes[index];
		var dna = ds.dna;
		var n = dna.names[nameIndex];
		var size = 0;
		if (n.indexOf('*') >= 0) size = block.blend.pointerSize;
		else size = dna.typesLength[typeIndex];
		if (n.indexOf('[') > 0) size *= Std.parseInt(n.substring(n.indexOf('[') + 1, n.indexOf(']')));
		return size;
	}
	function baseName(s:String):String {
		if (s.charAt(0) == '*') s = s.substring(1, s.length);
		if (s.charAt(s.length - 1) == ']') s = s.substring(0, s.indexOf('['));
		return s;
	}
	/**
		Returns the value of the field (a number, a string, or a handle on a structure). 64 bits values are not supported and return `0`.
	**/
	public function get(name:String):Dynamic {
		// Return raw type or structure
		var dna = ds.dna;
		for (i in 0...ds.fieldNames.length) {
			var nameIndex = ds.fieldNames[i];
			var dnaName = dna.names[nameIndex];
			if (name == baseName(dnaName)) {
				var typeIndex = ds.fieldTypes[i];
				var type = dna.types[typeIndex];
				var newOffset = offset;
				for (j in 0...i) newOffset += getSize(j);
				// Raw type
				if (typeIndex < 12) {
					var blend = block.blend;
					blend.pos = block.pos + newOffset;
					if (type == 'int') return blend.read32();
					else if (type == 'char') {
						var isString = dnaName.charAt(dnaName.length - 1) == ']';
						return isString ? blend.readString() : blend.read8();
					}
					else if (type == 'uchar') { return blend.read8(); }
					else if (type == 'short') { return blend.read16(); }
					else if (type == 'ushort') { return blend.read16(); }
					else if (type == 'long') { return blend.read32(); }
					else if (type == 'ulong') { return blend.read32(); }
					else if (type == 'float') { return blend.read32(); }
					else if (type == 'double') { return 0; } //blend.read64(); }
					else if (type == 'int64_t') { return 0; } //blend.read64(); }
					else if (type == 'uint64_t') { return 0; } //blend.read64(); }
					else if (type == 'void') { return 0; }
				}
				// Structure
				var h = new Handle();
				h.ds = Blend.getStruct(dna, typeIndex);
				h.block = block;
				h.offset = newOffset;
				return h;
			}
		}
		return null;
	}
}