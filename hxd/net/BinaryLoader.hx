package hxd.net;

/**
	Loads binary data from a URL (JS only).
**/
class BinaryLoader {

	/**
		The URL to load.
	**/
	public var url(default, null) : String;

	/**
		Creates a loader for the URL.
	**/
	public function new( url : String ) {
		this.url = url;
	}

	/**
		Called with the data when it is loaded.
	**/
	public dynamic function onLoaded( bytes : haxe.io.Bytes ) {
	}

	/**
		Called during the loading with the number of bytes loaded and the total.
	**/
	public dynamic function onProgress( cur : Int, max : Int ) {
	}

	/**
		Called when the loading fails. Throws the message by default.
	**/
	public dynamic function onError( msg : String ) {
		throw msg;
	}

	/**
		Starts the loading.
	**/
	public function load() {
		#if js

		var xhr = new js.html.XMLHttpRequest();
		xhr.open('GET', url, true);
		xhr.responseType = js.html.XMLHttpRequestResponseType.ARRAYBUFFER;
		xhr.onerror = function(e) onError(xhr.statusText);

		xhr.onload = function(e) {

			if (xhr.status != 200) {
				onError(xhr.statusText);
				return;
			}
			onLoaded(haxe.io.Bytes.ofData(xhr.response));
		}

		xhr.onprogress = function(e) {
			onProgress(Std.int(js.Syntax.code("{0}.loaded || {0}.position", e)), Std.int(js.Syntax.code("{0}.total || {0}.totalSize", e)));
		}
		xhr.send();

		#else

		throw "Not available on this platform";

		#end
	}

}
