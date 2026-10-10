package hxd.snd.openal;

private typedef F32 = Float;
private typedef Bytes = haxe.io.Bytes;

private class Channel extends NativeChannel {

	var source : Source;
	var startup = 0.;
	static inline var FADE_START = 10; // prevent clic at startup

	public function new(source, samples) {
		this.source = source;
		super(samples);
		#if js
		gain.gain.value = source.volume;
		#end
	}

	@:noDebug
	override function onSample( out : haxe.io.Float32Array ) {
		var pos = 0;
		var count = out.length >> 1;
		if( source.duration > 0 ) {
			var volume = #if js 1.0 #else source.volume #end;
			var bufferIndex = 0;
			var baseSample = 0;
			var curSample = source.currentSample;
			var buffer = source.buffers[bufferIndex++];
			while( count > 0 ) {
				while( buffer != null && curSample >= buffer.samples ) {
					baseSample += buffer.samples;
					curSample -= buffer.samples;
					buffer = source.buffers[bufferIndex++];
				}
				if( buffer == null ) {
					if( source.loop ) {
						curSample = 0;
						baseSample = 0;
						bufferIndex = 0;
						buffer = source.buffers[bufferIndex++];
						continue;
					}
					break;
				}
				var scount = buffer.samples - curSample;
				if( scount > count ) scount = count;
				var read = curSample << 1;
				var data = buffer.data;
				if( startup < 1 ) {
					for( i in 0...scount ) {
						out[pos++] = data[read++] * volume * startup;
						out[pos++] = data[read++] * volume * startup;
						if( startup < 1. ) {
							startup += 1 / FADE_START;
							if( startup > 1 ) startup = 1;
						}
					}
				} else {
					for( i in 0...scount ) {
						out[pos++] = data[read++] * volume;
						out[pos++] = data[read++] * volume;
					}
				}
				count -= scount;
				curSample += scount;
			}
			source.currentSample = baseSample + curSample;
			if( source.currentSample < 0 ) throw baseSample+"/" + curSample;
		}

		for( i in 0...count<<1 )
			out[pos++] = 0.;
	}

}

/**
	An emulated OpenAL source, played with a `NativeChannel`.
**/
class Source {

	// Necessary to prevent stopping the channel while it's still playing
	// This seems related to some lag in NativeChannel creation and data delivery
	static inline var STOP_DELAY = #if js 200 #else 0 #end;

	/**
		The number of samples of the native channel buffers (about 100 ms at 44.1 kHz on HashLink).
	**/
	public static var CHANNEL_BUFSIZE = #if js 8192 #else 4096 #end;

	static var ID = 0;
	static var all = new Map<Int,Source>();

	/**
		The identifier of the source.
	**/
	public var id : Int;
	/**
		The native channel playing the source, or `null` when stopped.
	**/
	public var chan : hxd.snd.NativeChannel;

	/**
		The time when the playback started.
	**/
	public var playedTime = 0.;
	/**
		The current sample position.
	**/
	public var currentSample : Int = 0;
	/**
		The queued buffers.
	**/
	public var buffers : Array<Buffer> = [];
	/**
		If set, the buffers loop.
	**/
	public var loop = false;
	/**
		The volume of the source.
	**/
	public var volume : F32 = 1.;
	/**
		Tells if the source is playing.
	**/
	public var playing(get, never) : Bool;
	/**
		The total duration of the queued buffers, in seconds.
	**/
	public var duration : Float;
	/**
		The sample rate of the queued buffers.
	**/
	public var frequency : Int;

	/**
		Creates a source.
	**/
	public function new() {
		id = ++ID;
		all.set(id, this);
	}

	/**
		Updates `duration` and `frequency` from the queued buffers.
	**/
	public function updateDuration() {
		frequency = buffers.length == 0 ? 1 : buffers[0].frequency;
		duration = 0.;
		for( b in buffers )
			duration += b.samples / b.frequency;
	}

	inline function get_playing() return chan != null;

	/**
		Starts playing.
	**/
	public function play() {
		if( chan == null ) {
			playedTime = haxe.Timer.stamp() - currentSample / frequency;
			chan = new Channel(this, CHANNEL_BUFSIZE);
		}
	}

	/**
		Stops playing (with a short delay on JS, unless `immediate` is set).
	**/
	public function stop( immediate = false ) {
		if( chan != null ) {
			if( STOP_DELAY == 0 || immediate )
				chan.stop();
			else
				haxe.Timer.delay(chan.stop, STOP_DELAY);
			chan = null;
		}
	}

	/**
		Stops and releases the source.
	**/
	public function dispose() {
		stop();
		all.remove(id);
		id = 0;
	}

	/**
		Returns the identifier of the source.
	**/
	public inline function toInt() return id;
	/**
		Returns the source of the given identifier.
	**/
	public static inline function ofInt(i) return all.get(i);
}


/**
	An emulated OpenAL buffer, storing float samples.
**/
class Buffer {
	static var ID = 0;
	static var all = new Map<Int,Buffer>();

	/**
		The identifier of the buffer.
	**/
	public var id : Int;
	/**
		The samples.
	**/
	public var data : haxe.ds.Vector<F32>;
	/**
		The sample rate.
	**/
	public var frequency : Int = 1;
	/**
		The number of samples.
	**/
	public var samples : Int = 0;

