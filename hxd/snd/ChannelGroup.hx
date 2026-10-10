package hxd.snd;

/**
	A group of channels sharing a volume, a priority and effects, such as the music or the sound effects.
	The channels without a group use `Manager.masterChannelGroup`.
**/
class ChannelGroup extends ChannelBase {

	/**
		The name of the group.
	**/
	public var name (default, null) : String;

	/**
		Creates a group.
	**/
	public function new(name : String) {
		super();
		this.name = name;
	}

}