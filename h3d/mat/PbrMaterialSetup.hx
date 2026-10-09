package h3d.mat;

/**
	The material setup of the physically based rendering: it creates `PbrMaterial` materials, the
	`h3d.scene.pbr.Renderer` renderer and the `h3d.scene.pbr.LightSystem`.

	Call `set()` before creating the scene (for instance in the `main` function, before creating the `hxd.App`).
	On WebGL 1, the default renderer is used instead.
**/
class PbrMaterialSetup extends MaterialSetup {

	/**
		Creates the setup. `name` is used to store the material properties (see `MaterialDatabase`).
	**/
	public function new(?name="PBR") {
		super(name);
	}

	override function createRenderer() : h3d.scene.Renderer {
		#if js
		// fallback to default renderer (prevent errors)
		if( !h3d.Engine.getCurrent().driver.hasFeature(ShaderModel3) ) {
			js.Browser.console.log("Could not initialize PBR Driver: WebGL2 required");
			return super.createRenderer();
		}
		#end
		return new h3d.scene.pbr.Renderer(h3d.scene.pbr.Environment.getDefault());
	}

	override function createLightSystem() {
		return new h3d.scene.pbr.LightSystem();
	}

	override function createMaterial() : Material {
		return @:privateAccess new PbrMaterial();
	}

	/**
		Tells that this setup uses glossiness. Always `true`.
	**/
	public function gloss() {
		return true;
	}

	/**
		Sets a `PbrMaterialSetup` as `MaterialSetup.current`.
	**/
	public static function set() {
		MaterialSetup.current = new PbrMaterialSetup();
	}

}