	/**
		Creates a buffer.
	**/
	public function new() {
		id = ++ID;
		all.set(id, this);
	}

	/**
		Releases the buffer.
	**/
	public function dispose() {
		data = null;
		all.remove(id);
		id = 0;
	}

	/**
		Allocates the sample data.
	**/
	public function alloc(size) {
		if( data == null || data.length != size )
			data = new haxe.ds.Vector(size);
		return data;
	}

	/**
		Returns the identifier of the buffer.
	**/
	public inline function toInt() return id;
	/**
		Returns the buffer of the given identifier.
	**/
	public static inline function ofInt(i) return all.get(i);

}

/**
	On platforms that don't have native support for OpenAL, the Driver uses this
	emulator that only requires a NativeChannel implementation
**/
class Emulator {

	/**
		The sample rate of the native output.
	**/
	public static var NATIVE_FREQ(get,never) : Int;
	static var CACHED_FREQ : Null<Int>;
	static function get_NATIVE_FREQ() {
		if( CACHED_FREQ == null )
			CACHED_FREQ = #if js Std.int(hxd.snd.webaudio.Context.get().sampleRate) #else 44100 #end;
		return CACHED_FREQ;
	}

	// api

	/** Emulates the OpenAL `alDopplerFactor` function. **/
	public static function dopplerFactor(value : F32) {}
	/** Emulates the OpenAL `alDopplerVelocity` function. **/
	public static function dopplerVelocity(value : F32) {}
	/** Emulates the OpenAL `alSpeedOfSound` function. **/
	public static function speedOfSound(value : F32) {}
	/** Emulates the OpenAL `alDistanceModel` function. **/
	public static function distanceModel(distanceModel : Int) {}

	// Renderer State management
	/** Emulates the OpenAL `alEnable` function. **/
	public static function enable(capability : Int) {}
	/** Emulates the OpenAL `alDisable` function. **/
	public static function disable(capability : Int) {}
	/** Emulates the OpenAL `alIsEnabled` function. **/
	public static function isEnabled(capability : Int) return false;

	// State retrieval
	/** Emulates the OpenAL `alGetBooleanv` function. **/
	public static function getBooleanv(param : Int, values : Bytes) {
		throw "TODO";
	}
	/** Emulates the OpenAL `alGetIntegerv` function. **/
	public static function getIntegerv(param : Int, values : Bytes) {
		throw "TODO";
	}
	/** Emulates the OpenAL `alGetFloatv` function. **/
	public static function getFloatv(param : Int, values : Bytes) {
		throw "TODO";
	}
	/** Emulates the OpenAL `alGetDoublev` function. **/
	public static function getDoublev(param : Int, values : Bytes) {
		throw "TODO";
	}

	/** Emulates the OpenAL `alGetString` function. **/
	public static function getString(param : Int) : Bytes {
		throw "TODO";
	}

	/** Emulates the OpenAL `alGetBoolean` function. **/
	public static function getBoolean(param : Int) : Bool {
		throw "TODO";
	}

	/** Emulates the OpenAL `alGetInteger` function. **/
	public static function getInteger(param : Int) : Int {
		throw "TODO";
	}

	/** Emulates the OpenAL `alGetFloat` function. **/
	public static function getFloat(param : Int) : F32 {
		throw "TODO";
	}

	/** Emulates the OpenAL `alGetDouble` function. **/
	public static function getDouble(param : Int) : Float {
		throw "TODO";
	}

	// Error retrieval
	/** Emulates the OpenAL `alGetError` function. **/
	public static function getError() : Int {
		return 0;
	}

	// Extension support
	/** Emulates the OpenAL `alLoadExtensions` function. **/
	public static function loadExtensions() {}

	/** Emulates the OpenAL `alIsExtensionPresent` function. **/
	public static function isExtensionPresent(extname : Bytes) : Bool {
		return false;
	}

	/** Emulates the OpenAL `alGetEnumValue` function. **/
	public static function getEnumValue(ename : Bytes) : Int {
		throw "TODO";
	}
	//public static function getProcAddress(fname   : Bytes) : Void*;

	// Set Listener parameters
	/** Emulates the OpenAL `alListenerf` function. **/
	public static function listenerf(param : Int, value  : F32)
	{
		#if js
		switch (param) {
			case GAIN:
				hxd.snd.webaudio.Context.masterGain.gain.value = value;
		}
		#end
	}
	/** Emulates the OpenAL `alListener3f` function. **/
	public static function listener3f(param : Int, value1 : F32, value2 : F32, value3 : F32) {}
	/** Emulates the OpenAL `alListenerfv` function. **/
	public static function listenerfv(param : Int, values : Bytes) {}
	/** Emulates the OpenAL `alListeneri` function. **/
	public static function listeneri(param : Int, value  : Int) {}
	/** Emulates the OpenAL `alListener3i` function. **/
	public static function listener3i(param : Int, value1 : Int, value2 : Int, value3 : Int) {}
	/** Emulates the OpenAL `alListeneriv` function. **/
	public static function listeneriv(param : Int, values : Bytes) {}

