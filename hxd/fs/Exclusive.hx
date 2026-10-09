package hxd.fs;

/**
	A global lock protecting the resource loading when the `heaps_mt_loader` define is set, to load resources from several threads.
**/
class Exclusive {

	#if heaps_mt_loader
	static var e_lock = new sys.thread.Mutex();
	#end

	/**
		Runs `f` while holding the lock (without lock if `heaps_mt_loader` is not set), and returns its result.
	**/
	public static inline function lock<T>( f : Void -> T ) {
		#if heaps_mt_loader
		e_lock.acquire();
		var ret = try f() catch( e ) { e_lock.release(); throw e; }
		e_lock.release();
		return ret;
		#else
		return f();
		#end
	}

}