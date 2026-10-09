package hxd;

/**
	Writes values sequentially into a `FloatBuffer`, starting at a given position.
	Used to fill shader parameter buffers.
**/
class FloatBufferLoader {
	/**
		The buffer being written.
	**/
	public var buf(default, null) : FloatBuffer;
	/**
		The index of the next float to write, incremented by each `load` call.
	**/
	public var pos : Int;

	#if js
	var viewInt : hxd.impl.TypedArray.Uint32Array;
	#end

	/**
		Creates a loader writing into `b`, starting at index `p`.
	**/
	public inline function new(b : FloatBuffer, p : Int){
		buf = b;
		pos = p;
		#if js
		var native : hxd.impl.TypedArray.Float32Array = buf.getNative();
		viewInt = new hxd.impl.TypedArray.Uint32Array(native.buffer);
		#end
	}

	/**
		Writes the 16 values of the matrix, transposed (column by column).
	**/
	public inline function loadMatrix(m:h3d.Matrix) {
		buf[pos++] = m._11;
		buf[pos++] = m._21;
		buf[pos++] = m._31;
		buf[pos++] = m._41;
		buf[pos++] = m._12;
		buf[pos++] = m._22;
		buf[pos++] = m._32;
		buf[pos++] = m._42;
		buf[pos++] = m._13;
		buf[pos++] = m._23;
		buf[pos++] = m._33;
		buf[pos++] = m._43;
		buf[pos++] = m._14;
		buf[pos++] = m._24;
		buf[pos++] = m._34;
		buf[pos++] = m._44;
	}

	/**
		Writes the first 3 columns of the matrix (12 values), transposed.
	**/
	public inline function loadMatrix3x4(m:h3d.Matrix) {
		buf[pos++] = m._11;
		buf[pos++] = m._21;
		buf[pos++] = m._31;
		buf[pos++] = m._41;
		buf[pos++] = m._12;
		buf[pos++] = m._22;
		buf[pos++] = m._32;
		buf[pos++] = m._42;
		buf[pos++] = m._13;
		buf[pos++] = m._23;
		buf[pos++] = m._33;
		buf[pos++] = m._43;
	}

	/**
		Writes a single float.
	**/
	public inline function loadFloat(v : Float) {
		buf[pos++] = v;
	}

	/**
		Writes the bits of an integer as a float slot (no conversion).
	**/
	public inline function loadInt(v : Int) {
		#if js
		viewInt[pos] = v;
		#else
		buf[pos++] = haxe.io.FPHelper.i32ToFloat(v);
		#end
	}

	/**
		Writes the X and Y components of `v`.
	**/
	public inline function loadVec2(v : h3d.Vector) {
		buf[pos++] = v.x;
		buf[pos++] = v.y;
	}

	/**
		Writes the X, Y and Z components of `v`.
	**/
	public inline function loadVec3(v : h3d.Vector) {
		buf[pos++] = v.x;
		buf[pos++] = v.y;
		buf[pos++] = v.z;
	}

	/**
		Writes the 4 components of `v`.
	**/
	public inline function loadVec4(v : h3d.Vector4) {
		buf[pos++] = v.x;
		buf[pos++] = v.y;
		buf[pos++] = v.z;
		buf[pos++] = v.w;
	}
}