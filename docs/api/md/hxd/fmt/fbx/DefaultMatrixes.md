# hxd.fmt.fbx.DefaultMatrixes

**class** · package [`hxd.fmt.fbx`](README.md) · module `hxd.fmt.fbx.BaseLibrary` · source [`hxd/fmt/fbx/BaseLibrary.hx`](../../../../../../hxd/fmt/fbx/BaseLibrary.hx)

## Constructor

### new

```haxe
function new():Void
```

## Static methods

### rightHandToLeft

```haxe
static inline function rightHandToLeft(m:h3d.Matrix):Void
```

## Variables

### trans

```haxe
var trans:Null<h3d.col.Point>
```

### scale

```haxe
var scale:Null<h3d.col.Point>
```

### rotate

```haxe
var rotate:Null<h3d.col.Point>
```

### preRot

```haxe
var preRot:Null<h3d.col.Point>
```

### wasRemoved

```haxe
var wasRemoved:Null<Int>
```

### transPos

```haxe
var transPos:h3d.Matrix
```

## Methods

### fromMatrix

```haxe
function fromMatrix(m:h3d.Matrix):Void
```

### toMatrix

```haxe
function toMatrix(leftHand:Bool):h3d.Matrix
```

### toQuaternion

```haxe
function toQuaternion(leftHand:Bool):h3d.Quat
```
