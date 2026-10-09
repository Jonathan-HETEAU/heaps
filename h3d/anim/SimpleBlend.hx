package h3d.anim;

/**
	Plays two animations at once on different parts of a skeleton (for instance the legs from a walk animation and the
	upper body from an attack animation).
**/
class SimpleBlend extends Transition {

	/**
		The objects (or joints) animated by `anim2`: the objects mapped to `true` take `anim2`, the others take `anim1`.
	**/
	public var objectsMap : Map<String,Bool>;

	/**
		Creates a blend of two animation instances. See `objectsMap`.
	**/
	public function new( anim1 : Animation, anim2 : Animation, objects : Map < String, Bool > ) {
		super("blend", anim1, anim2);
		this.objectsMap = objects;
		if( anim1.isInstance && anim2.isInstance )
			setupInstance();
	}

	function setupInstance() {
		for( o in anim1.objects.copy() )
			if( objectsMap.get(o.objectName) )
				anim1.unbind(o.objectName);
		for( o in anim2.objects.copy() )
			if( !objectsMap.get(o.objectName) )
				anim2.unbind(o.objectName);
		objects = [];
		objects = objects.concat(anim1.getObjects());
		objects = objects.concat(anim2.getObjects());
		isInstance = true;
	}

	override function sync( decompose : Bool = false ) {
		if ( !decompose )
			super.sync(false);
		else {
			// decompose is naturally supported
			anim1.isSync = anim2.isSync = false;
			anim1.sync(true);
			anim2.sync(true);
		}
	}

	override function clone(?a : Animation) : Animation {
		var a : SimpleBlend = cast a;
		if( a == null )
			a = new SimpleBlend(anim1, anim2, objectsMap);
		super.clone(a);
		a.objectsMap = objectsMap;
		return a;
	}

	override function createInstance( base ) {
		return new SimpleBlend(anim1.createInstance(base), anim2.createInstance(base), objectsMap);
	}

}