	// Get Listener parameters
	/** Emulates the OpenAL `alGetListenerf` function. **/
	public static function getListenerf(param : Int) : F32 {
		throw "TODO";
	}
	/** Emulates the OpenAL `alGetListener3f` function. **/
	public static function getListener3f(param : Int, values : Array<F32> ) {
		throw "TODO";
	}

	/** Emulates the OpenAL `alGetListenerfv` function. **/
	public static function getListenerfv(param : Int, values : Bytes) {
		throw "TODO";
	}
	/** Emulates the OpenAL `alGetListeneri` function. **/
	public static function getListeneri(param : Int) : Int {
		throw "TODO";
	}
	/** Emulates the OpenAL `alGetListener3i` function. **/
	public static function getListener3i(param : Int, values : Array<Int> ) {
		throw "TODO";
	}
	/** Emulates the OpenAL `alGetListeneriv` function. **/
	public static function getListeneriv(param : Int, values : Bytes) {
		throw "TODO";
	}

	// Source management
	/** Emulates the OpenAL `alGenSources` function. **/
	public static function genSources(n : Int, sources : Bytes) {
		for( i in 0...n )
			sources.setInt32(i << 2, new Source().toInt());
	}

	/** Emulates the OpenAL `alDeleteSources` function. **/
	public static function deleteSources(n : Int, sources : Bytes) {
		for( i in 0...n )
			Source.ofInt(sources.getInt32(i << 2)).dispose();
	}

	/** Emulates the OpenAL `alIsSource` function. **/
	public static function isSource(source : Source) : Bool {
		return source != null;
	}

	// Set Source parameters
	/** Emulates the OpenAL `alSourcef` function. **/
	public static function sourcef(source : Source, param : Int, value : F32) {
		switch( param ) {
		case SEC_OFFSET:
			source.currentSample = source.buffers.length == 0 ? 0 : Std.int(value * source.frequency);
			if( source.playing ) {
				source.stop(true);
				source.play();
			}
		case GAIN:
			source.volume = value;
			#if js
			if (source.chan != null) @:privateAccess source.chan.gain.gain.value = value;
			#end
		case REFERENCE_DISTANCE, ROLLOFF_FACTOR, MAX_DISTANCE:
			// nothing (spatialization)
		case PITCH:
			// nothing
		default:
			throw "Unsupported param 0x" + StringTools.hex(param);
		}
	}
	/** Emulates the OpenAL `alSource3f` function. **/
	public static function source3f(source : Source, param : Int, value1 : F32, value2 : F32, value3 : F32) {
		switch( param ) {
		case POSITION, VELOCITY, DIRECTION:
			// nothing
		default:
			throw "Unsupported param 0x" + StringTools.hex(param);
		}
	}
	/** Emulates the OpenAL `alSourcefv` function. **/
	public static function sourcefv(source : Source, param : Int, values : Bytes) {
		switch( param ) {
		default:
			throw "Unsupported param 0x" + StringTools.hex(param);
		}
	}
	/** Emulates the OpenAL `alSourcei` function. **/
	public static function sourcei(source : Source, param : Int, value  : Int) {
		switch( param ) {
		case BUFFER:
			var b = Buffer.ofInt(value);
			source.buffers = b == null ? [] : [b];
			source.updateDuration();
			source.currentSample = 0;
		case LOOPING:
			source.loop = value != 0;
		case SAMPLE_OFFSET:
            source.currentSample = Std.int(getSourcef(source, SEC_OFFSET) / source.frequency);
			if( source.playing ) {
				source.stop(true);
				source.play();
			}
		case SOURCE_RELATIVE:
			// nothing
		case EFX.DIRECT_FILTER:
			// nothing
		default:
			throw "Unsupported param 0x" + StringTools.hex(param);
		}
	}
	/** Emulates the OpenAL `alSource3i` function. **/
	public static function source3i(source : Source, param : Int, value1 : Int, value2 : Int, value3 : Int) {
		switch( param ) {
		default:
			throw "Unsupported param 0x" + StringTools.hex(param);
		}
	}
	/** Emulates the OpenAL `alSourceiv` function. **/
	public static function sourceiv(source : Source, param : Int, values : Bytes) {
		switch( param ) {
		default:
			throw "Unsupported param 0x" + StringTools.hex(param);
		}
	}

	// Get Source parameters
	/** Emulates the OpenAL `alGetSourcef` function. **/
	public static function getSourcef(source : Source, param : Int) : F32 {
		switch( param ) {
		case SEC_OFFSET:
			if( source.buffers.length == 0 )
				return 0;
			var now = haxe.Timer.stamp();
			var t = now - source.playedTime;
			var maxT = source.duration;
			if( source.loop ) {
				while( t > maxT ) {
					t -= maxT;
					source.playedTime += maxT;
				}
			} else if( t > maxT )
				t = maxT;
			return t;
		default:
			throw "Unsupported param 0x" + StringTools.hex(param);
		}
	}
	/** Emulates the OpenAL `alGetSourcei` function. **/
	public static function getSourcei(source : Source, param : Int) : Int {
		switch( param ) {
		case SOURCE_STATE:
			return !source.playing || source.buffers.length == 0 || (!source.loop && (haxe.Timer.stamp() - source.playedTime) >= source.duration ) ? STOPPED : PLAYING;
		case BUFFERS_PROCESSED:
			if( source.loop )
				return 0;
			var count = 0;
			var cur = source.currentSample;
			for( b in source.buffers )
				if( cur >= b.samples ) {
					cur -= b.samples;
					count++;
				} else
					break;
			return count;
		case SAMPLE_OFFSET:
            return Std.int(getSourcef(source, SEC_OFFSET) * source.frequency);
		default:
			throw "Unsupported param 0x" + StringTools.hex(param);
		}
	}
	/** Emulates the OpenAL `alGetSource3f` function. **/
	public static function getSource3f(source : Source, param : Int, values : Array<F32> ) {
		throw "TODO";
	}
	/** Emulates the OpenAL `alGetSourcefv` function. **/
	public static function getSourcefv(source : Source, param : Int, values : Bytes) {
		throw "TODO";
	}
	/** Emulates the OpenAL `alGetSource3i` function. **/
	public static function getSource3i(source : Source, param : Int, values : Array<Int> ) {
		throw "TODO";
	}
	/** Emulates the OpenAL `alGetSourceiv` function. **/
	public static function getSourceiv(source : Source, param : Int, values : Bytes) {
		throw "TODO";
	}

