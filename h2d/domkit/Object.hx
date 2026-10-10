package h2d.domkit;
import h2d.domkit.BaseComponents;

/**
	Implement this interface to declare an `h2d.Object` subclass as a domkit component, with its markup and CSS properties.
**/
@:build(h2d.domkit.InitComponents.init())
@:autoBuild(h2d.domkit.InitComponents.build())
interface Object {
}