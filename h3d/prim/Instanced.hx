package h3d.prim;

/**
	A primitive drawing many instances of a `MeshPrimitive` in a single draw call (used by `h3d.scene.MeshBatch`).
**/
class Instanced extends Primitive {

	/**
		The draw commands: number of instances and index ranges.
	**/
	public var commands : h3d.impl.InstanceBuffer;
	/**
		The bounds of all the instances, used for culling.
	**/
	public var bounds : h3d.col.Bounds;
	var baseBounds : h3d.col.Bounds;
	var tmpBounds : h3d.col.Bounds;
	var primitive : MeshPrimitive;

	/**
		Creates an instanced primitive. Call `setMesh` before using it.
	**/
	public function new() {
		bounds = new h3d.col.Bounds();
		bounds.addPos(0,0,0); // if not init
		tmpBounds = new h3d.col.Bounds();
	}

	/**
		Sets the primitive drawn by each instance.
	**/
	public function setMesh( m : MeshPrimitive ) {
		if( refCount > 0 ) {
			if( primitive != null )
				primitive.decref();
			m.incref();
		}
		primitive = m;
		baseBounds = m.getBounds();
		if( m.buffer == null || m.indexes == null )
			m.alloc(h3d.Engine.getCurrent()); // make sure first alloc is done
	}

	/**
		Empties the bounds before adding the bounds of the instances.
	**/
	public function initBounds() {
		bounds.empty();
	}

	/**
		Adds the bounds of an instance with the given transform.
	**/
	public inline function addInstanceBounds( absPos : h3d.Matrix ) {
		tmpBounds.load(baseBounds);
		tmpBounds.transform(absPos);
		bounds.add(tmpBounds);
	}

	override function dispose() {
		// Not owning any buffer
	}

	override function incref() {
		if(refCount == 0 && primitive != null)
			primitive.incref();
		super.incref();
	}

	override function decref() {
		super.decref();
		if(refCount == 0 && primitive != null)
			primitive.decref();
	}

	override function getBounds():h3d.col.Bounds {
		return bounds;
	}

	override function screenRatioToLod( screenRatio : Float ) {
		return primitive.screenRatioToLod(screenRatio);
	}

	/**
		Sets the draw command drawing `count` instances of the given material group and level of detail.
	**/
	public function setCommand( material : Int, lod : Int, count : Int ) {
		if ( lod > primitive.lodCount() - 1) {
			commands.setCommand(0, 0, 0);
			return;
		}
		commands.setCommand(count, primitive.getMaterialIndexCount(material, lod), primitive.getMaterialIndexStart(material, lod));
	}

	override function render( engine : h3d.Engine ) {
		if( primitive.buffer == null || primitive.buffer.isDisposed() )
			primitive.alloc(engine);
		@:privateAccess engine.flushTarget();
		@:privateAccess if( primitive.buffers == null )
			engine.driver.selectBuffer(primitive.buffer);
		else
			engine.driver.selectMultiBuffers(primitive.formats,primitive.buffers);
		var indexes = primitive.indexes;
		if( indexes == null )
			indexes = engine.mem.getTriIndexes(triCount() * 3);
		engine.renderInstanced(indexes,commands);
	}

}