package hxd.res;

/**
	Options for embedding resources in the application.
**/
typedef EmbedOptions = {
	/**
		The file system configuration used to convert the files (see `hxd.fs.LocalFileSystem`).
	**/
	?configuration : String,
	/**
		The characters to include when embedding fonts.
	**/
	?fontsChars : String,
}