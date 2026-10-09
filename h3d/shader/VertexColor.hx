package h3d.shader;

/**
	Multiplies (or adds with `additive`) the output color by the vertex color (RGB).
**/
class VertexColor extends hxsl.Shader {

	static var SRC = {
		@input var input : {
			var color : Vec3;
		};

		var pixelColor : Vec4;
		@const var additive : Bool;

		function fragment() {
			if( additive )
				pixelColor.rgb += input.color;
			else
				pixelColor.rgb *= input.color;
		}

	};

}