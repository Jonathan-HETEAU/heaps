package h3d.scene.pbr;

/**
	A projected decal for the PBR renderer: a box volume (usually a unit cube) whose material uses a
	`h3d.shader.pbr.VolumeDecal` shader to project a texture on the surfaces inside the box.
**/
class Decal extends Mesh {

	/**
		Creates a decal using the given volume primitive and material.
	**/
	public function new( primitive, ?material, ?parent ) {
		super(primitive, material, parent);
	}

	override function emit( ctx : RenderContext ) {
		super.emit(ctx);

		if(ctx.visibleFlag) {
			var shader = material.mainPass.getShader(h3d.shader.pbr.VolumeDecal.DecalPBR);
			if( shader != null ) {
				var absPos = getAbsPos();
				shader.normal.set(absPos._31, absPos._32, absPos._33); // up
				shader.tangent.set(absPos._21, absPos._22, absPos._23); // right
			}
		}
	}
}