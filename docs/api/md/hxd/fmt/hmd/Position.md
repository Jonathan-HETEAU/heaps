# hxd.fmt.hmd.Position

**class** · package [`hxd.fmt.hmd`](README.md) · module `hxd.fmt.hmd.Data` · source [`hxd/fmt/hmd/Data.hx`](../../../../../../hxd/fmt/hmd/Data.hx)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### x

```haxe
var x:Float
```

### y

```haxe
var y:Float
```

### z

```haxe
var z:Float
```

### qx

```haxe
var qx:Float
```

### qy

```haxe
var qy:Float
```

### qz

```haxe
var qz:Float
```

### qw

```haxe
var qw(get, null):Float
```

### sx

```haxe
var sx:Float
```

### sy

```haxe
var sy:Float
```

### sz

```haxe
var sz:Float
```

## Methods

### isIdentity

```haxe
inline function isIdentity():Bool
```

### loadQuaternion

```haxe
inline function loadQuaternion(q:h3d.Quat):Void
```

### toMatrix

```haxe
function toMatrix(?postScale:Bool = false):h3d.Matrix
```