	// Source controls
	/** Emulates the OpenAL `alSourcePlayv` function. **/
	public static function sourcePlayv(n : Int, sources : Bytes) {
		throw "TODO";
	}
	/** Emulates the OpenAL `alSourceStopv` function. **/
	public static function sourceStopv(n : Int, sources : Bytes) {
		throw "TODO";
	}
	/** Emulates the OpenAL `alSourceRewindv` function. **/
	public static function sourceRewindv(n : Int, sources : Bytes) {
		throw "TODO";
	}
	/** Emulates the OpenAL `alSourcePausev` function. **/
	public static function sourcePausev(n : Int, sources : Bytes) {
		throw "TODO";
	}

	/** Emulates the OpenAL `alSourcePlay` function. **/
	public static function sourcePlay(source : Source) {
		source.play();
	}

	/** Emulates the OpenAL `alSourceStop` function. **/
	public static function sourceStop(source : Source) {
		source.stop();
		source.currentSample = 0;
	}

	/** Emulates the OpenAL `alSourceRewind` function. **/
	public static function sourceRewind(source : Source) {
		throw "TODO";
	}
	/** Emulates the OpenAL `alSourcePause` function. **/
	public static function sourcePause(source : Source) {
		throw "TODO";
	}

	// Queue buffers onto a source
	/** Emulates the OpenAL `alSourceQueueBuffers` function. **/
	public static function sourceQueueBuffers(source : Source, nb : Int, buffers : Bytes) {
		for( i in 0...nb ) {
			var b = Buffer.ofInt(buffers.getInt32(i * 4));
			if( b == null ) throw "assert";
			source.buffers.push(b);
		}
		source.updateDuration();
	}

	/** Emulates the OpenAL `alSourceUnqueueBuffers` function. **/
	public static function sourceUnqueueBuffers(source : Source, nb : Int, buffers : Bytes) {
		for( i in 0...nb ) {
			var b = Buffer.ofInt(buffers.getInt32(i * 4));
			if( b != source.buffers[0] ) throw "assert";
			if( source.playing ) {
				if( source.currentSample < b.samples ) throw "assert";
				source.buffers.shift();
				source.currentSample -= b.samples;
				source.playedTime += b.samples / b.frequency;
			} else
				source.buffers.shift();
			source.updateDuration();
		}
	}

	// Buffer management
	/** Emulates the OpenAL `alGenBuffers` function. **/
	public static function genBuffers(n : Int, buffers : Bytes) {
		for( i in 0...n )
			buffers.setInt32(i << 2, new Buffer().toInt());
	}
	/** Emulates the OpenAL `alDeleteBuffers` function. **/
	public static function deleteBuffers(n : Int, buffers : Bytes) {
		for( i in 0...n )
			Buffer.ofInt(buffers.getInt32(i << 2)).dispose();
	}
	/** Emulates the OpenAL `alIsBuffer` function. **/
	public static function isBuffer(buffer : Buffer) : Bool {
		return buffer != null;
	}

	@:noDebug
	/** Emulates the OpenAL `alBufferData` function. **/
	public static function bufferData(buffer : Buffer, format : Int, data : Bytes, size : Int, freq : Int) {
		if( freq != NATIVE_FREQ )
			throw "Unsupported frequency value: " + freq +" should be " + NATIVE_FREQ;
		inline function sext16(v:Int) {
			return (v & 0x8000) == 0 ? v : v | 0xFFFF0000;
		}
		switch( format ) {
		case FORMAT_MONO8:
			var bdata = buffer.alloc(size*2);
			for( i in 0...size ) {
				var v = data.get(i) / 0xFF;
				bdata[i << 1] = v;
				bdata[(i<<1) | 1] = v;
			}
		case FORMAT_STEREO8:
			var bdata = buffer.alloc(size);
			for( i in 0...size ) {
				var v = data.get(i) / 0xFF;
				bdata[i] = v;
			}
		case FORMAT_MONO16:
			var bdata = buffer.alloc(size);
			for( i in 0...size>>1 ) {
				var v = sext16(data.getUInt16(i << 1)) / 0x8000;
				bdata[i << 1] = v;
				bdata[(i<<1) | 1] = v;
			}
		case FORMAT_STEREO16:
			var bdata = buffer.alloc(size >> 1);
			for( i in 0...size>>1 ) {
				var v = sext16(data.getUInt16(i << 1)) / 0x8000;
				bdata[i] = v;
			}
		case FORMAT_MONOF32:
			var bdata = buffer.alloc(size >> 1);
			for( i in 0...size >> 2 ) {
				var f = data.getFloat(i << 2);
				bdata[i << 1] = f;
				bdata[(i<<1) | 1] = f;
			}
		case FORMAT_STEREOF32:
			var bdata = buffer.alloc(size >> 2);
			for( i in 0...size>>2 )
				buffer.data[i] = data.getFloat(i<<2);
		default:
			throw "Format not supported 0x" + StringTools.hex(format);
		}
		buffer.samples = buffer.data.length >> 1;
		buffer.frequency = freq;
	}

