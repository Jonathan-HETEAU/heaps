package h3d.parts;

/**
	A collision handler for the particles of an `Emitter` (see `Emitter.collider` and `State.collide`).
**/
interface Collider {

	/**
		Tells if the particle `p` collides, and if so stores the surface normal in `normal`.
	**/
	public function collidePart( p : Particle, normal : h3d.Vector ) : Bool;

}