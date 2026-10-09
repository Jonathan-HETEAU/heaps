# h3d.anim.Skin

**class** · package [`h3d.anim`](README.md) · source [`h3d/anim/Skin.hx`](../../../../../h3d/anim/Skin.hx)

## Constructor

### new

```haxe
function new(name:String, vertexCount:Int, bonesPerVertex:Int):Void
```

## Variables

### name

```haxe
var name:String
```

### vertexCount

```haxe
var vertexCount(default, null):Int
```

### bonesPerVertex

```haxe
var bonesPerVertex(default, null):Int
```

### vertexJoints

```haxe
var vertexJoints:Vector<Int>
```

### vertexWeights

```haxe
var vertexWeights:Vector<Float>
```

### rootJoints

```haxe
var rootJoints(default, null):Array<Joint>
```

### namedJoints

```haxe
var namedJoints(default, null):Map<String, Joint>
```

### allJoints

```haxe
var allJoints(default, null):Array<Joint>
```

### boundJoints

```haxe
var boundJoints(default, null):Array<Joint>
```

### primitive

```haxe
var primitive:h3d.prim.Primitive
```

### splitJoints

```haxe
var splitJoints(default, null):Array<{ material:Int, joints:Array<Joint> }>
```

### triangleGroups

```haxe
var triangleGroups:Vector<Int>
```

## Methods

### setJoints

```haxe
function setJoints(joints:Array<Joint>, roots:Array<Joint>):Void
```

### addInfluence

```haxe
inline function addInfluence(vid:Int, j:Joint, w:Float):Void
```

### isSplit

```haxe
inline function isSplit():Bool
```

### initWeights

```haxe
function initWeights():Void
```

### split

```haxe
function split(maxBones:Int, index:Array<Int>, triangleMaterials:Null<Array<Int>>):Bool
```