	// Set Buffer parameters
	/** Emulates the OpenAL `alBufferf` function. **/
	public static function bufferf(buffer : Buffer, param : Int, value  : F32) {
		switch( param ) {
		default:
			throw "Unsupported param 0x" + StringTools.hex(param);
		}
	}
	/** Emulates the OpenAL `alBuffer3f` function. **/
	public static function buffer3f(buffer : Buffer, param : Int, value1 : F32, value2 : F32, value3 : F32) {
		switch( param ) {
		default:
			throw "Unsupported param 0x" + StringTools.hex(param);
		}
	}
	/** Emulates the OpenAL `alBufferfv` function. **/
	public static function bufferfv(buffer : Buffer, param : Int, values : Bytes) {
		switch( param ) {
		default:
			throw "Unsupported param 0x" + StringTools.hex(param);
		}
	}
	/** Emulates the OpenAL `alBufferi` function. **/
	public static function bufferi(buffer : Buffer, param : Int, value  : Int) {
		switch( param ) {
		default:
			throw "Unsupported param 0x" + StringTools.hex(param);
		}
	}
	/** Emulates the OpenAL `alBuffer3i` function. **/
	public static function buffer3i(buffer : Buffer, param : Int, value1 : Int, value2 : Int, value3 : Int) {
		switch( param ) {
		default:
			throw "Unsupported param 0x" + StringTools.hex(param);
		}
	}
	/** Emulates the OpenAL `alBufferiv` function. **/
	public static function bufferiv(buffer : Buffer, param : Int, values : Bytes) {
		switch( param ) {
		default:
			throw "Unsupported param 0x" + StringTools.hex(param);
		}
	}

	// Get Buffer parameters
	/** Emulates the OpenAL `alGetBufferf` function. **/
	public static function getBufferf(buffer : Buffer, param : Int) : F32 {
		throw "TODO";
	}
	/** Emulates the OpenAL `alGetBuffer3f` function. **/
	public static function getBuffer3f(buffer : Buffer, param : Int, values : Array<F32> ) {
		throw "TODO";
	}
	/** Emulates the OpenAL `alGetBufferfv` function. **/
	public static function getBufferfv(buffer : Buffer, param : Int, values : Bytes) {
		throw "TODO";
	}
	/** Emulates the OpenAL `alGetBufferi` function. **/
	public static function getBufferi(buffer : Buffer, param : Int ) : Int {
		switch( param ) {
		case SIZE: return buffer.data.length * 4;
		case BITS: return 32;
		case CHANNELS : return 2;
		default:
			throw "Unsupported param 0x" + StringTools.hex(param);
		}
	}
	/** Emulates the OpenAL `alGetBuffer3i` function. **/
	public static function getBuffer3i(buffer : Buffer, param : Int, values : Array<Int> ) {
		throw "TODO";
	}
	/** Emulates the OpenAL `alGetBufferiv` function. **/
	public static function getBufferiv(buffer : Buffer, param : Int, values : Bytes) {
		throw "TODO";
	}


	// --- our own float32 extension

	/** The OpenAL `FORMAT_MONOF32` constant. **/
	public static inline var FORMAT_MONOF32				= 0x1110;
	/** The OpenAL `FORMAT_STEREOF32` constant. **/
	public static inline var FORMAT_STEREOF32			= 0x1111;

	// ------------------------------------------------------------------------
	// Constants
	// ------------------------------------------------------------------------

	/** The OpenAL `NONE` constant. **/
	public static inline var NONE                       = 0;
	/** The OpenAL `FALSE` constant. **/
	public static inline var FALSE                      = 0;
	/** The OpenAL `TRUE` constant. **/
	public static inline var TRUE                       = 1;

	/** The OpenAL `SOURCE_RELATIVE` constant. **/
	public static inline var SOURCE_RELATIVE            = 0x202;
	/** The OpenAL `CONE_INNER_ANGLE` constant. **/
	public static inline var CONE_INNER_ANGLE           = 0x1001;
	/** The OpenAL `CONE_OUTER_ANGLE` constant. **/
	public static inline var CONE_OUTER_ANGLE           = 0x1002;
	/** The OpenAL `PITCH` constant. **/
	public static inline var PITCH                      = 0x1003;

	/** The OpenAL `POSITION` constant. **/
	public static inline var POSITION                   = 0x1004;
	/** The OpenAL `DIRECTION` constant. **/
	public static inline var DIRECTION                  = 0x1005;

