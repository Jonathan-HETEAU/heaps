package hxd.res;

#if hide
/**
	A prefab resource, defined by the Hide editor.
**/
typedef Prefab = hrt.prefab.Resource;
#else
/**
	A prefab resource. It needs the Hide library: without it, it is a plain resource.
**/
typedef Prefab = hxd.res.Resource;
#end
