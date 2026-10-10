package h3d.impl;

/**
	A stutter: one or more consecutive frames much longer than usual.
**/
class Stutter {
	/**
		The time lost, in milliseconds, compared to the median frame time.
	**/
	public var impact : Float;
	/**
		The number of frames of the stutter.
	**/
	public var frameCount : Int;
	/**
		The time of the start of the stutter.
	**/
	public var startTime : Float;

	/**
		Creates a stutter of the given impact.
	**/
	public function new(v:Float) {
		impact = v;
		frameCount = 1;
		startTime = haxe.Timer.stamp();
	}
}

/**
	The severity of a stutter, by its impact: `Minor` under 20 ms, `Major` under 50 ms, `Severe` above.
**/
enum StutterSeverity {
	/**
		Stutters with an impact under 20 ms.
	**/
	Minor;
	/**
		Stutters with an impact between 20 and 50 ms.
	**/
	Major;
	/**
		Stutters with an impact of 50 ms or more.
	**/
	Severe;
	/**
		All the stutters.
	**/
	All;
}

/**
	Detects the frames much longer than the median of the last 60 frames, and counts the stutters of the last minute.
**/
class StutterBenchmark {

	static var MAX_FRAME_COUNT : Int = 60;
	static var STUTTER_FLAT_THRESHOLD : Float = 10.0;
	static var STUTTER_MULT_THRESHOLD : Float = 1.5;

	static var STUTTER_MAJOR_DURATION : Float = 20.0;
	static var STUTTER_SEVERE_DURATION : Float = 50.0;

	var stutters : Array<Stutter> = [];
	var frames : FrameData;

	var median : Float = 0;
	var frameWithoutStutter : Int = 0;

	var cpuStart : Float = 0;
	var cpuEnd : Float = 0;

	/**
		Creates the benchmark.
	**/
	public function new() {
		frames = new FrameData(MAX_FRAME_COUNT);
	}

	/**
		Starts measuring a frame.
	**/
	public function begin() {
		cpuStart = haxe.Timer.stamp();
	}

	/**
		Ends measuring a frame, and records a stutter if it was too long.
	**/
	public function end() {
		cpuEnd = haxe.Timer.stamp();
		var dtInMs = (cpuEnd - cpuStart) * 1000.0;
		if(isStutter(dtInMs)){
			if(frameWithoutStutter > 1){
				stutters.push(new Stutter(dtInMs - median));
			} else if(stutters.length > 0) {
				var cur = stutters[stutters.length - 1];
				cur.frameCount++;
				cur.impact += dtInMs - median;
			}
			frameWithoutStutter = 0;
			frames.push(dtInMs);
		} else {
			frameWithoutStutter++;
			frames.push(dtInMs);
		}

		var t = haxe.Timer.stamp();
		var length = stutters.length;
		for( i in 0...length) {
			var j = length - 1 - i;
			if(t - stutters[j].startTime > 60) {
				stutters.remove(stutters[j]);
			}
		}
	}

	function isStutter(dtInMs : Float) : Bool {
		if( frames.length == 0 )
			return false;
		median = frames.getMedian();
		return dtInMs > median + STUTTER_FLAT_THRESHOLD || dtInMs > median * STUTTER_MULT_THRESHOLD;
	}

	/**
		Returns the number of stutters of the given severity in the last minute.
	**/
	public function getStutterCount(severity: StutterSeverity) : Int {
		if(severity == All)
			return stutters.length;
		var count = 0;
		for(s in stutters) {
			switch(severity) {
				case Minor:
					if(s.impact < STUTTER_MAJOR_DURATION)
						count++;
				case Major:
					if(s.impact >= STUTTER_MAJOR_DURATION && s.impact < STUTTER_SEVERE_DURATION)
						count++;
				case Severe:
					if(s.impact >= STUTTER_SEVERE_DURATION)
						count++;
				case All:
			}
		}
		return count;
	}

	/**
		Returns the impact of the worst stutter of the last minute, in milliseconds.
	**/
	public function getWorstStutterDuration() : Float {
		var worst = 0.0;
		for(s in stutters) {
			if(s.impact > worst)
				worst = s.impact;
		}
		return worst;
	}
}