package hxd.snd;

/**
	The data of a sound that is not loaded yet: decoding it throws until `load` completes.
**/
class LoadingData extends Data {

	var snd : hxd.res.Sound;
	var waitCount = 0;

	/**
		Creates the data for the sound.
	**/
	public function new(snd) {
		this.snd = snd;
	}

	override function decode(out:haxe.io.Bytes, outPos:Int, sampleStart:Int, sampleCount:Int):Void {
		var d = snd.getData();
		if( d is LoadingData )
			throw "Sound data is not yet available, use load() first";
		d.decode(out, outPos, sampleStart, sampleCount);
	}

	override public function load(onEnd:Void->Void) {
		if( waitCount > 10 )
			throw "Failed to load data";
		var d = snd.getData();
		if( Std.isOfType(d, LoadingData) ) {
			waitCount++;
			haxe.Timer.delay(load.bind(onEnd), 100);
			return;
		}
		d.load(onEnd);
	}

}