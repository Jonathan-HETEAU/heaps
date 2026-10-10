package hxd.snd.webaudio;
#if (js && !useal)
import js.html.audio.*;

/**
	A Web Audio sound buffer.
**/
class BufferHandle {
	/**
		The audio buffer.
	**/
	public var inst : AudioBuffer;
	/**
		Tells if the buffer contains the end of the sound.
	**/
	public var isEnd : Bool;
	/**
		The number of samples.
	**/
	public var samples : Int;
	/**
		Creates an empty handle.
	**/
	public function new() { }
}

/**
	A Web Audio sound source: the chain of nodes (effects and gain) the buffers are played through.
**/
@:allow(hxd.snd.webaudio.Driver)
class SourceHandle {
	/**
		The number of samples of the buffers already removed from the queue.
	**/
	public var sampleOffset   : Int;
	/**
		Tells if the source is playing.
	**/
	public var playing        : Bool;

	/**
		The driver of the source.
	**/
	public var driver : Driver;
	/**
		The node of the low pass effect, if used.
	**/
	public var lowPass : BiquadFilterNode;
	/**
		The node of the spatialization effect, if used.
	**/
	public var panner : PannerNode;
	/**
		The node applying the volume.
	**/
	public var gain : GainNode;
	/**
		The first node of the chain, where the buffers are connected.
	**/
	public var destination : AudioNode;
	/**
		The queued buffers.
	**/
	public var buffers : Array<BufferPlayback>;
	/**
		The playback rate set by the pitch effect.
	**/
	public var pitch : Float;
	/**
		Tells if no buffer was played yet: the first one is faded in to avoid a click.
	**/
	public var firstPlay : Bool;

	/**
		Creates a source.
	**/
	public function new() {
		buffers = [];
		sampleOffset = 0;
		pitch = 1;
		firstPlay = true;
	}

	/**
		Rebuilds the chain of nodes after an effect node was added or removed, and restarts the playing buffers.
	**/
	public function updateDestination() {
		destination = gain;
		if ( lowPass != null ) {
			lowPass.connect(destination);
			destination = lowPass;
		}
		if ( panner != null ) {
			panner.connect(destination);
			destination = panner;
		}
		gain.connect(driver.destination);
		for (b in buffers) {
			if ( b.node != null ) {
				b.restart(this);
			}
		}
	}

	/**
		Applies the new `pitch` to the queued buffers, rescheduling them.
	**/
	public function applyPitch() {
		// BUG: Because pitch is k-rate parameter, it applies it once per 128 sample block, which throws timings off and creates audio skips.
		// Noticeable mainly with low pitch values, so it's not particularly usable to reduce pitch gradually.
		var t = 0.;
		for ( b in buffers ) {
			t = b.readjust(t, this);
		}
	}
}

/**
	A buffer queued on a Web Audio source, with its scheduled play times.
**/
class BufferPlayback {

	/**
		The buffer.
	**/
	public var buffer : BufferHandle;
	/**
		The node playing the buffer.
	**/
	public var node : AudioBufferSourceNode;
	/**
		The start offset in the buffer, in seconds.
	**/
	public var offset : Float;
	/**
		Tells if the playback was started: the node can't be started again.
	**/
	public var dirty : Bool;
	/**
		Tells if the buffer was played completely.
	**/
	public var consumed : Bool;
	/**
		The context time when the playback starts.
	**/
	public var starts : Float;
	/**
		The context time when the playback ends.
	**/
	public var ends : Float;

	/**
		The number of samples played.
	**/
	public var currentSample(get, never):Int;

	static inline var FADE_SAMPLES = 10; // Click prevent at the start.

	var lastSamples:Int;
	var lastTime:Float;

	/**
		Creates an empty playback.
	**/
	public function new()
	{

	}

	function get_currentSample ( ):Int {
		if ( consumed ) return buffer.samples;
		if ( node == null || !dirty || node.context.currentTime < lastTime ) return 0;
		lastSamples += Math.floor((node.context.currentTime - lastTime) * buffer.inst.sampleRate * node.playbackRate.value);
		lastTime = node.context.currentTime;
		return lastSamples;
	}

	/**
		Sets the buffer to play, starting at `grainOffset` seconds.
	**/
	public function set(buf : BufferHandle, grainOffset : Float) {
		buffer = buf;
		offset = Math.isNaN(grainOffset) ? 0 : grainOffset;
		dirty = false;
		consumed = false;
		starts = 0;
		ends = 0;
	}

	/**
		Schedules the playback at the context time `time`, and returns its end time.
	**/
	public function start( ctx : AudioContext, source : SourceHandle, time : Float) {
		dirty = true;
		consumed = false;
		if (node != null) {
			stop();
		}
		if ( source.firstPlay && buffer.samples > FADE_SAMPLES ) {
			source.firstPlay = false;
			var channels = [for (i in 0...buffer.inst.numberOfChannels) buffer.inst.getChannelData(i)];
			var j = 0, fade = 0.;
			while ( j < FADE_SAMPLES ) {
				var i = 0;
				while ( i < channels.length ) {
					channels[i][j] *= fade;
					i++;
				}
				j++;
				fade += 1 / FADE_SAMPLES;
				if (fade > 1) fade = 1;
			}
		}
		node = ctx.createBufferSource();
		node.buffer = buffer.inst;
		node.addEventListener("ended", onBufferConsumed);
		node.connect(source.destination);
		node.playbackRate.value = source.pitch;
		node.start(time, offset);
		lastSamples = 0;
		lastTime = time;
		starts = time;
		return ends = time + (buffer.inst.duration - offset) / source.pitch;
	}

	/**
		Updates the playback after a pitch change, and returns its end time.
	**/
	public function readjust( time : Float, source : SourceHandle ) {
		if (consumed || node == null) return ends;
		var ctx = source.driver.ctx;
		var shiftTime = ctx.currentTime;// + 16 / buffer.inst.sampleRate;

		node.playbackRate.setValueAtTime(source.pitch, shiftTime);
		var elapsed = shiftTime - starts;
		if ( elapsed < 0 ) {
			// Queued node that haven't started yet: Requeue.
			return start(ctx, source, time == 0 ? shiftTime : time);
		}
		// Stretch start position relative to new pitch.
		starts = shiftTime - (elapsed / source.pitch);
		return ends = starts + (buffer.inst.duration - offset) / source.pitch;
	}

	/**
		Restarts the playback with a new node, at the current position.
	**/
	public function restart( source : SourceHandle ) {
		if ( consumed || node == null ) return;
		var ctx = hxd.snd.webaudio.Context.get();
		if ( ctx.currentTime > starts ) {
			offset += (ctx.currentTime - starts) * source.pitch;
			start(ctx, source, ctx.currentTime);
		} else {
			start(ctx, source, starts);
		}
	}

	/**
		Stops the playback.
	**/
	public function stop( immediate : Bool = true ) {
		if ( node != null ) {
			node.removeEventListener("ended", onBufferConsumed);
			if (immediate) node.disconnect();
			else node.stop();
			node = null;
		}
	}

	function onBufferConsumed ( e : js.html.Event ) {
		node.removeEventListener("ended", onBufferConsumed);
		node.disconnect();
		node = null;
		consumed = true;
	}

	/**
		Releases the buffer and node.
	**/
	public function clear()
	{
		buffer = null;
		node = null;
	}

}

#end