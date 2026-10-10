package h3d.mat;

/**
	Where a `PbrMaterial` is drawn in the PBR renderer pipeline.
**/
enum abstract PbrMode(String) {
	/**
		Lit by the deferred PBR lighting (the `"default"` pass, or `"alpha"` / `"additive"` depending on the blend mode).
	**/
	var PBR = "PBR";
	/**
		Drawn after the lighting in the `"forward"` pass, lit by the forward light buffer (for transparent objects).
	**/
	var Forward = "Forward";
	/**
		Drawn on top of the final image (`"overlay"` pass), unlit.
	**/
	var Overlay = "Overlay";
	/**
		A volume decal projecting its textures on the G-buffer (`"decal"` or `"emissiveDecal"` pass).
	**/
	var Decal = "Decal";
	/**
		Unlit, drawn in HDR just before tone mapping (`"beforeTonemapping"` pass).
	**/
	var BeforeTonemapping = "BeforeTonemapping";
	/**
		Same as `BeforeTonemapping`, in the `"beforeTonemappingDecal"` pass.
	**/
	var BeforeTonemappingDecal = "BeforeTonemappingDecal";
	/**
		Unlit, drawn after tone mapping (`"afterTonemapping"` pass).
	**/
	var AfterTonemapping = "AfterTonemapping";
	/**
		Same as `AfterTonemapping`, in the `"afterTonemappingDecal"` pass.
	**/
	var AfterTonemappingDecal = "AfterTonemappingDecal";
	/**
		Drawn in the `"distortion"` pass, used by distortion effects, without depth write.
	**/
	var Distortion = "Distortion";
	/**
		Drawn in the decal pass with the material own geometry (no volume projection).
	**/
	var DecalPass = "DecalPass";
	/**
		Drawn in the `"terrain"` pass, before the other opaque objects.
	**/
	var TerrainPass = "TerrainPass";
}

/**
	The blend mode of a `PbrMaterial` (see `h3d.mat.BlendMode`).
**/
enum abstract PbrBlend(String) {
	/**
		No blending: opaque.
	**/
	var None = "None";
	/**
		Alpha blending.
	**/
	var Alpha = "Alpha";
	/**
		Additive blending.
	**/
	var Add = "Add";
	/**
		Additive blending, multiplied by the alpha.
	**/
	var AlphaAdd = "AlphaAdd";
	/**
		Multiplies the destination color.
	**/
	var Multiply = "Multiply";
	/**
		Multiplies the destination color, weighted by the alpha.
	**/
	var AlphaMultiply = "AlphaMultiply";
}

/**
	The depth test of a `PbrMaterial` (see `h3d.mat.Data.Compare`).
**/
enum abstract PbrDepthTest(String) {
	/**
		Passes if the depth is less than the stored depth.
	**/
	var Less = "Less";
	/**
		Passes if the depth is less than or equal to the stored depth.
	**/
	var LessEqual = "LessEqual";
	/**
		Passes if the depth is greater than the stored depth.
	**/
	var Greater = "Greater";
	/**
		Passes if the depth is greater than or equal to the stored depth.
	**/
	var GreaterEqual = "GreaterEqual";
	/**
		Always passes.
	**/
	var Always = "Always";
	/**
		Never passes.
	**/
	var Never = "Never";
	/**
		Passes if the depth is equal to the stored depth.
	**/
	var Equal = "Equal";
	/**
		Passes if the depth is not equal to the stored depth.
	**/
	var NotEqual= "NotEqual";
}

/**
	The depth write of a `PbrMaterial`: `Default` writes depth only for opaque blend modes.
**/
enum abstract PbrDepthWrite(String) {
	/**
		Writes the depth only when the blend mode is `None`.
	**/
	var Default = "Default";
	/**
		Always writes the depth.
	**/
	var On = "On";
	/**
		Never writes the depth.
	**/
	var Off = "Off";
}

/**
	A stencil operation of a `PbrMaterial` (see `h3d.mat.Data.StencilOp`).
**/
enum abstract PbrStencilOp(String) {
	/**
		Keeps the stored value.
	**/
	var Keep = "Keep";
	/**
		Sets the value to `0`.
	**/
	var Zero = "Zero";
	/**
		Replaces the value with the reference value.
	**/
	var Replace = "Replace";
	/**
		Increments the value, clamped to the maximum.
	**/
	var Increment = "Increment";
	/**
		Increments the value, wrapping to `0`.
	**/
	var IncrementWrap = "IncrementWrap";
	/**
		Decrements the value, clamped to `0`.
	**/
	var Decrement = "Decrement";
	/**
		Decrements the value, wrapping to the maximum.
	**/
	var DecrementWrap = "DecrementWrap";
	/**
		Inverts the bits of the value.
	**/
	var Invert = "Invert";
}

