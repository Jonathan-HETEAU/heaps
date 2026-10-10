package hxd.fmt.pak;
import hxd.fmt.pak.Data;

/**
	Writes a `.pak` archive.
**/
class Writer {

	var o : haxe.io.Output;
	var align : Int = 0;

	/**
		Creates a writer for the output, aligning the files data to `align` bytes if set.
	**/
	public function new(o, ?align) {
		this.o = o;
		this.align = align;
	}

	/**
		Writes the header of a file.
	**/
	public function writeFile( f : File ) {
		o.writeByte(f.name.length);
		o.writeString(f.name);
		var flags = 0;
		if( f.isDirectory ) flags |= 1;
		var p = Std.int(f.dataPosition);
		if( p != f.dataPosition ) flags |= 2;
		o.writeByte(flags);
		if( f.isDirectory ) {
			o.writeInt32(f.content.length);
			for( f in f.content )
				writeFile(f);
		} else {
			if( p == f.dataPosition )
				o.writeInt32(p);
			else
				o.writeDouble(f.dataPosition);
			o.writeInt32(f.dataSize);
			o.writeInt32(f.checksum);
		}
	}

	function addPadding( pos : Int ) {
		var padLen = align - pos % align;
		for (i in 0...padLen) {
			o.writeByte(0);
		}

	}

	/**
		Writes the header and the data of the archive (the data is in `content`, or in `arrayContent` by file).
	**/
	public function write( pak : Data, content : haxe.io.Bytes, ?arrayContent : Array<haxe.io.Bytes> ) {

		if( arrayContent != null ) {
			pak.dataSize = 0;
			for( b in arrayContent ) {
				pak.dataSize += b.length;
				if (align > 1)
					pak.dataSize += align - b.length % align;
			}
		} else
			pak.dataSize = content.length;

		var header = new haxe.io.BytesOutput();
		new Writer(header).writeFile(pak.root);
		var header = header.getBytes();
		pak.headerSize = header.length + 16;
		if (align > 1)
			pak.headerSize += align - pak.headerSize % align;

		o.writeString("PAK");
		o.writeByte(pak.version);
		o.writeInt32(pak.headerSize);
		o.writeInt32(pak.dataSize);
		o.write(header);
		if (align > 1) addPadding(header.length + 16); // Align for end of DATA
		o.writeString("DATA");
		if( arrayContent != null ) {
			for( b in arrayContent ) {
				o.write(b);
				if (align > 1) addPadding(b.length);
			}
		} else
			o.write(content);
	}

}

