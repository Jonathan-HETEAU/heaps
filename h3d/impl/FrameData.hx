package h3d.impl;

/**
	A ring buffer of the values of the last frames.
**/
class FrameDataImpl {
	var arr : Array<Float>;
	var max : Int;
	var head : Int;
	var tail : Int;
	var full : Bool;
	/**
		The number of stored values.
	**/
	public var length(get, null) : Int;
	/**
		Creates a buffer keeping the last `max` values.
	**/
	public function new( max : Int ) {
		this.max = max;
		arr = [];
		arr.resize(max);
		head = 0;
		tail = 0;
		full = false;
	}
	function get_length() : Int {
		return full ? max : ( head >= tail ? head - tail : max + head - tail );
	}
	/**
		Adds a value, replacing the oldest one when the buffer is full.
	**/
	public function push( v : Float ) {
		arr[head] = v;
		head = incIndex(head);
		if( full )
			tail = incIndex(tail);
		if( !full )
			full = head == tail;
	}
	inline function incIndex( index : Int ) {
		index += 1;
		if( index == max )
			index = 0;
		return index;
	}
	/**
		Returns the value at the index, from the oldest one.
	**/
	public inline function get( index : Int ) : Float {
		var i = tail + index;
		if( i >= max )
			i -= max;
		return arr[i];
	}

	var medianValues : Array<Float> = [];
	/**
		Meant to return the median of the stored values. The values are currently not sorted before the middle one is picked.
	**/
	public function getMedian() : Float {
		function fillMedianValues() {
			if(medianValues.length != arr.length){
				medianValues.resize(arr.length);
			}
			var cursor = 0;
			if(head > tail) {
				for(i in tail...head)
					medianValues[cursor++] = arr[i];
			} else {
				for(i in tail...max)
					medianValues[cursor++] = arr[i];
				for(i in 0...head)
					medianValues[cursor++] = arr[i];
			}
			return cursor;
		}

		var n = fillMedianValues();
		medianValues.slice(0,n).sort(function(a: Float, b: Float) return a > b ? 1 : (a < b ? -1 : 0));
		return medianValues[Std.int(n / 2)];
	}
}

/**
	A ring buffer of the values of the last frames, with array access.
**/
@:forward abstract FrameData(FrameDataImpl) {
	/**
		Creates a buffer keeping the last `max` values.
	**/
	public function new( max : Int ) {
		this = new FrameDataImpl(max);
	}
	/**
		Returns the value at the index, from the oldest one.
	**/
	@:arrayAccess public inline function get( index : Int ) : Float {
		return this.get(index);
	}
}