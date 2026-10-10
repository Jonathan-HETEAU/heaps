package h3d.impl;

#if render_graph
import h3d.Engine.DepthBinding;

/**
	Records the render targets used, cleared and sampled by each step of a frame (`-D render_graph`), and saves them as JSON, to visualize the rendering.
**/
class RenderGraph {
	static var enable = false;
	/**
		The recorded frame.
	**/
	public static var frame : Frame;

	/**
		Starts recording: the driver is replaced by a `RenderGraphDriver`.
	**/
	public static function start() {
		enable = true;
		frame = new Frame();
		var e = h3d.Engine.getCurrent();
		e.setDriver(new h3d.impl.RenderGraphDriver(e.driver));
	}

	/**
		Starts a new step of the frame.
	**/
	public static function mark(step : String) {
		if ( !enable ) return;
		frame.mark(step);
	}

	/**
		Records that several render targets are used.
	**/
	public static function setTargets(targets : Array<h3d.mat.Texture>, depthBinding : DepthBinding ) {
		if ( !enable ) return;
		frame.setTargetSection(new TargetsSection(targets, depthBinding));
	}

	/**
		Records that a render target is used.
	**/
	public static function setTarget(target : h3d.mat.Texture, layer : Int, mipLevel : Int, depthBinding : DepthBinding) {
		if ( !enable ) return;
		frame.setTargetSection(new TargetSection(target, layer, mipLevel, depthBinding));
	}

	/**
		Records that only a depth target is used.
	**/
	public static function setDepth(target : h3d.mat.Texture) {
		if ( !enable ) return;
		frame.setTargetSection(new DepthSection(target));
	}

	/**
		Records that the current target is cleared.
	**/
	public static function clearTarget() {
		if ( !enable ) return;
		frame.clearTarget();
	}

	/**
		Records that a render target texture is sampled.
	**/
	public static function sampleTexture(t : h3d.mat.Texture) {
		if ( !enable ) return;
		if ( t == null || !t.flags.has(Target) ) return;
		frame.sampleTexture(t);
	}

	/**
		Saves the recorded frame as JSON.
	**/
	public static function save(outFile: String) {
		if ( frame == null ) return;
		var content = frame.dump();
		sys.io.File.saveContent(outFile, haxe.Json.stringify(content, "\t"));
	}

	/**
		Stops recording and restores the driver.
	**/
	public static function end() {
		if ( !enable ) return;
		enable = false;
		var e = h3d.Engine.getCurrent();
		var logDriver = cast(e.driver, h3d.impl.RenderGraphDriver);
		e.setDriver(@:privateAccess logDriver.d);
	}

	/**
		Releases the recorded frame.
	**/
	public static function dispose() {
		frame = null;
	}

}

/**
	A recorded frame: its steps and the textures used.
**/
class Frame {
	var curStep : String;
	/**
		The steps of the frame.
	**/
	public var sections : Array<RenderSection>;
	/**
		The data of the textures used.
	**/
	public var textures : Map<h3d.mat.Texture, TexData>;

	/**
		Creates an empty frame.
	**/
	public function new() {
		sections = [];
		textures = [];
	}

	/**
		Registers a texture.
	**/
	public function useTexture(t : h3d.mat.Texture) {
		if ( t != null && textures.get(t) == null )
			textures.set(t, @:privateAccess new TexData(t));
	}

	/**
		Returns the data of a texture.
	**/
	public function getTextureData(t : h3d.mat.Texture) {
		if ( t == null )
			return null;
		useTexture(t);
		return textures.get(t);
	}

	/**
		Returns the identifier of a texture.
	**/
	public function getTextureId(t : h3d.mat.Texture) {
		if ( t == null )
			return -1;
		return getTextureData(t).id;
	}

	/**
		Returns the data of the texture of the identifier.
	**/
	public function getTextureDataById(id:Int):TexData {
		for (t in textures)
			if (t.id == id)
				return t;
		return null;
	}

	/**
		Starts a new step.
	**/
	public function mark(step : String) {
		if ( curStep != step ) {
			curStep =  step;
			sections.push(new RenderSection(step));
		}
	}

	/**
		Returns the current step.
	**/
	public function getCurSection() {
		if ( sections.length == 0 ) {
			var curSection = new RenderSection("begin");
			sections.push(curSection);
			return curSection;
		}
		return sections[sections.length - 1];
	}

	/**
		Returns the current target section of the current step.
	**/
	public function getCurTargetSection() {
		var curSection = getCurSection();
		var curTargetSection = curSection.getCurSection();
		if ( curTargetSection == null )
			curSection.setTargetSection(new TargetSection(h3d.Engine.getCurrent().getCurrentTarget(), 0, 0, NotBound));
		return curSection.getCurSection();
	}

	/**
		Starts a new target section.
	**/
	public function setTargetSection(targetSection : TargetSectionBase) {
		var curSection = getCurSection();
		curSection.setTargetSection(targetSection);
	}

	/**
		Records a clear of the current target.
	**/
	public function clearTarget() {
		getCurTargetSection().clearTarget();
	}

	/**
		Records that a texture is sampled.
	**/
	public function sampleTexture(t : h3d.mat.Texture) {
		getCurTargetSection().sampleTexture(t);
	}

	/**
		Returns the frame as JSON data.
	**/
	public function dump() {
		var tex = [for ( t in textures) t];
		tex.sort((t1,t2) -> return t1.id > t2.id ? 1 : -1);
		return {
			renderSections : [for ( s in sections ) s.dump()],
			textures : tex
		}
	}
}

