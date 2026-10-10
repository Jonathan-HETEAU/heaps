package hxd.clipper;

/**
	The filling rule deciding which regions are inside the polygons, from their winding numbers.
**/
enum PolyFillType {
	/**
		Inside when the winding number is odd.
	**/
	EvenOdd;
	/**
		Inside when the winding number is not zero.
	**/
	NonZero;
	/**
		Inside when the winding number is positive.
	**/
	Positive;
	/**
		Inside when the winding number is negative.
	**/
	Negative;
}