/**
	A stencil test of a `PbrMaterial` (see `h3d.mat.Data.Compare`).
**/
enum abstract PbrStencilCompare(String) {
	/**
		Always passes.
	**/
	var Always = "Always";
	/**
		Never passes.
	**/
	var Never = "Never";
	/**
		Passes if the reference value is equal to the stored value.
	**/
	var Equal = "Equal";
	/**
		Passes if the reference value is not equal to the stored value.
	**/
	var NotEqual = "NotEqual";
	/**
		Passes if the reference value is greater than the stored value.
	**/
	var Greater = "Greater";
	/**
		Passes if the reference value is greater than or equal to the stored value.
	**/
	var GreaterEqual = "GreaterEqual";
	/**
		Passes if the reference value is less than the stored value.
	**/
	var Less = "Less";
	/**
		Passes if the reference value is less than or equal to the stored value.
	**/
	var LessEqual = "LessEqual";
}

/**
	The face culling of a `PbrMaterial` (see `h3d.mat.Data.Face`).
**/
enum abstract PbrCullingMode(String) {
	/**
		No culling: both faces are drawn.
	**/
	var None = "None";
	/**
		Back faces are culled.
	**/
	var Back = "Back";
	/**
		Front faces are culled.
	**/
	var Front = "Front";
	/**
		Both faces are culled: nothing is drawn.
	**/
	var Both = "Both";
}

/**
	The properties of a `PbrMaterial`, stored as `props` and edited in Hide. Call `refreshProps()` after changing them.
**/
@:publicFields
class PbrProps {
	/**
		Where the material is drawn in the pipeline.
	**/
	var mode : PbrMode = PBR;
	/**
		The blend mode.
	**/
	var blend : PbrBlend = None;
	/**
		Casts and receives shadows.
	**/
	var shadows : Bool = true;
	/**
		The faces culled.
	**/
	var culling : PbrCullingMode = Back;
	/**
		The depth test.
	**/
	var depthTest : PbrDepthTest = Less;
	/**
		The depth write.
	**/
	var depthWrite : PbrDepthWrite = Default;
	/**
		The channels written: bits 0 to 3 for red, green, blue and alpha.
	**/
	var colorMask : Int = 1 << 0 | 1 << 1 | 1 << 2 | 1 << 3;
	/**
		Discards the pixels whose texture alpha is below the threshold.
	**/
	var alphaKill : Bool = false;
	/**
		The emissive intensity.
	**/
	var emissive : Float = 0.;
	/**
		If positive, enables parallax mapping with this depth, using the alpha channel of `specularTexture` as height.
	**/
	var parallax : Float = 0.;
	/**
		The number of layers used by the parallax mapping.
	**/
	var parallaxSteps : Int = h3d.shader.Parallax.MAX_LAYERS;
	/**
		Inverts the tangent basis of the parallax mapping.
	**/
	var invertBasis : Bool = false;
	/**
		Repeats the textures (`Repeat` wrap mode) instead of clamping them.
	**/
	var textureWrap : Bool = false;

	/**
		Enables the stencil test and operations below.
	**/
	var enableStencil : Bool = false;
	/**
		The stencil test.
	**/
	var stencilCompare : PbrStencilCompare = Always;
	/**
		The stencil operation when both the stencil and depth tests pass.
	**/
	var stencilPassOp : PbrStencilOp = Replace;
	/**
		The stencil operation when the stencil test fails.
	**/
	var stencilFailOp : PbrStencilOp = Keep;
	/**
		The stencil operation when the stencil test passes but the depth test fails.
	**/
	var depthFailOp : PbrStencilOp = Keep;
	/**
		The stencil reference value.
	**/
	var stencilValue : Int = 0;
	/**
		The stencil bits written.
	**/
	var stencilWriteMask : Int = 0;
	/**
		The stencil bits tested.
	**/
	var stencilReadMask : Int = 0;

