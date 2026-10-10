package hxd.impl;

#if hl
/**
	Create an app context to allow multiple apps to run in parallel.
	Requires compilation with -D multidriver
**/
class AppContext {

	static var contexts : Array<AppContext> = [];

	/**
		The window of the application.
	**/
	public var win : hxd.Window;
	/**
		The engine of the application.
	**/
	public var engine : h3d.Engine;
	/**
		The application.
	**/
	public var app : hxd.App;

	/**
		Creates the context of the application, for its current window and engine. All the contexts are updated by the main loop.
	**/
	public function new(app) {
		#if !multidriver
		throw "Needs -D multidriver";
		#end
		this.app = app;
		win = hxd.Window.getInstance();
		win.onClose = function() {
			@:privateAccess app.dispose();
			return true;
		};
		engine = h3d.Engine.getCurrent();
		var curReady = engine.onReady;
		engine.onReady = function() {
			curReady();
			reset();
			hxd.System.setLoop(run);
		};
		contexts.push(this);
		reset();
	}

	/**
		Runs a frame of the application.
	**/
	public function update() {
		if( app.sevents == null )
			return;
		engine.setCurrent();
		@:privateAccess {
			hxd.System.loopFunc = app.mainLoop;
			hxd.System.mainLoop();
			hxd.System.loopFunc = run;
		}
		reset();
	}

	static function run() {
		for( c in contexts )
			c.update();
	}

	/**
		Clears the current engine and window, before creating a new application.
	**/
	public static function reset() @:privateAccess {
		h3d.Engine.CURRENT = null;
		hxd.Window.inst = null;
	}

	/**
		Makes the engine of the application the current one.
	**/
	public static function set( app : hxd.App ) {
		for( c in contexts )
			if( c.app == app )
				c.engine.setCurrent();
	}

}
#end
