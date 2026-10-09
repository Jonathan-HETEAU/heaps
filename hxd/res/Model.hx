package hxd.res;

/**
	A 3D model file. FBX files are converted to the HMD format when the resources are built.
**/
class Model extends Resource {

	/**
		Reads the header of the HMD file and returns the library to create its objects and animations.
	**/
	public function toHmd() : hxd.fmt.hmd.Library {
		var fs = entry.open();
		var hmd = new hxd.fmt.hmd.Reader(fs).readHeader(#if editor true #end);
		fs.close();
		return new hxd.fmt.hmd.Library(this, hmd);
	}

}