	var __ref : String = null;
	var __refMode : String = null;
	/**
		An optional display name of the properties.
	**/
	var name : String = null;
	/**
		If set, the pass `layer` (an integer as string): objects of a lower layer are drawn first.
	**/
	var drawOrder : String = null;
	/**
		Adds a `"depthPrepass"` pass writing the depth before the main pass (for transparent objects needing correct sorting).
	**/
	var depthPrepass : Bool = false;
	/**
		Flips the normal of back faces, for double sided materials.
	**/
	var flipBackFaceNormal : Bool = false;
	/**
		The geometry using this material is excluded from the collision data built by the model converter (`hxd.fs.Convert`).
	**/
	var ignoreCollide : Bool = false;

	/**
		Creates the default properties.
	**/
	function new() {
	}

	/**
		Sets the properties from the saved object and returns this.
	**/
	function load( o : Dynamic ) : PbrProps {
		for( f in Reflect.fields(o) ) {
			if( !Reflect.hasField(this, f) ) continue;
			var v : Dynamic = Reflect.field(o, f);
			if( v == null ) continue;
			if( f == "culling" && (v is Bool) ) v = v ? "Back" : "None";
			Reflect.setField(this, f, v);
		}
		return this;
	}

	/**
		Returns the properties different from the defaults, to be saved.
	**/
	function save() : Dynamic {
		var def = Type.createInstance(Type.getClass(this), []);
		var o : Dynamic = {};
		for( f in Reflect.fields(this) ) {
			var v : Dynamic = Reflect.field(this, f);
			if( v != Reflect.field(def, f) ) Reflect.setField(o, f, v);
		}
		return o;
	}
}

/**
	The material of the PBR renderer (`MaterialSetup` `PbrMaterialSetup`). Its settings are given by its `PbrProps`
	(usually loaded from the `materials.props` of the model, see `MaterialDatabase`).
**/
class PbrMaterial extends Material {

	override function set_blendMode(b:BlendMode) {
		if( mainPass != null ) {
			mainPass.setBlendMode(b);
			var dwrite = props == null ? Default : (props:PbrProps).depthWrite;
			if( dwrite != Default )
				mainPass.depthWrite = dwrite == On;
			else
				mainPass.depthWrite = b == None;
			var am = mainPass.getShader(h3d.shader.pbr.AlphaMultiply);
			if( b == AlphaMultiply ) {
				if( am == null ) {
					am = new h3d.shader.pbr.AlphaMultiply();
					am.setPriority(-1);
					mainPass.addShader(am);
				}
			} else if( am != null )
				mainPass.removeShader(am);
			var mode = props == null ? PBR : (props:PbrProps).mode;
			switch( mode ) {
			case PBR:
				mainPass.setPassName(switch( b ) {
				case Add, AlphaAdd, SoftAdd: "additive";
				case Alpha, AlphaMultiply: "alpha";
				default: "default";
				});
			case Forward:
				mainPass.setPassName(switch( b ) {
				case Alpha, AlphaMultiply: "forwardAlpha";
				default: "forward";
				});
			default:
			}
		}
		return this.blendMode = b;
	}

	override function set_receiveShadows(b) {
		// don't add shadows shader here, we are not in forward
		return receiveShadows = b;
	}

	function createProps() : PbrProps {
		return new PbrProps();
	}

	override function loadProps( v : Dynamic ) : Any {
		var np = createProps();
		return Std.isOfType(v, Type.getClass(np)) ? v : np.load(v);
	}

	override function set_props( p : Any ) {
		return super.set_props(p == null ? null : loadProps(p));
	}

	override function getDefaultProps( ?type : String ) : Any {
		var props = createProps();
		switch( type ) {
		case "particles3D", "trail3D":
			props.blend = Alpha;
			props.shadows = false;
			props.culling = None;
		case "ui":
			props.mode = Overlay;
			props.blend = Alpha;
			props.shadows = false;
			props.culling = None;
			props.alphaKill = true;
		case "decal":
			props.mode = Decal;
			props.blend = Alpha;
			props.shadows = false;
		default:
		}
		return props;
	}

