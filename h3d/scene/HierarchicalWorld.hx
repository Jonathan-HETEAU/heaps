package h3d.scene;

/**
	The parameters of a node of a `HierarchicalWorld`. The root data is given by the user, the children data is
	derived from it when nodes are subdivided.
**/
typedef WorldData = {
	/**
		The X position of the node center, relative to its parent node.
	**/
	var x : Int;
	/**
		The Y position of the node center, relative to its parent node.
	**/
	var y : Int;
	/**
		A node is subdivided when the camera is closer (on the XY plane) than `size * subdivPow` from its center.
	**/
	var subdivPow : Float;
	/**
		The width of the square covered by the node, in world units. Each subdivision halves it.
	**/
	var size : Int;
	/**
		The depth of the node: `0` for the root.
	**/
	var depth : Int;
	/**
		The depth of the leaf nodes, which are never subdivided.
	**/
	var maxDepth : Int;
	/**
		Called when a node is created, to populate it (for instance load the content of the chunk).
		For the root node it is only called by the private `init` method, which subclasses are expected to call.
	**/
	var onCreate : HierarchicalWorld -> Void;
	/**
		The root node. Set automatically.
	**/
	var root : HierarchicalWorld;
}

/**
	A streamed world split in a quadtree of square chunks on the XY plane.

	The root node covers the whole world. Each frame, the nodes close to the camera are subdivided in 4 children
	(at most one subdivision per frame, through a loading queue), and the subdivisions of far nodes are removed.
	Use `WorldData.onCreate` to populate the nodes when they are created. Nodes can be locked to keep them loaded
	while editing.
**/
class HierarchicalWorld extends Object {

	/**
		If `true`, all the nodes are subdivided whatever the camera distance (loads the whole world).
	**/
	static public var FULL = false;
	/**
		If `true`, displays the bounds of the nodes (locked leaves are shown in red).
	**/
	static public var DEBUG = false;

	static inline final UNLOCK_COLOR = 0xFFFFFF;
	static inline final LOCK_COLOR = 0xFF0000;

	var loadingQueue : Array<h3d.scene.RenderContext -> Bool>;
	var loading : Bool = false;

	/**
		The parameters of this node.
	**/
	public var data : WorldData;
	var logicBounds : h3d.col.Bounds;
	var objectBounds : h3d.col.Bounds;
	var subdivided(default, set) = false;
	function set_subdivided(v : Bool) {
		subdivided = v;
		updateGraphics();
		return subdivided;
	}
	var debugGraphics : h3d.scene.Graphics;
	// during edition, it's necessary to lock chunks that are being modified.
	var locked(default, set) : Bool = false;
	function set_locked(v : Bool) {
		locked = v;
		updateGraphics();
		return locked;
	}
	/**
		The number of subdivision levels below this node: `0` for the leaves.
	**/
	public var level(get, never) : Int;
	public function get_level() {
		return data.maxDepth - data.depth;
	}

	function updateGraphics() {
		if ( debugGraphics == null )
			return;
		var hasLockedColor = locked && data.depth == data.maxDepth;
		var color = hasLockedColor ? LOCK_COLOR : UNLOCK_COLOR;
		var s = debugGraphics.material.mainPass.getShader(h3d.shader.FixedColor);
		s.color.setColor(color);
		debugGraphics.lineStyle(hasLockedColor ? 10.0 : 1.0, 0xFFFFFF, 1.0);
	}

	function createGraphics() {
		if ( debugGraphics != null )
			throw "??";
		var b = logicBounds.clone();
		b.transform(getAbsPos().getInverse());
		b.zMin = 0.0;
		b.zMax = 0.1;
		debugGraphics = new h3d.scene.Box(0xFFFFFF, b, false, this);
		debugGraphics.material.mainPass.setPassName("afterTonemapping");
		debugGraphics.material.shadows = false;
		debugGraphics.material.mainPass.addShader(new h3d.shader.FixedColor(UNLOCK_COLOR));
		updateGraphics();
	}

