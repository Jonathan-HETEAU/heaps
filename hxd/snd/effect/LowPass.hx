package hxd.snd.effect;

/**
	A low pass filter, attenuating the high frequencies.
**/
class LowPass extends hxd.snd.Effect {
	/**
		The gain of the high frequencies, from `0` (removed) to `1` (unfiltered).
	**/
	public var gainHF : Float;

	/**
		Creates an unfiltered low pass effect.
	**/
	public function new() {
		super("lowpass");
		priority = 100;
		gainHF = 1.0;
	}
}