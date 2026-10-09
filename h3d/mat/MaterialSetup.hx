package h3d.mat;

/**
	Defines the rendering setup: which renderer, light system and material class are used by the scenes and models.

	The active setup is `MaterialSetup.current`, used when a `Scene` is created and when models are loaded.
	The default setup uses the forward renderer and `Material`; `PbrMaterialSetup` uses the PBR renderer.
**/
class MaterialSetup {

	/**
		The setup name, used to store the material properties per setup (see `MaterialDatabase`).
	**/
	public var name(default,null) : String;
	/**
		An optional name displayed by tools.
	**/
	public var displayName(default,null) : String;
	var database : MaterialDatabase;
	var emptyMat : h3d.mat.Material;

	/**
		Creates a setup with the given name.
	**/
	public function new(name) {
		if( database == null )
			database = new MaterialDatabase();
		this.name = name;
	}

	/**
		Creates the renderer of a new scene (`h3d.scene.fwd.Renderer` by default).
	**/
	public function createRenderer() : h3d.scene.Renderer {
		return new h3d.scene.fwd.Renderer();
	}

	/**
		Creates the light system of a new scene (`h3d.scene.fwd.LightSystem` by default).
	**/
	public function createLightSystem() : h3d.scene.LightSystem {
		return new h3d.scene.fwd.LightSystem();
	}

	/**
		Creates a new material of the class used by this setup.
	**/
	public function createMaterial() {
		return @:privateAccess new h3d.mat.Material();
	}

	/**
		Returns the default material properties for the given kind of object (for instance `"particles3D"` or `"ui"`).
	**/
	public function getDefaults( ?kind : String ) {
		if( emptyMat == null ) emptyMat = createMaterial();
		return emptyMat.getDefaultProps(kind);
	}

	/**
		Converts saved properties to the material properties of this setup.
	**/
	public function loadProps( v : Dynamic ) : Any {
		if( emptyMat == null ) emptyMat = createMaterial();
		return emptyMat.loadProps(v);
	}

	/**
		Returns the saved properties of `material` for this setup, or `null`.
	**/
	public function loadMaterialProps( material : h3d.mat.Material ) {
		return database.loadMatProps(material, this);
	}

	/**
		Saves the properties of `material` for this setup.
	**/
	public function saveMaterialProps( material : Material, ?defaultProps : Any ) {
		database.saveMatProps(material, this, defaultProps);
	}

	/**
		Can be used to perform custom mesh initialization such as computing extra buffers
		when loading it from HSD or displaying it in tools.
	**/
	public function customMeshInit( mesh : h3d.scene.Mesh ) {
	}

	/**
		The active setup. Change it before creating the scenes (see `PbrMaterialSetup.set`).
	**/
	public static var current = new MaterialSetup("Default");

}