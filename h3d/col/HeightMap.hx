package h3d.col;

/**
	This is an helper class to define a heightmap-based collider.
	In order to use, you need to extends this class and override the getZ method
	in order to return appropriate Z value based on X and Y coordinates.
**/
abstract class HeightMap extends Collider {

	/**
		When performing raycast check, tells by how much step we advance.
		If this is too small, raycast check will be too expensive.
		If this is too big, we might step through a hip without noticing.
		Default : 1.0
	**/
	public var step : Float = 1.0;

	/**
		Tells which precision is required for the result.
		We will iterate until we have reach the given precision.
	**/
	public var precision : Float = 1e-2;

	/**
		Returns the height value at given coordinates.
	**/
	abstract function getZ( x : Float, y : Float ) : Float;

	/**
		Tells if the point `pt` is under the height map surface.
	**/
	public inline function contains( pt : Point ) : Bool {
		return getZ(pt.x, pt.y) > pt.z;
	}

	/**
		Tells if the shape intersects the frustum `f`, optionally transformed by `localMatrix`.
	**/
	public function inFrustum( f : Frustum, ?m : h3d.Matrix) : Bool {
		throw "Not implemented : is infinite";
	}

	/**
		Tells if the shape intersects the sphere `s`.
	**/
	public function inSphere( s : Sphere ) : Bool {
		throw "Not implemented : is infinite";
	}

	/**
		Returns the point of the shape closest to `p`.
	**/
	public function closestPoint( sp : Point ) : Point {
		throw "Not implemented";
	}

	/**
		Returns the distance along the ray `r` to the first intersection with the shape, or a negative value if there is none.
		If `bestMatch` is `false`, any intersection can be returned (faster).
	**/
	public function rayIntersection( r : Ray, bestMatch : Bool ) : Float {
		var px = r.px, py = r.py, pz = r.pz;
		var lx = r.lx, ly = r.ly, lz = r.lz;

		// if we are looking up or almost razing, consider out
		if( lz >= -precision )
			return -1;

		// if we are already under the heightmap, consider out
		var hprev = getZ(px,py);
		if( hprev > pz )
			return -1;

		var dist = step;
		while( true ) {
			var x = px + lx * dist;
			var y = py + ly * dist;
			var z = pz + lz * dist;
			var h = getZ(x,y);
			if( h > z ) {
				// if( !bestMatch ) : TODO : calculate immediate approx
				break;
			}
			hprev = h;
			dist += step;
		}

		var dmin = dist - step;
		var dmax = dist;
		var prec = precision;
		while( true ) {
			var d = (dmin + dmax) * 0.5;
			if( dmax - dmin < prec ) return d;
			var x = px + lx * dist;
			var y = py + ly * dist;
			var z = pz + lz * dist;
			var h = getZ(x,y);
			if( h > z ) {
				dmax = d;
			} else {
				dmin = d;
			}
		}
	}

	#if !macro
	/**
		Creates an object displaying the shape (debug), or `null` if not supported.
	**/
	public function makeDebugObj() : h3d.scene.Object {
		return null;
	}
	#end
}