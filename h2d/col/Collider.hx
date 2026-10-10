package h2d.col;

/**
	A common interface for 2D Shapes to hit-test again the mouse or a specific point in space.
**/
abstract class Collider {

	/**
		Tests if Point `p` is inside the Collider.
	**/
	public abstract function contains( p : Point ) : Bool;
	/**
		Tells if the collider intersects the circle.
	**/
	public abstract function collideCircle( c : Circle ) : Bool;
	/**
		Tells if the collider intersects the bounds.
	**/
	public abstract function collideBounds( b : Bounds ) : Bool;

}