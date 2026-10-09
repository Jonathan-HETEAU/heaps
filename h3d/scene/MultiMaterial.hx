package h3d.scene;

/**
	A `Mesh` using several materials, one per material group of its primitive.

	The primitive must split its indexes per material (for instance a `h3d.prim.HMDModel` loaded from a model
	with several materials): each material `i` is drawn with the indexes of group `i`.
**/
class MultiMaterial extends Mesh {

	/**
		The materials, indexed by primitive material group. `null` entries are not drawn.
		`Mesh.material` refers to the first one.
	**/
	public var materials : Array<h3d.mat.Material>;

	/**
		Creates a multi-material mesh.
		@param prim The primitive to draw, with one index group per material.
		@param mats The materials. If `null`, a single default material is created.
		@param parent An optional parent object.
	**/
	public function new( prim, ?mats, ?parent ) {
		super(prim, mats == null ? null : mats[0], parent);
		this.materials = mats == null ? [material] : mats;
	}

	override function getMeshMaterials() {
		return materials.copy();
	}

	override function clone( ?o : Object ) {
		var m = o == null ? new MultiMaterial(null, materials) : cast o;
		m.materials = [];
		for( mat in materials )
			m.materials.push(if( mat == null ) null else cast mat.clone());
		super.clone(m);
		m.material = m.materials[0];
		return m;
	}

	override function emit( ctx : RenderContext ) {
		calcScreenRatio(ctx);
		if ( getLodIndex() >= primitive.lodCount() )
			return;
		for( i in 0...materials.length ) {
			var m = materials[i];
			if( m != null )
				ctx.emit(m, this, i);
		}
	}

	override function getMaterialByName( name : String ) : h3d.mat.Material {
		for( m in materials )
			if( m != null && m.name == name )
				return m;
		return super.getMaterialByName(name);
	}

	override function getMaterials( ?a : Array<h3d.mat.Material>, recursive = true ) {
		if( a == null ) a = [];
		for( m in materials )
			if( m != null && a.indexOf(m) < 0 )
				a.push(m);
		if( recursive ) {
			for( o in children )
				o.getMaterials(a);
		}
		return a;
	}

	override function draw( ctx : RenderContext ) {
		if( materials.length > 1 )
			primitive.selectMaterial(ctx.drawPass.index, getLodIndex());
		primitive.render(ctx.engine);
	}

}