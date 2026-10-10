package hxd.fmt.spine;
import haxe.DynamicAccess;

/**
	The interpolation of a key: `"stepped"`, `"linear"`, or the 4 factors of a bezier curve.
**/
typedef JCurve = haxe.ds.Either<String,Array<Float>>;

/**
	The keys of a bone animation, in the Spine JSON format.
**/
typedef JBoneAnimation = {
	/**
		The rotation keys.
	**/
	@:optional var rotate : Array<{ time : Float, angle : Float, ?curve : JCurve }>;
	/**
		The scale keys.
	**/
	@:optional var scale : Array<{ time : Float, x : Float, y : Float, ?curve : JCurve }>;
	/**
		The translation keys.
	**/
	@:optional var translate : Array<{ time : Float, x : Float, y : Float, ?curve : JCurve }>;
	/**
		The horizontal flip keys.
	**/
	@:optional var flipX : Array<{ time : Float, x : Bool }>;
	/**
		The vertical flip keys.
	**/
	@:optional var flipY : Array<{ time : Float, y : Bool }>;
}

/**
	An animation, in the Spine JSON format.
**/
typedef JAnimation = {
	/**
		The bone animations, by bone name.
	**/
	@:optional var bones : DynamicAccess<JBoneAnimation>;
	/**
		The slot animations.
	**/
	@:optional var slots : Dynamic;
	/**
		The inverse kinematics animations.
	**/
	@:optional var ik : Dynamic;
	/**
		The free form deformation animations.
	**/
	@:optional var ffd : Dynamic;
	/**
		The draw order keys.
	**/
	@:optional var drawOrder : Dynamic;
	/**
		The event keys.
	**/
	@:optional var events : Dynamic;
}

/**
	A bone, in the Spine JSON format.
**/
typedef JBone = {
	/**
		The color of the bone in the editor.
	**/
	var color : String;
	/**
		The name of the bone.
	**/
	var name : String;
	/**
		The X position.
	**/
	@:optional var x : Float;
	/**
		The Y position.
	**/
	@:optional var y : Float;
	/**
		The X scale.
	**/
	@:optional var scaleX : Float;
	/**
		The Y scale.
	**/
	@:optional var scaleY : Float;
	/**
		The rotation, in degrees.
	**/
	@:optional var rotation : Float;
	/**
		The length of the bone.
	**/
	@:optional var length : Float;
	/**
		The name of the parent bone.
	**/
	@:optional var parent : String;
	/**
		Tells if the bone is flipped horizontally.
	**/
	@:optional var flipX : Bool;
	/**
		Tells if the bone is flipped vertically.
	**/
	@:optional var flipY : Bool;
	/**
		Tells if the bone inherits the scale of its parent.
	**/
	@:optional var inheritScale : Bool;
	/**
		Tells if the bone inherits the rotation of its parent.
	**/
	@:optional var inheritRotation : Bool;
}

/**
	The skeleton information, in the Spine JSON format.
**/
typedef JSkeleton = {
	/**
		The hash of the skeleton data.
	**/
	var hash : String;
	/**
		The width of the skeleton.
	**/
	var width : Float;
	/**
		The height of the skeleton.
	**/
	var height : Float;
	/**
		The path of the images.
	**/
	var images : String;
	/**
		The version of Spine.
	**/
	var spine : String;
}

/**
	An attachment, in the Spine JSON format.
**/
typedef JAttachment = {
	?type : String,
	?color : String,
};

/**
	A region attachment, in the Spine JSON format.
**/
typedef JRegionAttach = { > JAttachment,
	/**
		The width of the image.
	**/
	var width : Float;
	/**
		The height of the image.
	**/
	var height : Float;
	/**
		The X position.
	**/
	@:optional var x : Float;
	/**
		The Y position.
	**/
	@:optional var y : Float;
	/**
		The rotation, in degrees.
	**/
	@:optional var rotation : Float;
	/**
		The X scale.
	**/
	@:optional var scaleX : Float;
	/**
		The Y scale.
	**/
	@:optional var scaleY : Float;
};

/**
	A skinned mesh attachment, in the Spine JSON format.
**/
typedef JSkinMeshAttach = { >JAttachment,
	/**
		The width of the image.
	**/
	var width : Int;
	/**
		The height of the image.
	**/
	var height : Int;
	/**
		The number of vertices of the hull.
	**/
	var hull : Int;
	/**
		The edges, for the editor.
	**/
	var edges : Array<Int>;
	/**
		The vertex indexes of the triangles.
	**/
	var triangles : Array<Int>;
	/**
		The texture coordinates.
	**/
	var uvs : Array<Float>;
	/**
		The bone weights and positions of the vertices.
	**/
	var vertices : Array<Float>;
}

/**
	The attachments of a skin, by slot name and attachment name, in the Spine JSON format.
**/
typedef JSkin = DynamicAccess<DynamicAccess<JAttachment>>;

/**
	A slot, in the Spine JSON format.
**/
typedef JSlot = {
	/**
		The name of the slot.
	**/
	var name : String;
	/**
		The name of the default attachment.
	**/
	var attachment : String;
	/**
		Not read by the loader.
	**/
	var body : String;
	/**
		The blend mode.
	**/
	@:optional var blend : String;
	/**
		The color.
	**/
	@:optional var color : String;
}

/**
	The content of a Spine JSON file.
**/
typedef JsonData = {
	/**
		The animations, by name.
	**/
	var animations : DynamicAccess<JAnimation>;
	/**
		The bones.
	**/
	var bones : Array<JBone>;
	/**
		The inverse kinematics constraints.
	**/
	var ik : Dynamic;
	/**
		The skeleton information.
	**/
	var skeleton : JSkeleton;
	/**
		The skins, by name.
	**/
	var skins : DynamicAccess<JSkin>;
	/**
		The slots.
	**/
	var slots : Array<JSlot>;
}
