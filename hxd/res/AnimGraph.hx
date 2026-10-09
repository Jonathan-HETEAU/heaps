package hxd.res;

#if hide
/**
	An animation graph resource, defined by the Hide editor.
**/
typedef AnimGraph = hrt.animgraph.Resource;
#else
/**
	An animation graph resource. It needs the Hide library: without it, it is a plain resource.
**/
typedef AnimGraph = hxd.res.Resource;
#end