	/** The OpenAL `VELOCITY` constant. **/
	public static inline var VELOCITY                   = 0x1006;
	/** The OpenAL `LOOPING` constant. **/
	public static inline var LOOPING                    = 0x1007;
	/** The OpenAL `BUFFER` constant. **/
	public static inline var BUFFER                     = 0x1009;

	/** The OpenAL `GAIN` constant. **/
	public static inline var GAIN                       = 0x100A;
	/** The OpenAL `MIN_GAIN` constant. **/
	public static inline var MIN_GAIN                   = 0x100D;
	/** The OpenAL `MAX_GAIN` constant. **/
	public static inline var MAX_GAIN                   = 0x100E;
	/** The OpenAL `ORIENTATION` constant. **/
	public static inline var ORIENTATION                = 0x100F;
	/** The OpenAL `SOURCE_STATE` constant. **/
	public static inline var SOURCE_STATE               = 0x1010;

	// Source state values
	/** The OpenAL `INITIAL` constant. **/
	public static inline var INITIAL                    = 0x1011;
	/** The OpenAL `PLAYING` constant. **/
	public static inline var PLAYING                    = 0x1012;
	/** The OpenAL `PAUSED` constant. **/
	public static inline var PAUSED                     = 0x1013;
	/** The OpenAL `STOPPED` constant. **/
	public static inline var STOPPED                    = 0x1014;

	/** The OpenAL `BUFFERS_QUEUED` constant. **/
	public static inline var BUFFERS_QUEUED             = 0x1015;
	/** The OpenAL `BUFFERS_PROCESSED` constant. **/
	public static inline var BUFFERS_PROCESSED          = 0x1016;

	/** The OpenAL `REFERENCE_DISTANCE` constant. **/
	public static inline var REFERENCE_DISTANCE         = 0x1020;
	/** The OpenAL `ROLLOFF_FACTOR` constant. **/
	public static inline var ROLLOFF_FACTOR             = 0x1021;
	/** The OpenAL `CONE_OUTER_GAIN` constant. **/
	public static inline var CONE_OUTER_GAIN            = 0x1022;
	/** The OpenAL `MAX_DISTANCE` constant. **/
	public static inline var MAX_DISTANCE               = 0x1023;

	/** The OpenAL `SEC_OFFSET` constant. **/
	public static inline var SEC_OFFSET                 = 0x1024;
	/** The OpenAL `SAMPLE_OFFSET` constant. **/
	public static inline var SAMPLE_OFFSET              = 0x1025;
	/** The OpenAL `BYTE_OFFSET` constant. **/
	public static inline var BYTE_OFFSET                = 0x1026;
	/** The OpenAL `SOURCE_TYPE` constant. **/
	public static inline var SOURCE_TYPE                = 0x1027;

	// Source type value
	/** The OpenAL `STATIC` constant. **/
	public static inline var STATIC                     = 0x1028;
	/** The OpenAL `STREAMING` constant. **/
	public static inline var STREAMING                  = 0x1029;
	/** The OpenAL `UNDETERMINED` constant. **/
	public static inline var UNDETERMINED               = 0x1030;

	// Buffer format specifier
	/** The OpenAL `FORMAT_MONO8` constant. **/
	public static inline var FORMAT_MONO8               = 0x1100;
	/** The OpenAL `FORMAT_MONO16` constant. **/
	public static inline var FORMAT_MONO16              = 0x1101;
	/** The OpenAL `FORMAT_STEREO8` constant. **/
	public static inline var FORMAT_STEREO8             = 0x1102;
	/** The OpenAL `FORMAT_STEREO16` constant. **/
	public static inline var FORMAT_STEREO16            = 0x1103;

	// Buffer query
	/** The OpenAL `FREQUENCY` constant. **/
	public static inline var FREQUENCY                  = 0x2001;
	/** The OpenAL `BITS` constant. **/
	public static inline var BITS                       = 0x2002;
	/** The OpenAL `CHANNELS` constant. **/
	public static inline var CHANNELS                   = 0x2003;
	/** The OpenAL `SIZE` constant. **/
	public static inline var SIZE                       = 0x2004;

	// Buffer state(private)
	/** The OpenAL `UNUSED` constant. **/
	public static inline var UNUSED                     = 0x2010;
	/** The OpenAL `PENDING` constant. **/
	public static inline var PENDING                    = 0x2011;
	/** The OpenAL `PROCESSED` constant. **/
	public static inline var PROCESSED                  = 0x2012;

	// Errors
	/** The OpenAL `NO_ERROR` constant. **/
	public static inline var NO_ERROR                   = 0;
	/** The OpenAL `INVALID_NAME` constant. **/
	public static inline var INVALID_NAME               = 0xA001;
	/** The OpenAL `INVALID_ENUM` constant. **/
	public static inline var INVALID_ENUM               = 0xA002;
	/** The OpenAL `INVALID_VALUE` constant. **/
	public static inline var INVALID_VALUE              = 0xA003;
	/** The OpenAL `INVALID_OPERATION` constant. **/
	public static inline var INVALID_OPERATION          = 0xA004;
	/** The OpenAL `OUT_OF_MEMORY` constant. **/
	public static inline var OUT_OF_MEMORY              = 0xA005;

