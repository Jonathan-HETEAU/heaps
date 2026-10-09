package h3d.pass;

/**
	The shadow map of a `h3d.scene.pbr.SpotLight`: a perspective projection matching the spot cone.
**/
class SpotShadowMap extends ProjectedShadowMap {

	override function targetName() : String {
		return "spotShadowMap";
	}

	override function updateCamera() {
		var absPos = light.getAbsPos();
		var spotLight = cast(light, h3d.scene.pbr.SpotLight);
		var ldir = absPos.front();
		lightCamera.pos.set(absPos.tx, absPos.ty, absPos.tz);
		lightCamera.target.set(absPos.tx + ldir.x, absPos.ty + ldir.y, absPos.tz + ldir.z);
		lightCamera.fovY = spotLight.angle;
		lightCamera.zNear = spotLight.range * 0.05; // first 5% outside of range
		lightCamera.zFar = spotLight.range;
		lightCamera.update();
	}
}
