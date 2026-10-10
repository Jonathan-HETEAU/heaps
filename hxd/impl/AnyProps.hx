package hxd.impl;

/**
	Base class of the objects configured by a dynamic properties object, such as the renderers and materials.
**/
class AnyProps {

	/**
		The properties. Setting them calls `refreshProps`.
	**/
	public var props(default, set) : Any;

	function set_props(p) {
		this.props = p;
		refreshProps();
		return p;
	}

	/**
		Sets the default properties of the given kind.
	**/
	public function setDefaultProps( kind : String ) {
		props = getDefaultProps(kind);
	}

	/**
		Returns the default properties of the given kind. Overridden by the subclasses.
	**/
	public function getDefaultProps( ?kind : String ) : Any {
		return {};
	}

	/**
		Returns the properties to use from loaded data.
	**/
	public function loadProps( v : Dynamic ) : Any {
		return v;
	}

	/**
		Called when the properties change, to apply them.
	**/
	public function refreshProps() {
	}

	#if (editor && js)
	/**
		Returns the HTML element editing the properties, in the editor.
	**/
	public function editProps() {
		return new js.jquery.JQuery('<p>No properties for this object</p>');
	}
	#end

}
