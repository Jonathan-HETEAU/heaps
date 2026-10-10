package hxd.clipper;

/**
	How the ends of the paths are handled by `ClipperOffset`: closed polygons, closed lines, or open paths with butt, square or round ends.
**/
enum EndType {
	ClosedPol;
	ClosedLine;
	OpenButt;
	OpenSquare;
	OpenRound;
}