	/**
		Creates a node. Create the root with `depth = 0`: its children are then created automatically.
	**/
	public function new(parent, data : WorldData) {
		super(parent);
		this.data = data;
		this.x = data.x;
		this.y = data.y;
		calcAbsPos();
		logicBounds = new h3d.col.Bounds();
		// TBD : z bounds? Negative & positive infinity causes debug bounds bugs.
		var pseudoInfinity = 1e4;
		var halfSize = data.size >> 1;
		logicBounds.addPoint(new h3d.col.Point(-halfSize, -halfSize, -pseudoInfinity));
		logicBounds.addPoint(new h3d.col.Point(halfSize,halfSize, pseudoInfinity));
		logicBounds.transform(absPos);
		// bounds is twice larger than needed so object levels can be predicted using position and bounds only
		objectBounds = logicBounds.clone();
		objectBounds.scaleCenter(2.0);

		if ( data.depth == 0 ) {
			data.root = this;
			loadingQueue = [];
		}
		if ( data.depth != 0 && data.onCreate != null )
			data.onCreate(this);
		inheritCulled = true;
	}

	function init() {
		if ( data.depth == 0 && data.onCreate != null )
			data.onCreate(this);
	}

	final function isLeaf() {
		return data.depth == data.maxDepth;
	}

	function canSubdivide() {
		return !subdivided && !isLeaf();
	}

	function createNode(parent, data) {
		return new HierarchicalWorld(parent, data);
	}

	function subdivide(ctx : h3d.scene.RenderContext) {
		if ( subdivided || getScene() == null ) // parent has been removed during dequeuing.
			return false;
		if ( !loading && data.depth > 0 ) {
			loading = true;
			getRoot().loadingQueue.insert(0, subdivide);
			return false;
		}
		loading = false;
		if ( !locked && !isClose(ctx) )
			return false;
		subdivided = true;
		var childSize = data.size >> 1;
		for ( i in 0...2 ) {
			for ( j in 0...2 ) {
				var halfChildSize = childSize >> 1;
				var childData : WorldData = {
					size : childSize,
					subdivPow : data.subdivPow,
					x : i * childSize - halfChildSize,
					y : j * childSize - halfChildSize,
					depth : data.depth + 1,
					maxDepth : data.maxDepth,
					onCreate : data.onCreate,
					root : data.root,
				};
				var node = createNode(this, childData);
			}
		}
		return true;
	}

	function removeSubdivisions() {
		if ( !subdivided )
			return;
		subdivided = false;
		var i = children.length;
		while ( i-- > 0 ) {
			if ( Std.isOfType(children[i], HierarchicalWorld) )
				children[i].remove();
		}
	}

	function calcDist(ctx : h3d.scene.RenderContext) {
		var camPos = new h2d.col.Point(ctx.camera.pos.x, ctx.camera.pos.y);
		var chunkPos = getAbsPos().getPosition();
		return camPos.distance(new h2d.col.Point(chunkPos.x, chunkPos.y));
	}

	function isClose(ctx : h3d.scene.RenderContext) {
		return calcDist(ctx) < data.size * data.subdivPow;
	}

	override function syncRec(ctx : h3d.scene.RenderContext) {
		if ( debugGraphics == null && DEBUG ) {
			createGraphics();
		} else if ( debugGraphics != null && !DEBUG ) {
			debugGraphics.remove();
			debugGraphics = null;
		}

		culled = !objectBounds.inFrustum(ctx.camera.frustum);
		if ( !isLeaf() ) {
			var close = isClose(ctx);
			if ( FULL || close ) {
				if ( canSubdivide() && !loading )
					subdivide(ctx);
			} else if ( !locked && !close ) {
				removeSubdivisions();
			}
		}
		super.syncRec(ctx);

		if ( loadingQueue != null ) {
			while ( loadingQueue.length > 0 ) {
				var load = loadingQueue.pop();
				if ( load(ctx) )
					break;
			}
		}
	}

