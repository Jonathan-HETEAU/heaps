package hxd.res;

/**
	Options for embedding resources in the application.
**/
typedef EmbedOptions = {
	/**
		The file system configuration used to convert the files (see `hxd.fs.LocalFileSystem`).
	**/
	var ?configuration : String;
	/**
		The characters to include when embedding fonts.
	**/
	var ?fontsChars : String;
}