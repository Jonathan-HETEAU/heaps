# hxd.fmt.hmd.Model

**class** · package [`hxd.fmt.hmd`](README.md) · module `hxd.fmt.hmd.Data` · source [`hxd/fmt/hmd/Data.hx`](../../../../../../hxd/fmt/hmd/Data.hx)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### name

```haxe
var name:String
```

### props

```haxe
var props:Properties
```

### parent

```haxe
var parent:Index<Model>
```

### follow

```haxe
var follow:Null<String>
```

### position

```haxe
var position:Position
```

### geometry

```haxe
var geometry:Index<Geometry>
```

### materials

```haxe
var materials:Null<Array<Index<Material>>>
```

### skin

```haxe
var skin:Null<Skin>
```

### lods

```haxe
var lods:Array<Index<Model>>
```

### collider

```haxe
var collider:Null<Index<Collider>>
```

### colliders

```haxe
var colliders:Null<Array<Index<Collider>>>
```

## Methods

### getObjectName

```haxe
function getObjectName():String
```

### isLOD

```haxe
function isLOD():Bool
```

### isLOD0

```haxe
function isLOD0(modelName:String):Bool
```

### toLODName

```haxe
function toLODName(i:Int):String
```

### getLODInfos

```haxe
function getLODInfos():{ modelName:String, lodLevel:Int }
```

### isCollider

```haxe
function isCollider():Bool
```