	override function getDefaultModelProps() : Any {
		var props : PbrProps = getDefaultProps();
		props.blend = switch( blendMode ) {
			case None: None;
			case Alpha: Alpha;
			case Add: Add;
			case Multiply: Multiply;
			case AlphaMultiply: AlphaMultiply;
			default: throw "Unsupported Model blendMode "+blendMode;
		}
		props.depthTest = switch (mainPass.depthTest) {
			case Always: Always;
			case Never: Never;
			case Equal: Equal;
			case NotEqual: NotEqual;
			case Greater: Greater;
			case GreaterEqual: GreaterEqual;
			case Less: Less;
			case LessEqual: LessEqual;
		}
		return props;
	}

	function resetProps() {
		mainPass.enableLights = true;
	}

	override function refreshProps() {
		resetProps();
		var props : PbrProps = props;

		// Preset
		switch( props.mode ) {
		case PBR:
			// pass name set below (in set_blendMode)
		case Forward:
			mainPass.setPassName("forward");
		case BeforeTonemapping, BeforeTonemappingDecal:
			if ( props.mode == BeforeTonemappingDecal )
				mainPass.setPassName("beforeTonemappingDecal");
			else
				mainPass.setPassName("beforeTonemapping");
			var gc = mainPass.getShader(h3d.shader.pbr.GammaCorrect);
			if( gc == null ) {
				gc = new h3d.shader.pbr.GammaCorrect();
				gc.useEmissiveHDR = true;
				gc.setPriority(-1);
				mainPass.addShader(gc);
			}
		case AfterTonemapping:
			mainPass.setPassName("afterTonemapping");
		case AfterTonemappingDecal:
			mainPass.setPassName("afterTonemappingDecal");
		case Distortion:
			mainPass.setPassName("distortion");
			mainPass.depthWrite = false;
		case Overlay:
			mainPass.setPassName("overlay");
		case Decal:
			mainPass.setPassName(props.emissive != 0 ? "emissiveDecal" : "decal");
			var vd = mainPass.getShader(h3d.shader.VolumeDecal);
			if( vd == null ) {
				vd = new h3d.shader.VolumeDecal(1,1);
				vd.setPriority(-1);
				mainPass.addShader(vd);
			}
			var sv = mainPass.getShader(h3d.shader.pbr.StrengthValues);
			if( sv == null ) {
				sv = new h3d.shader.pbr.StrengthValues();
				mainPass.addShader(sv);
			}
		case DecalPass:
			mainPass.setPassName(props.emissive != 0 ? "emissiveDecal" : "decal");
			var sv = mainPass.getShader(h3d.shader.pbr.StrengthValues);
			if( sv == null ) {
				sv = new h3d.shader.pbr.StrengthValues();
				mainPass.addShader(sv);
			}
		case TerrainPass:
			mainPass.setPassName("terrain");
		}

		// Blend modes
		switch( props.blend ) {
		case None: this.blendMode = None;
		case Alpha: this.blendMode = Alpha;
		case Add: this.blendMode = Add;
		case AlphaAdd: this.blendMode = AlphaAdd;
		case Multiply: this.blendMode = Multiply;
		case AlphaMultiply: this.blendMode = AlphaMultiply;
		}

		// Enable/Disable AlphaKill
		var tshader = textureShader;
		if( tshader != null ) {
			tshader.killAlpha = props.alphaKill;
			tshader.killAlphaThreshold = 0.5;
		}

		if( props.textureWrap ) {
			var t = texture;
			if( t != null ) t.wrap = Repeat;
			t = specularTexture;
			if( t != null ) t.wrap = Repeat;
			t = normalMap;
			if( t != null ) t.wrap = Repeat;
		}

		mainPass.culling = switch props.culling {
			case None: None;
			case Back: Back;
			case Front: Front;
			case Both: Both;
		};

		shadows = props.shadows;
		if( shadows ) getPass("shadow").culling = mainPass.culling;

		mainPass.depthTest = switch (props.depthTest) {
			case Less: Less;
			case LessEqual: LessEqual;
			case Greater: Greater;
			case GreaterEqual: GreaterEqual;
			case Always: Always;
			case Never: Never;
			case Equal: Equal;
			case NotEqual : NotEqual;
			default: Less;
		}

		if( props.depthWrite != Default )
			mainPass.depthWrite = props.depthWrite == On;

		// Get values from specular texture
		var emit = props.emissive;
		var tex = mainPass.getShader(h3d.shader.pbr.PropsTexture);
		var def = mainPass.getShader(h3d.shader.pbr.PropsValues);
		if( tex == null && def == null ) {
			def = new h3d.shader.pbr.PropsValues();
			mainPass.addShader(def);
		}

		// we should have either one or other
		if( tex != null ) tex.emissiveValue = emit;
		if( def != null ) def.emissiveValue = emit;

		// Parallax
		var ps = mainPass.getShader(h3d.shader.Parallax);
		if( props.parallax > 0 ) {
			if( ps == null ) {
				ps = new h3d.shader.Parallax();
				mainPass.addShader(ps);
			}
			ps.maxLayers = props.parallaxSteps == 0 ? h3d.shader.Parallax.MAX_LAYERS : props.parallaxSteps;
			ps.amount = props.parallax;
			ps.invertBasis = props.invertBasis;
			ps.heightMap = specularTexture;
		} else if( ps != null )
			mainPass.removeShader(ps);

		setColorMask();

		setStencil();

		var p = passes;
		while ( p != null ) {
			if ( props.drawOrder == null )
				mainPass.layer = 0;
			else
				mainPass.layer = Std.parseInt(props.drawOrder);
			p = p.nextPass;
		}

		if ( props.depthPrepass ) {
			var passName = switch (props.mode) {
			case PBR:
				"depthPrepass";
			case Forward:
				"forwardDepthPrepass";
			case BeforeTonemapping:
				"beforeTonemappingDepthPrepass";
			default:
				null;
			}
			if ( passName != null ) {
				mainPass.depthTest = switch ( mainPass.depthTest ) {
				case Less:
					LessEqual;
				case Greater:
					GreaterEqual;
				default:
					mainPass.depthTest;
				}

				var p = allocPass(passName);
				p.depthWrite = true;
				p.depthTest = Less;
				p.culling = mainPass.culling;
				p.setBlendMode(None);
			}
		}

		var sh = mainPass.getShader(h3d.shader.FlipBackFaceNormal);
		if ( props.flipBackFaceNormal && sh == null )
			mainPass.addShader(new h3d.shader.FlipBackFaceNormal());
		else if ( !props.flipBackFaceNormal && sh != null )
			mainPass.removeShader(sh);
	}