/**
	A step of a recorded frame.
**/
class RenderSection {
	/**
		The name of the step.
	**/
	public var step : String;
	/**
		The target sections of the step.
	**/
	public var targetSections : Array<TargetSectionBase>;

	/**
		Creates a step.
	**/
	public function new(step : String) {
		this.step = step;
		targetSections = [];
	}

	/**
		Returns the current target section.
	**/
	public function getCurSection() {
		return targetSections[targetSections.length - 1];
	}

	/**
		Starts a new target section.
	**/
	public function setTargetSection(targetSection : TargetSectionBase) {
		targetSections.push(targetSection);
	}

	/**
		Returns the step as JSON data.
	**/
	public function dump() {
		return {
			step : step,
			sections : [for ( ts in targetSections ) ts.dump()],
		}
	}
}

/**
	The draws into the same render targets, with the events that happened.
**/
class TargetSectionBase {
	/**
		How the depth buffer is bound.
	**/
	public var depthBinding : DepthBinding;
	/**
		The events (clears and texture samplings).
	**/
	public var events : Array<Event>;

	/**
		Creates a section.
	**/
	public function new(depthBinding : DepthBinding) {
		this.depthBinding = depthBinding;
		events = [];
	}

	/**
		Records a clear.
	**/
	public function clearTarget() {
		events.push(new ClearEvent());
	}

	/**
		Records that a texture is sampled.
	**/
	public function sampleTexture(t : h3d.mat.Texture) {
		events.push(new SampleTextureEvent(t));
	}

	/**
		Returns the identifiers of the target textures.
	**/
	public function getTextureIds() : Array<Int> {
		return [];
	}

	/**
		Returns the section as JSON data.
	**/
	public function dump() : Dynamic {
		return {
			events : [for ( e in events ) e.dump()],
		};
	}

}

/**
	A section drawing into a single render target.
**/
class TargetSection extends TargetSectionBase {
	/**
		The identifier of the target texture.
	**/
	public var textureId : Int;
	/**
		The layer of the target texture.
	**/
	public var layer : Int;
	/**
		The mip level of the target texture.
	**/
	public var mipLevel : Int;

	/**
		Creates a section.
	**/
	public function new(target : h3d.mat.Texture, layer : Int, mipLevel : Int, depthBinding : DepthBinding) {
		super(depthBinding);
		this.textureId = RenderGraph.frame.getTextureId(target);
		this.layer = layer;
		this.mipLevel = mipLevel;
	}

	override function getTextureIds() {
		return [textureId];
	}

	override function dump() {
		var res = super.dump();
		res.texture = textureId;
		res.layer = layer;
		res.mipLevel = mipLevel;
		return res;
	}
}

/**
	A section drawing into several render targets.
**/
class TargetsSection extends TargetSectionBase {
	/**
		The identifiers of the target textures.
	**/
	public var textureIds : Array<Int>;

	/**
		Creates a section.
	**/
	public function new(targets : Array<h3d.mat.Texture>, depthBinding : DepthBinding) {
		super(depthBinding);
		this.textureIds = [];
		for ( t in targets )
			textureIds.push(RenderGraph.frame.getTextureId(t));
	}

	override function getTextureIds() {
		return textureIds;
	}

	override function dump() {
		var res = super.dump();
		res.textures = textureIds;
		return res;
	}
}

/**
	A section drawing only into a depth texture.
**/
class DepthSection extends TargetSectionBase {
	/**
		The identifier of the depth texture.
	**/
	public var depthId : Int;

	/**
		Creates a section.
	**/
	public function new(depth : h3d.mat.Texture) {
		super(DepthOnly);
		this.depthId = RenderGraph.frame.getTextureId(depth);
	}

	override function dump() {
		var res = super.dump();
		res.depth = depthId;
		return res;
	}
}

/**
	The data of a texture used by a recorded frame.
**/
class TexData {
	static var CUR_ID : Int = 0;
	/**
		The name of the texture.
	**/
	public var name : String;
	/**
		The width of the texture.
	**/
	public var width : Int;
	/**
		The height of the texture.
	**/
	public var height : Int;
	/**
		The format of the texture.
	**/
	public var fmt : hxd.PixelFormat;
	/**
		The identifier of the texture.
	**/
	public var id(default, null) : Int;

	function new(t : h3d.mat.Texture) {
		name = t.name;
		width = t.width;
		height = t.height;
		fmt = t.format;
		id = CUR_ID;
		CUR_ID++;
	}

	/**
		Returns the data as JSON.
	**/
	public function dump() {
		return {
			name : name,
			width : width,
			height : height,
			fmt : fmt.getName(),
			id : id,
		}
	}
}

/**
	An event of a target section.
**/
class Event {
	/**
		Creates an event.
	**/
	public function new() {

	}

	/**
		Returns the event as JSON data.
	**/
	public function dump() : Dynamic {
		return {};
	}
}

/**
	A clear of the target.
**/
class ClearEvent extends Event {
	/**
		Creates the event.
	**/
	public function new() {
		super();
	}

	override function dump() {
		var res = super.dump();
		res.event = "clear event";
		return res;
	}
}

/**
	A sampling of a render target texture.
**/
class SampleTextureEvent extends Event {
	/**
		The identifier of the sampled texture.
	**/
	public var textureId : Int;
	/**
		Creates the event.
	**/
	public function new(t : h3d.mat.Texture) {
		super();
		textureId = RenderGraph.frame.getTextureId(t);
	}

	override function dump() {
		var res = super.dump();
		res.event = "sample texture";
		res.texture = textureId;
		return res;
	}
}
#end