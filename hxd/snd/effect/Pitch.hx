package hxd.snd.effect;

/**
	Changes the pitch (and speed) of the sound.
**/
class Pitch extends hxd.snd.Effect {
	/**
		The pitch multiplier: `1` is the normal pitch, `2` one octave higher.
	**/
	public var value : Float;

	/**
		Creates a pitch effect.
	**/
	public function new(value = 1.0) {
		super("pitch");
		this.value =  value;
	}
}