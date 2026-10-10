# hxsl.Samplers

**class** · package [`hxsl`](README.md) · module `hxsl.HlslOut` · source [`hxsl/HlslOut.hx`](../../../../hxsl/HlslOut.hx)

Allocates the sampler registers of the textures, sharing the ones of the textures with the same `@sampler` name.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty allocation.

## Variables

### count

```haxe
var count:Int
```

The number of samplers allocated.

## Methods

### make

```haxe
function make(v:TVar, arr:Array<Int>):Array<Int>
```

Allocates the samplers of the texture variable (or array of textures), adds them to `arr` and returns it. Returns `null` if the variable is not a texture.
