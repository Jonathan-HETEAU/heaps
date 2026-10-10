# hxsl.Globals

**class** · package [`hxsl`](README.md) · source [`hxsl/Globals.hx`](../../../../hxsl/Globals.hx)

The values of the global shader variables (declared with `@global` in the shaders), by path. Accessed with `h3d.scene.RenderContext.globals` or a `GlobalSlot`.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty set of globals.

## Static methods

### allocID

```haxe
static function allocID(path:String):Int
```

Returns the unique identifier of the global path.

### getIDName

```haxe
static function getIDName(id:Int):String
```

Returns the path of the global identifier.

## Methods

### set

```haxe
function set(path:String, v:Dynamic):Void
```

Sets the value of the global of the given path.

### get

```haxe
function get(path:String):Dynamic
```

Returns the value of the global of the given path.

### fastSet

```haxe
inline function fastSet(id:Int, v:Dynamic):Void
```

Sets the value of the global of the given identifier (see `allocID`).

### fastGet

```haxe
inline function fastGet(id:Int):Dynamic
```

Returns the value of the global of the given identifier.

### resetChannels

```haxe
inline function resetChannels():Void
```

Forgets the textures used by the channel constants.

### allocChannelID

```haxe
function allocChannelID(t:h3d.mat.Texture):Int
```

Returns the index of the texture used by a channel constant, allocating it if needed.
