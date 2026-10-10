package hxd.snd.webaudio;

#if (js && !useal)
import hxd.snd.Driver;
import hxd.snd.webaudio.AudioTypes;
import hxd.snd.effect.Pitch;

/**
	Implements `hxd.snd.effect.Pitch` with the playback rate of the Web Audio buffers.
**/
class PitchDriver extends EffectDriver<Pitch> {

	override function apply(e : Pitch, source : SourceHandle) : Void {
		if ( source.pitch != e.value ) {
			source.pitch = e.value;
			source.applyPitch();
		}
	}

	override function unbind(e : Pitch, source : SourceHandle) : Void {
		source.pitch = 1;
		source.applyPitch();
	}
}
#end