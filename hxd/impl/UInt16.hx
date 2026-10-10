package hxd.impl;

/**
	An unsigned 16 bits integer on HashLink, an `Int` on other targets.
**/
typedef UInt16 = #if hl hl.UI16 #else Int #end;