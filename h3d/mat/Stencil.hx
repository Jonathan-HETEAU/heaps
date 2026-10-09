package h3d.mat;
import h3d.mat.Data;

@:allow(h3d.mat.Material)
#if !macro
@:build(hxd.impl.BitsBuilder.build())
#end
/**
	The stencil buffer settings of a `Pass` (see `Pass.stencil`): the test performed against the stencil buffer and the
	operations applied to it, separately for front and back faces.

	```haxe
	// write 1 in the stencil where the mask object is drawn
	mask.material.mainPass.stencil = new h3d.mat.Stencil();
	mask.material.mainPass.stencil.setFunc(Always, 1);
	mask.material.mainPass.stencil.setOp(Keep, Keep, Replace);
	```
**/
class Stencil {

	var maskBits  : Int = 0;
	var opBits    : Int = 0;

	/**
		The bits of the stencil value and reference compared by the test.
	**/
	@:bits(maskBits, 8) public var readMask : Int;
	/**
		The bits of the stencil buffer which can be modified.
	**/
	@:bits(maskBits, 8) public var writeMask : Int;
	/**
		The reference value used by the test and the `Replace` operation.
	**/
	@:bits(maskBits, 8) public var reference : Int;

	/**
		The stencil test of front faces.
	**/
	@:bits(opBits) public var frontTest : Compare;
	/**
		The operation on front faces when both the stencil and depth tests pass.
	**/
	@:bits(opBits) public var frontPass : StencilOp;
	/**
		The operation on front faces when the stencil test fails.
	**/
	@:bits(opBits) public var frontSTfail : StencilOp;
	/**
		The operation on front faces when the stencil test passes but the depth test fails.
	**/
	@:bits(opBits) public var frontDPfail : StencilOp;

	/**
		The stencil test of back faces.
	**/
	@:bits(opBits) public var backTest : Compare;
	/**
		The operation on back faces when both the stencil and depth tests pass.
	**/
	@:bits(opBits) public var backPass : StencilOp;
	/**
		The operation on back faces when the stencil test fails.
	**/
	@:bits(opBits) public var backSTfail : StencilOp;
	/**
		The operation on back faces when the stencil test passes but the depth test fails.
	**/
	@:bits(opBits) public var backDPfail : StencilOp;

	/**
		Creates stencil settings which always pass and keep the stencil buffer unchanged.
	**/
	public function new() {
		setOp(Keep, Keep, Keep);
		setFunc(Always);
	}

	/**
		Sets the operations of front faces.
		@param stfail When the stencil test fails.
		@param dpfail When the stencil test passes but the depth test fails.
		@param pass When both tests pass.
	**/
	public function setFront( stfail : StencilOp, dpfail : StencilOp, pass : StencilOp ) {
		frontSTfail = stfail;
		frontDPfail = dpfail;
		frontPass   = pass;
	}

	/**
		Sets the operations of back faces. See `setFront`.
	**/
	public function setBack( stfail : StencilOp, dpfail : StencilOp, pass : StencilOp ) {
		backSTfail  = stfail;
		backDPfail  = dpfail;
		backPass    = pass;
	}

	/**
		Sets the operations of both front and back faces. See `setFront`.
	**/
	public function setOp( stfail : StencilOp, dpfail : StencilOp, pass : StencilOp ) {
		setFront(stfail, dpfail, pass);
		setBack(stfail, dpfail, pass);
	}

	/**
		Sets the stencil test of both front and back faces, with its reference value and masks.
	**/
	public function setFunc( f : Compare, reference = 0, readMask = 0xFF, writeMask = 0xFF ) {
		frontTest = backTest = f;
		this.reference = reference;
		this.readMask = readMask;
		this.writeMask = writeMask;
	}

	/**
		Returns a copy of the settings.
	**/
	public function clone() {
		var s = new Stencil();
		s.opBits = opBits;
		s.maskBits = maskBits;
		s.readMask = readMask;
		s.writeMask = writeMask;
		s.reference = reference;
		s.frontTest = frontTest;
		s.frontPass = frontPass;
		s.frontSTfail = frontSTfail;
		s.frontDPfail = frontDPfail;
		s.backTest = backTest;
		s.backPass = backPass;
		s.backSTfail = backSTfail;
		s.backDPfail = backDPfail;
		return s;
	}

	/**
		Copies the settings of `s`.
	**/
	public function load(s : Stencil) {
		opBits = s.opBits;
		maskBits = s.maskBits;
		readMask = s.readMask;
		writeMask = s.writeMask;
		reference = s.reference;
		frontTest = s.frontTest;
		frontPass = s.frontPass;
		frontSTfail = s.frontSTfail;
		frontDPfail = s.frontDPfail;
		backTest = s.backTest;
		backPass = s.backPass;
		backSTfail = s.backSTfail;
		backDPfail = s.backDPfail;
	}

}