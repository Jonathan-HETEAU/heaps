# hxsl.Dce

**class** · package [`hxsl`](README.md) · source [`hxsl/Dce.hx`](../../../../hxsl/Dce.hx)

Dead code elimination: removes the variables and expressions that don't contribute to the outputs of the shaders.

## Constructor

### new

```haxe
function new():Void
```

Creates the pass.

## Methods

### dce

```haxe
function dce(shaders:Array<ShaderData>):Array<ShaderData>
```

Removes the dead code of the stages of a shader (vertex then fragment), in place.
