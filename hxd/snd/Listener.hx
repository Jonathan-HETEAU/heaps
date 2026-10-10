package hxd.snd;

/**
	The position and orientation of the listener of spatialized sounds (see `hxd.snd.effect.Spatialization`). Accessed with `Manager.listener`.
**/
class Listener {

	/**
		The position of the listener.
	**/
	public var position : h3d.Vector;
	/**
		The direction the listener is facing (`+X` by default).
	**/
	public var direction : h3d.Vector;
	/**
		The velocity of the listener, for the Doppler effect.
	**/
	public var velocity : h3d.Vector;
	/**
		The up direction of the listener (`+Z` by default).
	**/
	public var up  : h3d.Vector;

	/**
		Creates a listener at the origin.
	**/
	public function new() {
		position = new h3d.Vector();
		velocity = new h3d.Vector();
		direction = new h3d.Vector(1,  0, 0);
		up = new h3d.Vector(0,  0,  1);
	}

	/**
		Sets the position and orientation of the listener from the camera.
	**/
	public function syncCamera( cam : h3d.Camera ) {
		position.load(cam.pos);
		direction.set(cam.target.x - cam.pos.x, cam.target.y - cam.pos.y, cam.target.z - cam.pos.z);
		direction.normalize();
		up.load(cam.up);
	}

}
