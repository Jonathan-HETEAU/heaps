package h3d.pass;

/**
	Sorts draw passes by shader then texture, to minimize the GPU state changes.
**/
class SortByMaterial {

	var shaderCount : Int = 1;
	var textureCount : Int = 1;
	var shaderIdMap : Array<Int>;
	var textureIdMap : Array<Int>;

	/**
		Creates the sorter.
	**/
	public function new() {
		shaderIdMap = [];
		textureIdMap = [];
	}

	/**
		Sorts `passes` by shader then by texture.
	**/
	public function sort( passes : PassList ) {
		var shaderStart = shaderCount, textureStart = textureCount;
		for( p in passes ) {
			if( shaderIdMap[p.shader.id] < shaderStart #if js || shaderIdMap[p.shader.id] == null #end )
				shaderIdMap[p.shader.id] = shaderCount++;
			if( textureIdMap[p.texture] < textureStart #if js || textureIdMap[p.shader.id] == null #end )
				textureIdMap[p.texture] = textureCount++;
		}
		passes.sort(function(o1, o2) {
			if ( o1.pass.layer != o2.pass.layer )
				return o1.pass.layer - o2.pass.layer;
			var d = shaderIdMap[o1.shader.id] - shaderIdMap[o2.shader.id];
			if( d != 0 ) return d;
			return textureIdMap[o1.texture] - textureIdMap[o2.texture];
		});
	}

}