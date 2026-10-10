package hxd.snd.openal;

#if hlopenal
import openal.AL.Source;
import openal.AL.Buffer;
/**
	The OpenAL API.
**/
typedef AL = openal.AL;
/**
	The OpenAL effects extension API.
**/
typedef EFX = openal.EFX;
#else
import hxd.snd.openal.Emulator;
/**
	The OpenAL API, emulated over Web Audio.
**/
typedef AL = Emulator;
#end

/**
	An OpenAL sound buffer.
**/
class BufferHandle {
	/**
		The OpenAL buffer.
	**/
	public var inst : Buffer;
	/**
		Tells if the buffer contains the end of the sound.
	**/
	public var isEnd : Bool;
	/**
		Creates an empty handle.
	**/
	public function new() { }
}

/**
	An OpenAL sound source, with the auxiliary sends used by its effects.
**/
class SourceHandle {
	/**
		The OpenAL source.
	**/
	public var inst           : Source;
	/**
		The number of samples of the buffers already removed from the queue.
	**/
	public var sampleOffset   : Int;
	/**
		Tells if the source is playing.
	**/
	public var playing        : Bool;
	var nextAuxiliarySend     : Int;
	var freeAuxiliarySends    : Array<Int>;
	var effectToAuxiliarySend : Map<Effect, Int>;

	/**
		Creates a source.
	**/
	public function new() {
		sampleOffset = 0;
		nextAuxiliarySend = 0;
		freeAuxiliarySends = [];
		effectToAuxiliarySend = new Map();
	}

	/**
		Allocates an auxiliary send for the effect and returns its index.
	**/
	public function acquireAuxiliarySend(effect : Effect) : Int {
		var send = freeAuxiliarySends.length > 0
			? freeAuxiliarySends.shift()
			: nextAuxiliarySend++;
		effectToAuxiliarySend.set(effect, send);
		return send;
	}

	/**
		Returns the auxiliary send of the effect.
	**/
	public function getAuxiliarySend(effect : Effect) : Int {
		return effectToAuxiliarySend.get(effect);
	}

	/**
		Releases the auxiliary send of the effect and returns its index.
	**/
	public function releaseAuxiliarySend(effect : Effect) : Int {
		var send = effectToAuxiliarySend.get(effect);
		effectToAuxiliarySend.remove(effect);
		freeAuxiliarySends.push(send);
		return send;
	}
}