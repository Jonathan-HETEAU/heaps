package hxd.clipper;

/**
	How the ends of the paths are handled by `ClipperOffset`: closed polygons, closed lines, or open paths with butt, square or round ends.
**/
enum EndType {
	/**
		The paths are closed polygons: both sides are offset.
	**/
	ClosedPol;
	/**
		The paths are closed lines: offset as an outline.
	**/
	ClosedLine;
	/**
		Open paths with ends squared off at the end points.
	**/
	OpenButt;
	/**
		Open paths with ends squared off, extended by the offset.
	**/
	OpenSquare;
	/**
		Open paths with round ends.
	**/
	OpenRound;
}
