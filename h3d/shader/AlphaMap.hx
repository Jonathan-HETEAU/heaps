package h3d.shader;

/**
	Multiplies the alpha by a channel of a texture (blue by default, or alpha with `useAlphaChannel`).
**/
class AlphaMap extends hxsl.Shader {

	static var SRC = {
		var calculatedUV : Vec2;
		var pixelColor : Vec4;
		@input var input : { uv : Vec2 };

		@param var texture : Sampler2D;
		@param var uvScale : Vec2;
		@param var uvDelta : Vec2;
		@const var useAlphaChannel : Bool;
		@const @param var useSourceUVs : Bool = false;
		function fragment() {
			var uv = useSourceUVs ? input.uv : calculatedUV;
			uv = uv * uvScale + uvDelta;
			if( useAlphaChannel )
				pixelColor.a *= texture.get(uv).a;
			else
				pixelColor.a *= texture.get(uv).b;
		}
	}

	/**
		Creates the shader with the alpha map `texture`.
	**/
	public function new(texture, useAlphaChannel=false) {
		super();
		uvScale.set(1, 1);
		this.useAlphaChannel = useAlphaChannel;
		this.texture = texture;
	}

}