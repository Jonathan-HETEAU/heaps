# hxsl.Globals

**class** · package [`hxsl`](README.md) · source [`hxsl/Globals.hx`](../../../../hxsl/Globals.hx)

## Constructor

### new

```haxe
function new():Void
```

## Static methods

### allocID

```haxe
static function allocID(path:String):Int
```

### getIDName

```haxe
static function getIDName(id:Int):String
```

## Methods

### set

```haxe
function set(path:String, v:Dynamic):Void
```

### get

```haxe
function get(path:String):Dynamic
```

### fastSet

```haxe
inline function fastSet(id:Int, v:Dynamic):Void
```

### fastGet

```haxe
inline function fastGet(id:Int):Dynamic
```

### resetChannels

```haxe
inline function resetChannels():Void
```

### allocChannelID

```haxe
function allocChannelID(t:h3d.mat.Texture):Int
```