	function setColorMask() {
		var props : PbrProps = props;
		mainPass.setColorMask(	props.colorMask & (1<<0) > 0 ? true : false,
								props.colorMask & (1<<1) > 0 ? true : false,
								props.colorMask & (1<<2) > 0 ? true : false,
								props.colorMask & (1<<3) > 0 ? true : false);
	}

	function setStencil() {
		var props : PbrProps = props;
		if( props.enableStencil ) {
			inline function getStencilOp( op : PbrStencilOp ) : Data.StencilOp {
				return switch op {
					case Keep:Keep;
					case Zero:Zero;
					case Replace:Replace;
					case Increment:Increment;
					case IncrementWrap:IncrementWrap;
					case Decrement:Decrement;
					case DecrementWrap:DecrementWrap;
					case Invert:Invert;
				}
			}

			inline function getStencilCompare( op : PbrStencilCompare ) : Data.Compare {
				return switch op {
					case Always:Always;
					case Never:Never;
					case Equal:Equal;
					case NotEqual:NotEqual;
					case Greater:Greater;
					case GreaterEqual:GreaterEqual;
					case Less:Less;
					case LessEqual:LessEqual;
				}
			}

			var s = new Stencil();
			s.setFunc(getStencilCompare(props.stencilCompare), props.stencilValue, props.stencilReadMask, props.stencilWriteMask);
			s.setOp(getStencilOp(props.stencilFailOp), getStencilOp(props.depthFailOp), getStencilOp(props.stencilPassOp));
			mainPass.stencil = s;
		}
		else {
			mainPass.stencil = null;
		}
	}

	override function get_specularTexture() {
		var spec = mainPass.getShader(h3d.shader.pbr.PropsTexture);
		return spec == null ? null : spec.texture;
	}

