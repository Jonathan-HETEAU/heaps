package hxd.snd.effect;


/**
	An I3DL2 environmental reverb. Volumes are in millibels (mB): `0` is the full volume, `-10000` is silent.
	Only supported by the OpenAL driver.
**/
class Reverb extends hxd.snd.Effect {
	/**
		The amount of reverberated sound mixed with the original sound, from `0` to `100` %.
	**/
	public var wetDryMix         : Float;
	/**
		The volume of the room effect, from `-10000` to `0` mB.
	**/
	public var room              : Float;
	/**
		The attenuation of the high frequencies of the room effect, from `-10000` to `0` mB.
	**/
	public var roomHF            : Float;
	/**
		The attenuation of the reverb with the distance, from `0` to `10`.
	**/
	public var roomRolloffFactor : Float;
	/**
		The decay time of the reverb, from `0.1` to `20` seconds.
	**/
	public var decayTime         : Float;
	/**
		The ratio of the high frequencies decay time to `decayTime`, from `0.1` to `2`.
	**/
	public var decayHFRatio      : Float;
	/**
		The volume of the early reflections, from `-10000` to `1000` mB.
	**/
	public var reflections       : Float;
	/**
		The delay of the early reflections, from `0` to `0.3` seconds.
	**/
	public var reflectionsDelay  : Float;
	/**
		The volume of the late reverberation, from `-10000` to `2000` mB.
	**/
	public var reverb            : Float;
	/**
		The delay of the late reverberation after the early reflections, from `0` to `0.1` seconds.
	**/
	public var reverbDelay       : Float;
	/**
		The echo density of the late reverberation, from `0` to `100` %.
	**/
	public var diffusion         : Float;
	/**
		The modal density of the late reverberation, from `0` to `100` %.
	**/
	public var density           : Float;
	/**
		The reference frequency of the high frequencies, from `20` to `20000` Hz.
	**/
	public var hfReference       : Float;

	/**
		Creates a reverb with the given preset (`ReverbPreset.DEFAULT` by default).
	**/
	public function new(?preset : ReverbPreset) {
		super("reverb");
		wetDryMix = 100.0;
		loadPreset(preset != null ? preset : ReverbPreset.DEFAULT);
	}

	/**
		Sets the parameters from the preset (except `wetDryMix`).
	**/
	public function loadPreset(preset : ReverbPreset) {
		room              = preset.room;
		roomHF            = preset.roomHF;
		roomRolloffFactor = preset.roomRolloffFactor;
		decayTime         = preset.decayTime;
		decayHFRatio      = preset.decayHFRatio;
		reflections       = preset.reflections;
		reflectionsDelay  = preset.reflectionsDelay;
		reverb            = preset.reverb;
		reverbDelay       = preset.reverbDelay;
		diffusion         = preset.diffusion;
		density           = preset.density;
		hfReference       = preset.hfReference;
	}
}