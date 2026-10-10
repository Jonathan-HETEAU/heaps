package hxd.clipper;

/**
	The boolean operation of `Clipper.execute`, between the subject and the clip polygons.
**/
enum ClipType {
	Intersection;
	Union;
	Difference;
	Xor;
}
