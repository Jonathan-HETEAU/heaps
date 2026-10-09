package h3d.shader;

/**
	Receives the shadows of the forward renderer shadow map (see `h3d.pass.DefaultShadowMap` and `h3d.mat.Material.receiveShadows`).
**/
class Shadow extends hxsl.Shader {

	static var SRC = {
		@global var shadow : {
			map : Channel,
			viewProj : Mat3x4,
			color : Vec3,
			power : Float,
			bias : Float,
		};
		var pixelColor : Vec4;
		var transformedPosition : Vec3;
		var pixelTransformedPosition : Vec3;
		@private var shadowPos : Vec3;

		function fragment() {
			var shadowPos = pixelTransformedPosition * shadow.viewProj;
			var depth = shadow.map.get(screenToUv(shadowPos.xy));
			var zMax = shadowPos.z.saturate();
			var delta = (depth + shadow.bias).min(zMax) - zMax;
			var shade = exp( shadow.power * delta  ).saturate();
			pixelColor.rgb *= (1 - shade) * shadow.color.rgb + shade;
		}
	};

	/**
		Creates the shader.
	**/
	public function new() {
		super();
	}

}