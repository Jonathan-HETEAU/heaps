package h3d.scene.pbr;

/**
	The light system of the PBR renderer. Lights are applied in a deferred lighting pass, except for the objects drawn
	in the forward passes, which read the lights from `lightBuffer`.
**/
@:access(h3d.scene.pbr.Light)
class LightSystem extends h3d.scene.LightSystem {

	/**
		The buffer of lights used by the forward passes.
	**/
	public var lightBuffer : h3d.scene.pbr.LightBuffer;
	/**
		`true` while the renderer draws the forward passes.
	**/
	public var forwardMode = false;
	/**
		Additional shaders applied with each light in the lighting pass.
	**/
	public var lightingShaders : Array<hxsl.Shader> = [];

	/**
		Creates the light system.
	**/
	public function new() {
		super();
		lightBuffer = new h3d.scene.pbr.LightBuffer();
	}

	override function initGlobals( globals : hxsl.Globals ) {
		super.initGlobals(globals);
		if( forwardMode && ctx != null && lightBuffer.shadowHandles.length > 0 )
			ctx.selectTextureHandles(lightBuffer.shadowHandles);
	}

	override function computeLight( obj : h3d.scene.Object, shaders : hxsl.ShaderList ) : hxsl.ShaderList {
		var light = Std.downcast(obj, h3d.scene.pbr.Light);
		if( light != null ) {
			shaders = ctx.allocShaderList(light.shader, shaders);
			if( light.shadows.shader != null && light.shadows.mode != None )
				shaders = ctx.allocShaderList(light.shadows.shader, shaders);
			for( s in lightingShaders )
				shaders = ctx.allocShaderList(s, shaders);
		} else if( forwardMode ) {
			var found = false;
            for( s in shaders ) {
                var forward = Std.downcast(s, h3d.shader.pbr.DefaultForward);
                if( forward != null ) {
                    lightBuffer.setBuffers(forward);
                    found = true;
                    break;
                }
            }
            if( !found )
                shaders = ctx.allocShaderList(lightBuffer.defaultForwardShader, shaders);
		}
		return shaders;
	}

	/**
		Draws the shadow map of `light` with the given shadow casters.
	**/
	public function drawShadows( light : Light, passes : h3d.pass.PassList ) {
		light.shadows.setContext(ctx);
		light.shadows.draw(passes);
		passes.reset();
	}

	/**
		Draws the lights without volume (such as directional lights) as full screen passes.
		@param shadows If `false`, the shadows of these lights are ignored.
	**/
	public function drawScreenLights( r : h3d.scene.Renderer, lightPass : h3d.pass.ScreenFx<Dynamic>, shadows : Bool = true ) {
		var plight = @:privateAccess ctx.lights;
		while( plight != null ) {
			var light = Std.downcast(plight, h3d.scene.pbr.Light);
			if( light != null && light.primitive == null ) {
				var hasShadow = shadows && light.shadows.shader != null && light.shadows.mode != None;
				if( hasShadow ) lightPass.addShader(light.shadows.shader);
				lightPass.addShader(light.shader);
				for( s in lightingShaders )
					lightPass.addShader(s);
				lightPass.render();
				lightPass.removeShader(light.shader);
				for( s in lightingShaders )
					lightPass.removeShader(s);
				if( hasShadow ) lightPass.removeShader(light.shadows.shader);
			}
			plight = plight.next;
		}
	}

	override function dispose() {
		lightBuffer.dispose();
	}
}
