# hxsl.Linker

**class** · package [`hxsl`](README.md) · source [`hxsl/Linker.hx`](../../../../hxsl/Linker.hx)

Links the variants of a list of shaders into a single shader: the variables of the same name are merged, and the functions are ordered by their dependencies.

## Constructor

### new

```haxe
function new(mode:LinkMode):Void
```

Creates a linker for the given link mode.

## Variables

### allVars

```haxe
var allVars:Array<hxsl._Linker.AllocatedVar>
```

All the variables of the linked shader.

## Methods

### link

```haxe
function link(shadersData:Array<ShaderData>):ShaderData
```

Links the shaders and returns the result, with its vertex and fragment (or main) functions.
