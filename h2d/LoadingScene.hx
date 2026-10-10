package h2d;

/**
	A scene that can be rendered during a long synchronous loading: each call to `render` processes the window events and presents the frame, at most once every `presentCooldown` seconds.
**/
class LoadingScene extends h2d.Scene {
	var renderTarget : h3d.mat.Texture;
	var presentCooldown : Float;
	/**
		Creates the scene, rendered at most once every `presentCooldown` seconds.
	**/
	public function new(presentCooldown : Float) {
		super();
		this.presentCooldown = presentCooldown;
		renderTarget = new h3d.mat.Texture(width, height, [Target]);
	}

	var lastPresentTime : Float = 0.0;
	public override function render( engine : h3d.Engine ) {
		var time = haxe.Timer.stamp();
		if ( time - lastPresentTime < presentCooldown)
			return;
		lastPresentTime = time;

	#if usesys
		haxe.System.emitEvents(@:privateAccess hxd.Window.inst.event);
	#elseif hldx
		dx.Loop.processEvents(@:privateAccess hxd.Window.inst.onEvent);
	#elseif hlsdl
		sdl.Sdl.processEvents(@:privateAccess hxd.Window.inst.onEvent);
	#end

		if ( renderTarget.width != engine.width || renderTarget.height != engine.height) {
			renderTarget.dispose();
			renderTarget = new h3d.mat.Texture(engine.width, engine.height, [Target]);
		}

		engine.pushTarget(renderTarget);
		super.render(engine);
		engine.popTarget();
		h3d.pass.Copy.run(renderTarget, null);
		engine.driver.present();
	}

	override function onRemove() {
		super.onRemove();
		if ( renderTarget != null )
			renderTarget.dispose();
	} 
}
