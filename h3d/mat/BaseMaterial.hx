package h3d.mat;
import h3d.mat.Data;
import h3d.mat.Pass;

/**
	Base class of the materials: a linked list of render passes (`Pass`), each with its own render states and shaders.

	The main pass is drawn in the pass named by its `Pass.name` (for instance `"default"` or `"alpha"`), other passes
	(such as `"shadow"` or `"depth"`) are drawn when the renderer renders that pass name.
**/
class BaseMaterial extends hxd.impl.AnyProps {

	var passes : Pass;
	/**
		The material name, usually the one from the model file.
	**/
	public var name : String;
	/**
		The first pass of the material.
	**/
	public var mainPass(get, never) : Pass;

	function new(?shader:hxsl.Shader) {
		if( shader != null )
			addPass(new Pass("default",null)).addShader(shader);
	}

	/**
		Adds a pass at the end of the pass list and returns it.
	**/
	public function addPass<T:Pass>( p : T ) : T {
		var prev = null, cur = passes;
		while( cur != null ) {
			prev = cur;
			cur = cur.nextPass;
		}
		if( prev == null )
			passes = p;
		else
			prev.nextPass = p;
		p.nextPass = null;
		return p;
	}

	/**
		Removes a pass from the pass list. Returns `false` if it was not found.
	**/
	public function removePass( p : Pass ) {
		var prev : Pass = null, cur = passes;
		while( cur != null ) {
			if( cur == p ) {
				if( prev == null )
					passes = p.nextPass;
				else
					prev.nextPass = p.nextPass;
				p.nextPass = null;
				return true;
			}
			prev = cur;
			cur = cur.nextPass;
		}
		return false;
	}

	inline function get_mainPass() {
		return passes;
	}

	/**
		Returns the list of the passes of the material.
	**/
	public function getPasses() {
		var p = passes;
		var out = [];
		while( p != null ) {
			out.push(p);
			p = p.nextPass;
		}
		return out;
	}

	/**
		Returns the pass named `name`, or `null`.
	**/
	public function getPass( name : String ) : Pass {
		var p = passes;
		while( p != null ) {
			if( p.name == name )
				return p;
			p = p.nextPass;
		}
		return null;
	}

	/**
		Returns the pass named `name`, creating it if needed.
		@param inheritMain If `true`, a created pass shares the shaders of the main pass.
	**/
	public function allocPass( name : String, ?inheritMain = true ) : Pass {
		var p = getPass(name);
		if( p != null ) return p;
		var p = new Pass(name, null, inheritMain ? mainPass : null);
		if( inheritMain && mainPass != null ) p.batchMode = mainPass.batchMode;
		addPass(p);
		return p;
	}

	/**
		Returns a copy of the material (the main pass render states, the name and the properties).
	**/
	public function clone( ?m : BaseMaterial ) : BaseMaterial {
		if( m == null ) m = new BaseMaterial();
		m.mainPass.load(mainPass);
		// DO NOT clone passes (it's up to the superclass to recreate the passes + shaders)
		m.name = name;
		m.props = props;
		return m;
	}

}