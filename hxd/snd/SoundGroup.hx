package hxd.snd;

/**
	A group of sounds sharing a volume and a limit of channels playing at the same time.
	The channels without a group use `Manager.masterSoundGroup`.
**/
@:allow(hxd.snd.Manager)
class SoundGroup {
	/**
		The name of the group, used by `Manager.stopByName`.
	**/
	public var name (default, null) : String;
	/**
		The volume of the sounds of the group, from `0` to `1`.
	**/
	public var volume               : Float;
	/**
		The maximum number of sounds of the group played at the same time (the others are virtualized), or `-1` for no limit.
	**/
	public var maxAudible           : Int;
	/**
		If set, the sounds of the group are converted to mono.
	**/
	public var mono					: Bool;

	var numAudible : Int;
	var lastUpdate : Float;

	/**
		Creates a group.
	**/
	public function new(name : String) {
		this.name  = name;
		maxAudible = -1;
		volume = 1;
		mono = false;
	}
}