	// Context strings
	/** The OpenAL `VENDOR` constant. **/
	public static inline var VENDOR                     = 0xB001;
	/** The OpenAL `VERSION` constant. **/
	public static inline var VERSION                    = 0xB002;
	/** The OpenAL `RENDERER` constant. **/
	public static inline var RENDERER                   = 0xB003;
	/** The OpenAL `EXTENSIONS` constant. **/
	public static inline var EXTENSIONS                 = 0xB004;

	// Context values
	/** The OpenAL `DOPPLER_FACTOR` constant. **/
	public static inline var DOPPLER_FACTOR            = 0xC000;
	/** The OpenAL `DOPPLER_VELOCITY` constant. **/
	public static inline var DOPPLER_VELOCITY          = 0xC001;
	/** The OpenAL `SPEED_OF_SOUND` constant. **/
	public static inline var SPEED_OF_SOUND            = 0xC003;
	/** The OpenAL `DISTANCE_MODEL` constant. **/
	public static inline var DISTANCE_MODEL            = 0xD000;

	// Distance model values
	/** The OpenAL `INVERSE_DISTANCE` constant. **/
	public static inline var INVERSE_DISTANCE          = 0xD001;
	/** The OpenAL `INVERSE_DISTANCE_CLAMPED` constant. **/
	public static inline var INVERSE_DISTANCE_CLAMPED  = 0xD002;
	/** The OpenAL `LINEAR_DISTANCE` constant. **/
	public static inline var LINEAR_DISTANCE           = 0xD003;
	/** The OpenAL `LINEAR_DISTANCE_CLAMPED` constant. **/
	public static inline var LINEAR_DISTANCE_CLAMPED   = 0xD004;
	/** The OpenAL `EXPONENT_DISTANCE` constant. **/
	public static inline var EXPONENT_DISTANCE         = 0xD005;
	/** The OpenAL `EXPONENT_DISTANCE_CLAMPED` constant. **/
	public static inline var EXPONENT_DISTANCE_CLAMPED = 0xD006;

}




/**
	An emulated OpenAL device.
**/
class Device {
	/**
		Creates a device.
	**/
	public function new() {
	}
}

/**
	An emulated OpenAL context.
**/
class Context {
	/**
		The device of the context.
	**/
	public var device : Device;
	/**
		Creates a context for the device.
	**/
	public function new(d) {
		this.device = d;
	}
}

/**
	Emulation of the OpenAL context API (ALC).
**/
class ALC {

	static var ctx : Context = null;

	/** Emulates the OpenAL `alcGetError` function. **/
	public static function getError( device : Device ) : Int {
		return 0;
	}

	// Context management
	/** Emulates the OpenAL `alcCreateContext` function. **/
	public static function createContext(device  : Device, attrlist : Bytes) : Context {
		return new Context(device);
	}

	/** Emulates the OpenAL `alcMakeContextCurrent` function. **/
	public static function makeContextCurrent(context : Context) : Bool {
		ctx = context;
		return true;
	}

	/** Emulates the OpenAL `alcProcessContext` function. **/
	public static function processContext(context : Context) {
	}

	/** Emulates the OpenAL `alcSuspendContext` function. **/
	public static function suspendContext(context : Context) {
	}

	/** Emulates the OpenAL `alcDestroyContext` function. **/
	public static function destroyContext(context : Context) {
	}

	/** Emulates the OpenAL `alcGetCurrentContext` function. **/
	public static function getCurrentContext() : Context {
		return ctx;
	}

	/** Emulates the OpenAL `alcGetContextsDevice` function. **/
	public static function getContextsDevice(context : Context) : Device {
		return ctx.device;
	}

	// Device management
	/** Emulates the OpenAL `alcOpenDevice` function. **/
	public static function openDevice(devicename : Bytes) : Device {
		return new Device();
	}

	/** Emulates the OpenAL `alcCloseDevice` function. **/
	public static function closeDevice(device : Device) : Bool {
		return true;
	}

	// Extension support
	/** Emulates the OpenAL `alcLoadExtensions` function. **/
	public static function loadExtensions(alDevice : Device) { }

	/** Emulates the OpenAL `alcIsExtensionPresent` function. **/
	public static function isExtensionPresent(device : Device, extname : Bytes) : Bool {
		return false;
	}
	/** Emulates the OpenAL `alcGetEnumValue` function. **/
	public static function getEnumValue(device : Device, enumname : Bytes) : Int {
		throw "TODO";
	}
	// public static function alcGetProcAddress(device : Device, const ALCchar *funcname);

	// Query function
	/** Emulates the OpenAL `alcGetString` function. **/
	public static function getString   (device : Device, param : Int) : Bytes {
		throw "TODO";
	}
	/** Emulates the OpenAL `alcGetIntegerv` function. **/
	public static function getIntegerv (device : Device, param : Int, size : Int, values : Bytes) {
		switch (param) {
			case EFX.MAX_AUXILIARY_SENDS : 0;
			default : throw "Unsupported param 0x" + StringTools.hex(param);
		}
	}

