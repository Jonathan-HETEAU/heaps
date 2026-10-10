package hxd.clipper;

/**
	The boolean operation of `Clipper.execute`, between the subject and the clip polygons.
**/
enum ClipType {
	/**
		The regions inside both the subject and the clip.
	**/
	Intersection;
	/**
		The regions inside the subject or the clip.
	**/
	Union;
	/**
		The regions inside the subject but not the clip.
	**/
	Difference;
	/**
		The regions inside the subject or the clip, but not both.
	**/
	Xor;
}
