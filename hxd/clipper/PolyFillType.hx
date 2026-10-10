package hxd.clipper;

/**
	The filling rule deciding which regions are inside the polygons, from their winding numbers.
**/
enum PolyFillType {
	EvenOdd;
	NonZero;
	Positive;
	Negative;
}
