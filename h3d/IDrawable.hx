package h3d;

/**
	Something which can be rendered by the engine, such as a `h3d.scene.Scene` or a `h2d.Scene` (see `hxd.App`).
**/
interface IDrawable {
	/**
		Renders the content to the current render target.
	**/
	public function render( engine : Engine ) : Void;
}