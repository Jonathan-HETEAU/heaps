package hxd.clipper;

/**
	How the corners are joined by `ClipperOffset`: square, round or mitered.
**/
enum JoinType {
	/**
		Squared corners.
	**/
	Square;
	/**
		Rounded corners.
	**/
	Round;
	/**
		Mitered (sharp) corners, limited by the miter limit.
	**/
	Miter;
}
