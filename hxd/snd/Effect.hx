package hxd.snd;

import hxd.snd.Driver;

/**
	The base class of the sound effects (such as `hxd.snd.effect.Spatialization` or `hxd.snd.effect.Reverb`), added to a `Channel` or `ChannelGroup`.
**/
@:allow(hxd.snd.Manager)
class Effect {
	@:noCompletion public var next : Effect;
	var refs       : Int;
	var retainTime : Float;
	var lastStamp  : Float;
	var driver     : EffectDriver<Dynamic>;
	var priority   : Int;

	/**
		Creates an effect, implemented by the effect driver of the given type.
	**/
	public function new(type : String) {
		this.refs       = 0;
		this.priority   = 0;
		this.retainTime = 0.0;
		this.lastStamp  = 0.0;

		@:privateAccess
		var managerDriver = hxd.snd.Manager.get().driver;
		if (managerDriver != null) {
			this.driver = managerDriver.getEffectDriver(type); 
		}
	}

	// used to evaluate volume modification for virtualization sorting
	/**
		Returns the volume heard after the effect, used to sort the channels and virtualize the inaudible ones.
	**/
	public function applyAudibleVolumeModifier(v : Float) : Float {
		return v;
	}

	// used to tweak channel volume after virtualization sorting
	/**
		Returns the factor applied to the channel volume by the effect.
	**/
	public function getVolumeModifier() : Float {
		return 1;
	}
}