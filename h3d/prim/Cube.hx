package h3d.prim;
import h3d.col.Point;

/**
	A box of `x` by `y` by `z` units, from the origin (or centered on it). Call `addNormals()` and `addUVs()` if needed.

	```haxe
	var cube = new h3d.prim.Cube(1, 1, 1, true);
	cube.addNormals();
	cube.addUVs();
	new h3d.scene.Mesh(cube, s3d);
	```
**/
class Cube extends Polygon {

	var sizeX : Float;
	var sizeY : Float;
	var sizeZ : Float;

	/**
		Creates a box.
		@param centered If `true`, the box is centered on the origin, otherwise it goes from `0` to the sizes.
	**/
	public function new( x = 1., y = 1., z = 1., centered = false )
	{
		this.sizeX = x;
		this.sizeY = y;
		this.sizeZ = z;
		var p = [
			new Point(0, 0, 0),
			new Point(x, 0, 0),
			new Point(0, y, 0),
			new Point(0, 0, z),
			new Point(x, y, 0),
			new Point(x, 0, z),
			new Point(0, y, z),
			new Point(x, y, z),
		];
		var idx = new hxd.IndexBuffer();
		idx.push(0); idx.push(1); idx.push(5);
		idx.push(0); idx.push(5); idx.push(3);
		idx.push(1); idx.push(4); idx.push(7);
		idx.push(1); idx.push(7); idx.push(5);
		idx.push(3); idx.push(5); idx.push(7);
		idx.push(3); idx.push(7); idx.push(6);
		idx.push(0); idx.push(6); idx.push(2);
		idx.push(0); idx.push(3); idx.push(6);
		idx.push(2); idx.push(7); idx.push(4);
		idx.push(2); idx.push(6); idx.push(7);
		idx.push(0); idx.push(4); idx.push(1);
		idx.push(0); idx.push(2); idx.push(4);
		super(p, idx);
		if( centered ) translate( -x * 0.5, -y * 0.5, -z * 0.5);
	}

	override function addUVs() {
		unindex();

		var z = new UV(0, 1);
		var x = new UV(1, 1);
		var y = new UV(0, 0);
		var o = new UV(1, 0);

		uvs = [
			x, z, y,
			x, y, o,
			x, z, y,
			x, y, o,
			x, z, y,
			x, y, o,
			z, o, x,
			z, y, o,
			z, o, x,
			z, y, o,
			z, o, x,
			z, y, o,
		];
	}

	/**
		Adds UVs proportional to the face sizes (a texture keeps the same scale on all faces), multiplied by `scale`.
	**/
	public function addUniformUVs(scale = 1.) {
		unindex();

		var v = scale;
		uvs = [
			new UV(v * sizeX, v * sizeZ), new UV(0, v * sizeZ), new UV(0, 0),
			new UV(v * sizeX, v * sizeZ), new UV(0, 0), new UV(v * sizeX, 0),
			new UV(v * sizeY, v * sizeZ), new UV(0, v * sizeZ), new UV(0, 0),
			new UV(v * sizeY, v * sizeZ), new UV(0, 0), new UV(v * sizeY, 0),
			new UV(v * sizeX, v * sizeY), new UV(0, v * sizeY), new UV(0, 0),
			new UV(v * sizeX, v * sizeY), new UV(0, 0), new UV(v * sizeX, 0),
			new UV(0, v * sizeZ), new UV(v * sizeY, 0), new UV(v * sizeY, v * sizeZ),
			new UV(0, v * sizeZ), new UV(0, 0), new UV(v * sizeY, 0),
			new UV(0, v * sizeZ), new UV(v * sizeX, 0), new UV(v * sizeX, v * sizeZ),
			new UV(0, v * sizeZ), new UV(0, 0), new UV(v * sizeX, 0),
			new UV(0, v * sizeY), new UV(v * sizeX, 0), new UV(v * sizeX, v * sizeY),
			new UV(0, v * sizeY), new UV(0, 0), new UV(v * sizeX, 0),
		];
	}

	override public function getCollider() : h3d.col.Collider {
		return h3d.col.Bounds.fromValues(translatedX, translatedY, translatedZ, sizeX * scaled, sizeY * scaled, sizeZ * scaled);
	}

	/**
		Returns a shared unit cube centered on the origin, with normals, uniform UVs and tangents.
	**/
	public static function defaultUnitCube() {
		var engine = h3d.Engine.getCurrent();
		var c : Cube = @:privateAccess engine.resCache.get(Cube);
		if( c != null )
			return c;
		c = new h3d.prim.Cube(1, 1, 1);
		c.translate(-0.5,-0.5,-0.5);
		c.unindex();
		c.addNormals();
		c.addUniformUVs(1.0);
		c.addTangents();
		@:privateAccess engine.resCache.set(Cube, c);
		return c;
	}
}