	// Capture function
	// public static function captureOpenDevice(devicename : hl.Bytes, frequency : Int, format : Int, buffersize : Int) : Device;
	// public static function captureCloseDevice (device : Device) : Bool;
	// public static function captureStart       (device : Device) : Void;
	// public static function captureStop        (device : Device) : Void;
	// public static function captureSamples     (device : Device, buffer : hl.Bytes, samples : Int) : Void;

	// ------------------------------------------------------------------------
	// Constants
	// ------------------------------------------------------------------------

	/** The OpenAL `FALSE` constant. **/
	public static inline var FALSE                            = 0;
	/** The OpenAL `TRUE` constant. **/
	public static inline var TRUE                             = 1;

	// Context attributes
	/** The OpenAL `FREQUENCY` constant. **/
	public static inline var FREQUENCY                        = 0x1007;
	/** The OpenAL `REFRESH` constant. **/
	public static inline var REFRESH                          = 0x1008;
	/** The OpenAL `SYNC` constant. **/
	public static inline var SYNC                             = 0x1009;
	/** The OpenAL `MONO_SOURCES` constant. **/
	public static inline var MONO_SOURCES                     = 0x1010;
	/** The OpenAL `STEREO_SOURCES` constant. **/
	public static inline var STEREO_SOURCES                   = 0x1011;

	// Errors
	/** The OpenAL `NO_ERROR` constant. **/
	public static inline var NO_ERROR                         = 0;
	/** The OpenAL `INVALID_DEVICE` constant. **/
	public static inline var INVALID_DEVICE                   = 0xA001;
	/** The OpenAL `INVALID_CONTEXT` constant. **/
	public static inline var INVALID_CONTEXT                  = 0xA002;
	/** The OpenAL `INVALID_ENUM` constant. **/
	public static inline var INVALID_ENUM                     = 0xA003;
	/** The OpenAL `INVALID_VALUE` constant. **/
	public static inline var INVALID_VALUE                    = 0xA004;
	/** The OpenAL `OUT_OF_MEMORY` constant. **/
	public static inline var OUT_OF_MEMORY                    = 0xA005;

	// Runtime ALC version
	/** The OpenAL `MAJOR_VERSION` constant. **/
	public static inline var MAJOR_VERSION                    = 0x1000;
	/** The OpenAL `MINOR_VERSION` constant. **/
	public static inline var MINOR_VERSION                    = 0x1001;

	// Context attribute list properties
	/** The OpenAL `ATTRIBUTES_SIZE` constant. **/
	public static inline var ATTRIBUTES_SIZE                  = 0x1002;
	/** The OpenAL `ALL_ATTRIBUTES` constant. **/
	public static inline var ALL_ATTRIBUTES                   = 0x1003;

	// Device strings
	/** The OpenAL `DEFAULT_DEVICE_SPECIFIER` constant. **/
	public static inline var DEFAULT_DEVICE_SPECIFIER         = 0x1004;
	/** The OpenAL `DEVICE_SPECIFIER` constant. **/
	public static inline var DEVICE_SPECIFIER                 = 0x1005;
	/** The OpenAL `EXTENSIONS` constant. **/
	public static inline var EXTENSIONS                       = 0x1006;

	// Capture extension
	/** The OpenAL `EXT_CAPTURE` constant. **/
	public static inline var EXT_CAPTURE                      = 1;
	/** The OpenAL `CAPTURE_DEVICE_SPECIFIER` constant. **/
	public static inline var CAPTURE_DEVICE_SPECIFIER         = 0x310;
	/** The OpenAL `CAPTURE_DEFAULT_DEVICE_SPECIFIER` constant. **/
	public static inline var CAPTURE_DEFAULT_DEVICE_SPECIFIER = 0x311;
	/** The OpenAL `CAPTURE_SAMPLES` constant. **/
	public static inline var CAPTURE_SAMPLES                  = 0x312;

	// Enumerate All extension
	/** The OpenAL `ENUMERATE_ALL_EXT` constant. **/
	public static inline var ENUMERATE_ALL_EXT                = 1;
	/** The OpenAL `DEFAULT_ALL_DEVICES_SPECIFIER` constant. **/
	public static inline var DEFAULT_ALL_DEVICES_SPECIFIER    = 0x1012;
	/** The OpenAL `ALL_DEVICES_SPECIFIER` constant. **/
	public static inline var ALL_DEVICES_SPECIFIER            = 0x1013;

}

/**
	Emulation of the OpenAL effects extension constants (effects are not supported by the emulator).
**/
class EFX {

	// Device attributes
	/** The OpenAL `EFX_MAJOR_VERSION` constant. **/
	public static inline var EFX_MAJOR_VERSION                     = 0x20001;
	/** The OpenAL `EFX_MINOR_VERSION` constant. **/
	public static inline var EFX_MINOR_VERSION                     = 0x20002;
	/** The OpenAL `MAX_AUXILIARY_SENDS` constant. **/
	public static inline var MAX_AUXILIARY_SENDS                   = 0x20003;

	// Listener properties.
	/** The OpenAL `METERS_PER_UNIT` constant. **/
	public static inline var METERS_PER_UNIT                       = 0x20004;

	// Source properties.
	/** The OpenAL `DIRECT_FILTER` constant. **/
	public static inline var DIRECT_FILTER                         = 0x20005;
	/** The OpenAL `FILTER_NULL` constant. **/
	public static inline var FILTER_NULL                           = 0x0000;

}

