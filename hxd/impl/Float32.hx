package hxd.impl;

/**
	A 32 bits float on HashLink, a `Float` on other targets.
**/
typedef Float32 = #if hl hl.F32 #else Float #end;