	override function set_specularTexture(t) {
		if( specularTexture == t )
			return t;
		var props : PbrProps = props;
		var emit = props == null ? 0 : props.emissive;
		var spec = mainPass.getShader(h3d.shader.pbr.PropsTexture);
		var def = mainPass.getShader(h3d.shader.pbr.PropsValues);
		if( t != null ) {
			if( spec == null ) {
				spec = new h3d.shader.pbr.PropsTexture();
				spec.emissiveValue = emit;
				mainPass.addShader(spec);
			}
			spec.texture = t;
			if( def != null )
				mainPass.removeShader(def);
		} else {
			mainPass.removeShader(spec);
			// default values (if no texture)
			if( def == null ) {
				def = new h3d.shader.pbr.PropsValues();
				def.emissiveValue = emit;
				mainPass.addShader(def);
			}
		}


		// parallax
		var ps = mainPass.getShader(h3d.shader.Parallax);
		if( ps != null ) {
			ps.heightMap = t;
			mainPass.removeShader(ps);
			mainPass.addShader(ps);
		}

		return t;
	}

	override function clone( ?m : BaseMaterial ) : BaseMaterial {
		var m = m == null ? new PbrMaterial() : cast m;
		super.clone(m);
		return m;
	}

	#if (editor && js)
	override function editProps() {
		var props : PbrProps = props;
		var layers : Array< { name : String, value : Int }> = hide.Ide.inst.currentConfig.get("material.drawOrder", []);
		return new js.jquery.JQuery('
			<dl>
				<dt>Mode</dt>
				<dd>
					<select field="mode">
						<option value="PBR">PBR</option>
						<option value="Forward">Forward PBR</option>
						<option value="BeforeTonemapping">Before Tonemapping</option>
						<option value="BeforeTonemappingDecal">Before Tonemapping Decal</option>
						<option value="AfterTonemapping">After Tonemapping</option>
						<option value="AfterTonemappingDecal">After Tonemapping Decal</option>
						<option value="Overlay">Overlay</option>
						<option value="Distortion">Distortion</option>
						<option value="Decal">Decal</option>
						<option value="DecalPass">DecalPass</option>
						<option value="TerrainPass">TerrainPass</option>
					</select>
				</dd>
				<dt>Blend</dt>
				<dd>
					<select field="blend">
						<option value="None">None</option>
						<option value="Alpha">Alpha</option>
						<option value="Add">Add</option>
						<option value="AlphaAdd">AlphaAdd</option>
						<option value="Multiply">Multiply</option>
						<option value="AlphaMultiply">AlphaMultiply</option>
					</select>
				</dd>
				<dt>Depth Test</dt>
				<dd>
					<select field="depthTest">
						<option value="Less">Less</option>
						<option value="LessEqual">LessEqual</option>
						<option value="Greater">Greater</option>
						<option value="GreaterEqual">GreaterEqual</option>
						<option value="Always">Always</option>
						<option value="Never">Never</option>
						<option value="Equal">Equal</option>
						<option value="NotEqual">NotEqual</option>
					</select>
				</dd>
				<dt>Depth Write</dt>
				<dd>
					<select field="depthWrite">
						<option value="" selected disabled hidden>Default</option>
						<option value="Default">Default</option>
						<option value="On">On</option>
						<option value="Off">Off</option>
					</select>
				</dd>
				<dt>Emissive</dt><dd><input type="range" min="0" max="10" field="emissive"/></dd>
				<dt>Parallax</dt><dd><input type="range" min="0" max="1" field="parallax"/></dd>
				<dt>Parallax steps</dt><dd><input type="range" min="0" max="255" step="1" field="parallaxSteps"/></dd>
				<dt>Shadows</dt><dd><input type="checkbox" field="shadows"/></dd>
				<dt>Culling</dt>
				<dd>
					<select field="culling">
						<option value="None">None</option>
						<option value="Back">Back</option>
						<option value="Front">Front</option>
						<option value="Both">Both</option>
					</select>
				</dd>
				<dt>AlphaKill</dt><dd><input type="checkbox" field="alphaKill"/></dd>
				<dt>Wrap</dt><dd><input type="checkbox" field="textureWrap"/></dd>
				<dt>Draw Order</dt>
				<dd>
					<select field="drawOrder">
						<option value="" selected disabled hidden>Default</option>
						${[for( i in 0...layers.length ) '<option value="${layers[i].value}">${layers[i].name}</option>'].join("")}
					</select>
				</dd>
				<dt>Depth prepass</dt><dd><input type="checkbox" field="depthPrepass"/></dd>
				<dt>Flip back face normal</dt><dd><input type="checkbox" field="flipBackFaceNormal"/></dd>
				<dt>Ignore collide</dt><dd><input type="checkbox" field="ignoreCollide"/></dd>
			</dl>
		');
	}
	#end

}