package hxd.snd;

#if usesys
/**
	The driver handle of a sound source.
**/
typedef SourceHandle = haxe.AudioTypes.SourceHandle;
/**
	The driver handle of a sound buffer.
**/
typedef BufferHandle = haxe.AudioTypes.BufferHandle;
#elseif (js && !useal)
/**
	The driver handle of a sound source.
**/
typedef SourceHandle = hxd.snd.webaudio.AudioTypes.SourceHandle;
/**
	The driver handle of a sound buffer.
**/
typedef BufferHandle = hxd.snd.webaudio.AudioTypes.BufferHandle;
#else
/**
	The driver handle of a sound source.
**/
typedef SourceHandle = hxd.snd.openal.AudioTypes.SourceHandle;
/**
	The driver handle of a sound buffer.
**/
typedef BufferHandle = hxd.snd.openal.AudioTypes.BufferHandle;
#end

/**
	The driver implementation of an effect type: it applies the effect parameters to the sources.
**/
class EffectDriver<T> {
	/**
		Creates the driver.
	**/
	public function new() {}

	/**
		Called when the effect starts being used.
	**/
	public function acquire () : Void {};
	/**
		Called when the effect is no longer used.
	**/
	public function release () : Void {};
	/**
		Called on each update of the manager.
	**/
	public function update  (e : T) : Void {};
	/**
		Called when the effect is bound to a source.
	**/
	public function bind    (e : T, source : SourceHandle) : Void {};
	/**
		Applies the effect parameters to a source, on each update.
	**/
	public function apply   (e : T, source : SourceHandle) : Void {};
	/**
		Called when the effect is unbound from a source.
	**/
	public function unbind  (e : T, source : SourceHandle) : Void {};
}

/**
	The optional features of a sound driver.
**/
enum DriverFeature {
	/**
		The driver has a master volume (see `setMasterVolume`).
	**/
	MasterVolume;
}

/**
	The interface of the low level sound API used by `hxd.snd.Manager`: OpenAL (`hxd.snd.openal.Driver`) or Web Audio (`hxd.snd.webaudio.Driver`).
**/
interface Driver {
	/**
		Tells if the driver supports the feature.
	**/
	public function hasFeature           (d : DriverFeature) : Bool;
	/**
		Sets the global volume.
	**/
	public function setMasterVolume      (value : Float) : Void;
	/**
		Sets the position, orientation and velocity of the listener.
	**/
	public function setListenerParams    (position : h3d.Vector, direction : h3d.Vector, up : h3d.Vector, ?velocity : h3d.Vector) : Void;

	/**
		Creates a source.
	**/
	public function createSource         () : SourceHandle;
	/**
		Starts playing the buffers queued on the source.
	**/
	public function playSource           (source : SourceHandle) : Void;
	/**
		Stops the source.
	**/
	public function stopSource           (source : SourceHandle) : Void;
	/**
		Sets the volume of the source.
	**/
	public function setSourceVolume      (source : SourceHandle, value : Float) : Void;
	/**
		Releases the source.
	**/
	public function destroySource        (source : SourceHandle) : Void; 

	/**
		Creates a buffer.
	**/
	public function createBuffer         () : BufferHandle;
	/**
		Fills the buffer with `size` bytes of samples.
	**/
	public function setBufferData        (buffer : BufferHandle, data : haxe.io.Bytes, size : Int, format : Data.SampleFormat, channelCount : Int, samplingRate : Int) : Void;
	/**
		Releases the buffer.
	**/
	public function destroyBuffer        (buffer : BufferHandle) : Void;

	/**
		Queues the buffer on the source, starting at the sample `sampleStart`. `endOfStream` tells if it is the last buffer of the sound.
	**/
	public function queueBuffer          (source : SourceHandle, buffer : BufferHandle, sampleStart : Int, endOfStream : Bool) : Void;
	/**
		Removes the buffer from the queue of the source.
	**/
	public function unqueueBuffer        (source : SourceHandle, buffer : BufferHandle) : Void;
	/**
		Returns the number of queued buffers that were played.
	**/
	public function getProcessedBuffers  (source : SourceHandle) : Int;
	/**
		Returns the number of samples played by the source in its current buffer.
	**/
	public function getPlayedSampleCount (source : SourceHandle) : Int;

	/**
		Called on each update of the manager.
	**/
	public function update  () : Void;
	/**
		Releases the driver.
	**/
	public function dispose () : Void;

	/**
		Returns the driver of the given effect type, or a driver doing nothing if the effect is not supported.
	**/
	public function getEffectDriver(type : String) : EffectDriver<Dynamic>;
}