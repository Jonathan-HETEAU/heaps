package hxd.fmt.kframes;


/**
	A 2D size or point of a keyframes file.
**/
abstract KFSize<T:Float>(Array<T>) {
	/**
		The X value.
	**/
	public var x(get, set) : T;
	/**
		The Y value.
	**/
	public var y(get, set) : T;
	inline function get_x() return this[0];
	inline function get_y() return this[1];
	inline function set_x(v) return this[0] = v;
	inline function set_y(v) return this[1] = v;
}

/**
	The properties animated by a keyframes animation.
**/
enum abstract KFAnimProp(String) {
	var AnchorPoint = "ANCHOR_POINT";
	var XPosition = "X_POSITION";
	var YPosition = "Y_POSITION";
	var Scale = "SCALE";
	var Opacity = "OPACITY";
	var Rotation = "ROTATION";
}

/**
	A key of a keyframes animation.
**/
typedef KFAnimValue = {
	/**
		The frame of the key.
	**/
	var start_frame : Int;
	/**
		The values of the key.
	**/
	var data : Array<Float>;
}

/**
	The animation of a property of a feature.
**/
typedef KFAnimation = {
	/**
		The animated property.
	**/
	var property : KFAnimProp;
	/**
		The keys.
	**/
	var key_values : Array<KFAnimValue>;
	/**
		The control points of the bezier easing curve between each pair of keys.
	**/
	var timing_curves : Array<Array<KFSize<Float>>>;
}

/**
	A feature (layer) of a keyframes file.
**/
typedef KFFeature = {
	/**
		The name of the feature.
	**/
	var name : String;
	/**
		The identifier of the feature.
	**/
	var feature_id : Int;
	/**
		The size of the feature.
	**/
	var size : KFSize<Int>;
	/**
		The animations of the properties of the feature.
	**/
	var feature_animations : Array<KFAnimation>;
	/**
		The image displayed by the feature.
	**/
	@:optional var backed_image : String;
	/**
		The first frame where the feature is visible.
	**/
	@:optional var from_frame : Int;
	/**
		The last frame where the feature is visible.
	**/
	@:optional var to_frame : Int;
}

/**
	The content of a keyframes file: After Effects animations exported with the Keyframes tool (https://github.com/HeapsIO/Keyframes), played by `h2d.KeyFrames`.
**/
typedef KeyframesFile = {
	/**
		The version of the format.
	**/
	var formatVersion : String;
	/**
		The name of the composition.
	**/
	var name : String;
	/**
		The key of the composition.
	**/
	var key : Int;
	/**
		The number of frames per second.
	**/
	var frame_rate : Float;
	/**
		The number of frames.
	**/
	var animation_frame_count : Int;
	/**
		The size of the composition.
	**/
	var canvas_size : KFSize<Int>;
	/**
		The features (layers).
	**/
	var features : Array<KFFeature>;
	/**
		The animation groups (not supported).
	**/
	var animation_groups : Array<{}>;
}