	override function emitRec(ctx : h3d.scene.RenderContext) {
		if ( culled )
			return;
		super.emitRec(ctx);
	}

	/**
		Returns the center of the chunk containing the world position (`x`, `y`) at the given depth (the leaf depth by default).
	**/
	public function getChunkPos(x : Float, y : Float, depth = -1) {
		var root = getRoot();
		var depth = depth;
		if ( depth < 0 )
			depth = data.maxDepth;
		var chunkSize = root.data.size >> depth;
		return new h2d.col.Point((Math.floor(x / chunkSize) + 0.5) * chunkSize,
			(Math.floor(y / chunkSize) + 0.5) * chunkSize);
	}

	/**
		Tells if the world position (`x`, `y`) is inside this node.
	**/
	public function containsAt(x : Float, y : Float) {
		return logicBounds.contains(new h3d.col.Point(x, y, 0.0));
	}

	/**
		Immediately subdivides the nodes containing the world position (`x`, `y`) down to the leaves.
		@param lock If `true`, also locks these nodes so that they are kept whatever the camera distance.
	**/
	public function requestCreateAt(x : Float, y : Float, lock : Bool) {
		if ( !containsAt(x, y) )
			return;
		if ( lock )
			locked = true;
		if ( canSubdivide() ) {
			loading = true;
			subdivide(null);
		}
		for ( c in children ) {
			var node = Std.downcast(c, HierarchicalWorld);
			if ( node == null )
				continue;
			node.requestCreateAt(x, y, lock);
		}
	}

	// Get the chunk at the given position, creating it if it doesn't exist
	/**
		Returns the leaf node containing the world position (`x`, `y`), creating and locking it if needed.
		Returns `null` if the position is outside this node.
	**/
	public function getChunkAtLock(x: Float, y: Float) : HierarchicalWorld {
		requestCreateAt(x,y, true);

		function rec(chunk: HierarchicalWorld, x:Float,y:Float) : HierarchicalWorld {
			if (!chunk.containsAt(x,y))
				return null;
			if (chunk.isLeaf())
				return chunk;
			for ( c in chunk.children ) {
				var node = Std.downcast(c, HierarchicalWorld);
				if ( node == null )
					continue;
				var r = rec(node,x,y);
				if (r != null)
					return r;
			}
			return null;
		}

		return rec(this,x,y);
	}

	/**
		Locks the existing nodes containing the world position (`x`, `y`): they are not removed when the camera moves away.
	**/
	public function lockAt(x : Float, y : Float) {
		if ( !containsAt(x, y) )
			return;
		locked = true;
		for ( c in children ) {
			var node = Std.downcast(c, HierarchicalWorld);
			if ( node == null )
				continue;
			node.lockAt(x, y);
		}
	}

	/**
		Unlocks the nodes containing the world position (`x`, `y`).
	**/
	public function unlockAt(x : Float, y : Float) {
		if ( !containsAt(x, y) )
			return;
		locked = false;
		for ( c in children ) {
			var node = Std.downcast(c, HierarchicalWorld);
			if ( node == null )
				continue;
			node.unlockAt(x, y);
		}
	}

	/**
		Unlocks this node and all its descendants.
	**/
	public function unlockAll() {
		locked = false;
		for ( c in children ) {
			var node = Std.downcast(c, HierarchicalWorld);
			if ( node == null )
				continue;
			node.unlockAll();
		}
	}

	/**
		Returns the root node.
	**/
	public function getRoot() : h3d.scene.HierarchicalWorld {
		return data.root;
	}

	/**
		Removes the children nodes so that they are recreated (and repopulated with `onCreate`) when needed.
	**/
	public function refresh() {
		subdivided = false;
		var i = children.length;
		while ( i-- > 0 ) {
			var node = Std.downcast(children[i], h3d.scene.HierarchicalWorld);
			if ( node != null )
				node.remove();
		}
	}

	override function onRemove() {
		if ( data.depth == 0 )
			loadingQueue = [];
		super.onRemove();
	}
}