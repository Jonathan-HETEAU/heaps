package hxd.fmt.spine;

/**
	A bone of a Spine skeleton.
**/
class Bone {

	/**
		The name of the bone.
	**/
	public var name : String;
	/**
		The parent bone, or `null`.
	**/
	public var parent : Bone;
	/**
		The children bones.
	**/
	public var childs : Array<Bone>;

	/**
		The X position, relative to the parent.
	**/
	public var x : Float;
	/**
		The Y position, relative to the parent.
	**/
	public var y : Float;
	/**
		The rotation, in radians.
	**/
	public var rotation : Float;
	/**
		The X scale.
	**/
	public var scaleX : Float;
	/**
		The Y scale.
	**/
	public var scaleY : Float;
	/**
		The length of the bone.
	**/
	public var length : Float;

	/**
		Tells if the bone is flipped horizontally.
	**/
	public var flipX : Bool;
	/**
		Tells if the bone is flipped vertically.
	**/
	public var flipY : Bool;
	/**
		Tells if the bone inherits the scale of its parent.
	**/
	public var inheritScale : Bool;
	/**
		Tells if the bone inherits the rotation of its parent.
	**/
	public var inheritRotation : Bool;

	/**
		Creates a bone.
	**/
	public function new() {
		childs = [];
	}

}

/**
	A slot of a Spine skeleton: an attachment point of a bone, drawn in order.
**/
class Slot {

	/**
		The name of the slot.
	**/
	public var name : String;
	/**
		The bone of the slot.
	**/
	public var bone : Bone;
	/**
		The name of the default attachment.
	**/
	public var attachment : String;
	/**
		The color of the slot.
	**/
	public var color : h3d.Vector4;
	/**
		The blend mode of the slot.
	**/
	public var blendMode : h2d.BlendMode;

	/**
		Creates a slot.
	**/
	public function new() {
		color = new h3d.Vector4(1, 1, 1, 1);
	}
}

/**
	An image attached to a slot of a skin.
**/
class Attachment {
	/**
		The skin of the attachment.
	**/
	public var skin : Skin;
	/**
		The slot of the attachment.
	**/
	public var slot : Slot;
	/**
		The color of the attachment.
	**/
	public var color : h3d.Vector4;
	/**
		Creates an attachment.
	**/
	public function new() {
		color = new h3d.Vector4(1, 1, 1, 1);
	}
}

/**
	A rectangular image attachment.
**/
class RegionAttachment extends Attachment {
	/**
		The width of the image.
	**/
	public var width : Float;
	/**
		The height of the image.
	**/
	public var height : Float;
}

/**
	A vertex of a skinned mesh attachment, influenced by up to 3 bones.
**/
class SkinnedVertice {
	/**
		The U texture coordinate.
	**/
	public var u : Float;
	/**
		The V texture coordinate.
	**/
	public var v : Float;
	/**
		The X position relative to the first bone.
	**/
	public var vx0 : Float;
	/**
		The Y position relative to the first bone.
	**/
	public var vy0 : Float;
	/**
		The weight of the first bone.
	**/
	public var vw0 : Float;
	/**
		The X position relative to the second bone.
	**/
	public var vx1 : Float;
	/**
		The Y position relative to the second bone.
	**/
	public var vy1 : Float;
	/**
		The weight of the second bone.
	**/
	public var vw1 : Float;
	/**
		The X position relative to the third bone.
	**/
	public var vx2 : Float;
	/**
		The Y position relative to the third bone.
	**/
	public var vy2 : Float;
	/**
		The weight of the third bone.
	**/
	public var vw2 : Float;
	/**
		The first bone.
	**/
	public var bone0 : Bone;
	/**
		The second bone.
	**/
	public var bone1 : Bone;
	/**
		The third bone.
	**/
	public var bone2 : Bone;
	/**
		Creates a vertex.
	**/
	public function new() {
	}
}

/**
	A mesh attachment deformed by the bones.
**/
class SkinnedMeshAttachment extends Attachment {
	/**
		The vertices.
	**/
	public var vertices : Array<SkinnedVertice> = [];
	/**
		The vertex indexes of the triangles.
	**/
	public var triangles : Array<Int>;
}

/**
	A set of attachments of a Spine skeleton.
**/
class Skin {
	/**
		The name of the skin.
	**/
	public var name : String;
	/**
		The attachments.
	**/
	public var attachments : Array<Attachment>;
	/**
		Creates a skin.
	**/
	public function new() {
		attachments = [];
	}
}

/**
	The base class of the animation curves.
**/
class AnimationCurve {
	/**
		Creates a curve.
	**/
	public function new() {
	}
}

/**
	The animation of a bone.
**/
class BoneCurve extends AnimationCurve {
	/**
		The animated bone.
	**/
	public var bone : Bone;
	/**
		The translation keys.
	**/
	public var translate : haxe.ds.Vector<Float>;
	/**
		The scale keys.
	**/
	public var scale : haxe.ds.Vector<Float>;
	/**
		The rotation keys.
	**/
	public var rotate : haxe.ds.Vector<Float>;
	/**
		Creates the curve of the bone.
	**/
	public function new(bone) {
		super();
		this.bone = bone;
	}
}

/**
	A Spine animation.
**/
class Animation {
	/**
		The name of the animation.
	**/
	public var name : String;
	/**
		The curves of the animation.
	**/
	public var curves : Array<AnimationCurve>;
	/**
		Creates an animation.
	**/
	public function new() {
		curves = [];
	}
}
