package hxd.snd;

/**
	The common properties of a `Channel` and a `ChannelGroup`: volume, fading, priority and effects.
**/
@:allow(hxd.snd.Manager)
class ChannelBase {

	/**
		The priority used to select the channels played when there are more channels than hardware sources. Higher values are played first.
	**/
	public var priority       : Float = 0.;
	/**
		If set, the channel is silent (and virtualized).
	**/
	public var mute           : Bool = false;
	/**
		The effects applied to the channel.
	**/
	public var effects        : Array<Effect> = [];
	/**
		The effects currently bound to the hardware source of the channel.
	**/
	public var bindedEffects  : Array<Effect> = [];

	/**
		The volume, from `0` to `1`. Setting it stops the current fade.
	**/
	public var volume(default, set) : Float = 1.;
	var currentFade : { start : Float, duration : Float, startVolume : Float, targetVolume : Float, onEnd : Void -> Void };
	var currentVolume : Float; // global volume

	function new() {
	}

	/**
		Returns the first effect of the given class, or `null`.
	**/
	public function getEffect<T:Effect>( etype : Class<T> ) : T {
		if(effects == null) return null;  // Already released
		for (e in effects) {
			var e = Std.downcast(e, etype);
			if (e != null) return e;
		}
		return null;
	}

	function set_volume(v) {
		currentFade = null;
		return volume = v;
	}

	/**
		Changes the volume linearly to `volume` over `time` seconds, then calls `onEnd`.
	**/
	public function fadeTo( volume : Float, ?time = 1., ?onEnd ) {
		currentFade = { start : haxe.Timer.stamp(), duration : time, startVolume : this.volume, targetVolume : volume, onEnd : onEnd };
	}

	function updateCurrentVolume( now : Float ) {
		if( currentFade != null ) {
			var f = currentFade;
			var dt = now - f.start;
			if( dt >= f.duration ) {
				volume = f.targetVolume;
				if( f.onEnd != null ) f.onEnd();
			} else {
				volume = f.startVolume + (dt / f.duration) * (f.targetVolume - f.startVolume);
				currentFade = f; // restore
			}
		}
		currentVolume = volume;
	}

	/**
		Adds an effect to the channel and returns it. Throws if it was already added.
	**/
	@:access(hxd.snd.Manager)
	public function addEffect<T:Effect>( e : T ) : T {
		if (e == null) throw "Can't add null effect";
		if (effects.indexOf(e) >= 0) throw "effect already added on this channel";
		effects.push(e);
		return e;
	}

	/**
		Removes an effect from the channel.
	**/
	@:access(hxd.snd.Manager)
	public function removeEffect( e : Effect ) {
		effects.remove(e);
	}

}