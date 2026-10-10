package hxd.snd.effect;

/**
	Positions the sound in 3D, relative to `Manager.listener`: the volume decreases with the distance.
**/
class Spatialization extends hxd.snd.Effect {
	/**
		The position of the sound.
	**/
	public var position  : h3d.Vector;
	/**
		The velocity of the sound, for the Doppler effect.
	**/
	public var velocity  : h3d.Vector;
	/**
		The direction of the sound.
	**/
	public var direction : h3d.Vector;

	/**
		The distance under which the volume is not attenuated.
	**/
	public var referenceDistance : Float;
	/**
		The distance after which the volume is no longer attenuated, or `null` for no limit.
	**/
	public var maxDistance  : Null<Float>;
	/**
		If set, the volume also fades linearly to `0` over this distance, after `maxDistance` (or `referenceDistance`).
	**/
	public var fadeDistance : Null<Float>;
	/**
		How fast the volume is attenuated with the distance (inverse distance model).
	**/
	public var rollOffFactor : Float;

	/**
		Creates the effect at the origin.
	**/
	public function new() {
		super("spatialization");
		position  = new h3d.Vector();
		velocity  = new h3d.Vector();
		direction = new h3d.Vector();

		referenceDistance = 1.0;
		rollOffFactor =  1.0;
	}

	override function getVolumeModifier() {
		if( fadeDistance == null ) return 1.;
		var dist = Manager.get().listener.position.distance(position);
		if (maxDistance != null) dist -= maxDistance;
		else dist -= referenceDistance;
		var volume = 1 - dist / fadeDistance;
		if (volume > 1) volume = 1;
		if (volume < 0) volume = 0;
		return volume;
	}

	override function applyAudibleVolumeModifier(v : Float) {
		var dist = Manager.get().listener.position.distance(position);
		dist = Math.max(dist, referenceDistance);
		if (maxDistance != null) dist = Math.min(dist, maxDistance);
		var volume = referenceDistance/(referenceDistance + rollOffFactor * (dist - referenceDistance));
		return v * volume;
	}
}