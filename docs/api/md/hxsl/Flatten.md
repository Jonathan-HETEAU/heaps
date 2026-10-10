# hxsl.Flatten

**class** · package [`hxsl`](README.md) · source [`hxsl/Flatten.hx`](../../../../hxsl/Flatten.hx)

Packs the parameters and globals of a shader stage into arrays of `vec4` (and arrays of textures and buffers), as expected by the drivers.

## Constructor

### new

```haxe
function new():Void
```

Creates the pass.

## Variables

### allocData

```haxe
var allocData:Map<TVar, Array<hxsl._Flatten.Alloc>>
```

The position of each packed variable in its array.

### hasBindless

```haxe
var hasBindless:Bool
```

Tells if the stage uses bindless handles.

## Methods

### flatten

```haxe
function flatten(s:ShaderData, kind:FunctionKind):ShaderData
```

Returns the shader stage with its parameters and globals packed.
