# hxsl.BatchInstanceParams

**class** · package [`hxsl`](README.md) · module `hxsl.Cache` · source [`hxsl/Cache.hx`](../../../../hxsl/Cache.hx)

The parameters forced to be stored per instance in a batch shader, by shader name.

## Constructor

### new

```haxe
function new(forcedPerInstance:Array<{ shader:String, params:Array<String> }>):Void
```

Creates the parameters.

## Methods

### getSignature

```haxe
function getSignature():String
```

Returns a string identifying the parameters.
