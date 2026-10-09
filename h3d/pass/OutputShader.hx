package h3d.pass;

/**
	Links the shaders of a pass with an output shader writing the given values to the render targets.
**/
class OutputShader {

	var shaderCache : hxsl.Cache;
	var currentOutput : hxsl.ShaderList;

	/**
		Creates the linker for the given outputs (`output.color` by default).
	**/
	public function new(?output:Array<hxsl.Output>) {
		shaderCache = hxsl.Cache.get();
		currentOutput = new hxsl.ShaderList(null);
		setOutput(output);
	}

	/**
		Changes the outputs (`output.color` by default).
	**/
	public function setOutput( ?output : Array<hxsl.Output>, ?vertexOutputName ) {
		if( output == null ) output = [Value("output.color")];
		currentOutput.s = shaderCache.getLinkShader(output,vertexOutputName);
	}

	/**
		Links `shaders` with the output shader and returns the compiled shader (cached).
	**/
	public function compileShaders( globals : hxsl.Globals, shaders : hxsl.ShaderList, mode : hxsl.RuntimeShader.LinkMode = Default ) {
		globals.resetChannels();
		for( s in shaders ) s.updateConstants(globals);
		currentOutput.next = shaders;
		var s = shaderCache.link(currentOutput, mode);
		currentOutput.next = null;
		return s;
	}

}
