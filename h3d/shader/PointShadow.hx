package h3d.shader;

/**
	Applies the shadows of a cube shadow map (see `h3d.pass.CubeShadowMap`).
**/
class PointShadow extends hxsl.Shader {

	static var SRC = {
		@:extends h3d.shader.ShadowSampling;

		@const var enable : Bool;
		@const(2) var SAMPLING_MODE : Int;

		// ESM
		@param var shadowPower : Float;
		// PCF
		@param var pcfScale : Float;

		@param var shadowMap : SamplerCube;
		@param var lightPos : Vec3;
		@param var shadowBias : Float;
		@param var zFar : Float;

		var transformedPosition : Vec3;
		var shadow : Float;
		var pointShadow : Float;

		function fragment() {
			if( enable ) {
				var posToLight = transformedPosition.xyz - lightPos;
				var zMax = posToLight.length();
				var dir = posToLight.xyz / zMax;
				shadow = sampleCubeShadow(shadowMap, dir, zMax, zFar, shadowBias, pcfScale, shadowPower, SAMPLING_MODE);
			}
			pointShadow = shadow;
		}
	}

	/**
		Creates the shader.
	**/
	public function new() {
		super();
	}
}