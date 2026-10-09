package hxd.res;

/**
	The supported sound file formats.
**/
enum SoundFormat {
	/**
		WAV (PCM).
	**/
	Wav;
	/**
		MP3.
	**/
	Mp3;
	/**
		Ogg Vorbis. It needs HashLink or the `stb_ogg_sound` library.
	**/
	OggVorbis;
}

/**
	A sound file resource (WAV, MP3 or Ogg Vorbis), played with `hxd.snd.Manager`.
**/
class Sound extends Resource {

	static var ENABLE_AUTO_WATCH = true;

	var data : hxd.snd.Data;
	var channel : hxd.snd.Channel;
	/**
		The time of the last call to `play`, as given by `haxe.Timer.stamp`.
	**/
	public var lastPlay(default, null) = 0.;

	/**
		Tells if the format is supported on the current platform.
	**/
	public static function supportedFormat( fmt : SoundFormat ) {
		return switch( fmt ) {
		case Wav, Mp3:
			return true;
		case OggVorbis:
			#if (hl || stb_ogg_sound)
			return true;
			#else
			return false;
			#end
		}
	}

	/**
		Returns the decoder of the sound data, created on the first call. The format is detected from the first byte of the file.
	**/
	public function getData() : hxd.snd.Data {
		if( data != null )
			return data;
		var bytes = entry.getBytes();
		switch( bytes.get(0) ) {
		case 'R'.code: // RIFF (wav)
			data = new hxd.snd.WavData(bytes);
		case 255, 'I'.code: // MP3 (or ID3)
			data = new hxd.snd.Mp3Data(bytes);
		case 'O'.code: // Ogg (vorbis)
			#if (hl || stb_ogg_sound)
			data = new hxd.snd.OggData(bytes);
			#else
			throw "OGG format requires -lib stb_ogg_sound (for " + entry.path+")";
			#end
		default:
		}
		if( data == null )
			throw "Unsupported sound format " + entry.path;
		if ( ENABLE_AUTO_WATCH )
			watch(watchCallb);
		return data;
	}

	/**
		Stops the sound and releases its data.
	**/
	public function dispose() {
		stop();
		data = null;
	}

	/**
		Stops the channel of the last `play` call.
	**/
	public function stop() {
		if( channel != null ) {
			channel.stop();
			channel = null;
		}
	}

	/**
		Plays the sound and returns its channel.
	**/
	public function play( ?loop = false, ?volume = 1., ?channelGroup, ?soundGroup ) {
		lastPlay = haxe.Timer.stamp();
		channel = hxd.snd.Manager.get().play(this, channelGroup, soundGroup);
		channel.loop = loop;
		channel.volume = volume;
		return channel;
	}

	/**
		Does nothing: kept for compatibility.
	**/
	public static function startWorker() {
		return false;
	}

	@:access(hxd.snd.ChannelBase)
	function watchCallb() {
		var old = this.data;
		this.data = null;
		var data = getData();
		if (old != null) {
			if (old.channels != data.channels || old.samples != data.samples || old.sampleFormat != data.sampleFormat || old.samplingRate != data.samplingRate) {
				var manager = hxd.snd.Manager.get();
				for ( ch in manager.getAll(this) ) {
					ch.duration = data.duration;
					ch.position = ch.position;
				}
			}
		}
	}

}