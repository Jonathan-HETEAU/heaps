package hxd.fmt.grd;

/**
	A gradient of a Photoshop gradients file.
**/
class Gradient {
	/**
		The name of the gradient.
	**/
	public var name              : String;
	/**
		The smoothness of the gradient (the maximum location of the stops).
	**/
	public var interpolation     : Float;
	/**
		The color stops.
	**/
	public var colorStops        : Array<ColorStop>;
	/**
		The opacity stops.
	**/
	public var transparencyStops : Array<TransparencyStop>;
	/**
		The color stops with their opacity interpolated from the opacity stops.
	**/
	public var gradientStops     : Array<GradientStop>;

	/**
		Creates an empty gradient.
	**/
	public function new() {
		colorStops = [];
		transparencyStops = [];
		gradientStops = [];
	}
}

/**
	A color stop of a gradient.
**/
class ColorStop {
	/**
		The color.
	**/
	public var color    : Color;
	/**
		The location of the stop, from `0` to `interpolation`.
	**/
	public var location : Int;
	/**
		The location of the middle of the transition to the next stop, in percent.
	**/
	public var midpoint : Int;
	/**
		The source of the color.
	**/
	public var type     : ColorStopType;

	/**
		Creates a stop.
	**/
	public function new() {}
}

/**
	The source of the color of a stop: a user color, or the background or foreground color of Photoshop.
**/
enum ColorStopType {
	/**
		A color chosen by the user.
	**/
	User;
	/**
		The background color.
	**/
	Background;
	/**
		The foreground color.
	**/
	Foreground;
}

/**
	An opacity stop of a gradient.
**/
class TransparencyStop  {
	/**
		The opacity, in percent.
	**/
	public var opacity  : Float;
	/**
		The location of the stop.
	**/
	public var location : Int;
	/**
		The location of the middle of the transition to the next stop, in percent.
	**/
	public var midpoint : Int;

	/**
		Creates a stop.
	**/
	public function new() {}
}

/**
	A color of a gradient: RGB (`0` to `255`) or HSB (hue in degrees, saturation and brightness in percent).
**/
enum Color {
	/**
		A RGB color, with components from `0` to `255`.
	**/
	RGB(r:Float, g:Float, b:Float);
	/**
		A HSB color: hue in degrees, saturation and brightness in percent.
	**/
	HSB(h:Float, s:Float, b:Float);
}

/**
	A color stop with its opacity.
**/
class GradientStop {
	/**
		The opacity, in percent.
	**/
	public var opacity   : Float;
	/**
		The color stop.
	**/
	public var colorStop : ColorStop;

	/**
		Creates a stop.
	**/
	public function new() {}
}

/**
	The gradients of a Photoshop gradients file (`.grd`), by name.
**/
class Data extends haxe.ds.StringMap<Gradient> { }
