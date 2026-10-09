# h3d.anim.Skin

**class** · package [`h3d.anim`](README.md) · source [`h3d/anim/Skin.hx`](../../../../../h3d/anim/Skin.hx)

The skeleton and skinning data of a skinned geometry: the joints and, for each vertex, the joints influencing it and
their weights. Used by `h3d.scene.Skin`.

## Constructor

### new

```haxe
function new(name:String, vertexCount:Int, bonesPerVertex:Int):Void
```

Creates an empty skin.

## Variables

### name

```haxe
var name:String
```

The skin name.

### vertexCount

```haxe
var vertexCount(default, null):Int
```

The number of vertexes of the geometry.

### bonesPerVertex

```haxe
var bonesPerVertex(default, null):Int
```

The maximum number of joints influencing a vertex.

### vertexJoints

```haxe
var vertexJoints:Vector<Int>
```

The joints influencing each vertex (`bonesPerVertex` per vertex), as `bindIndex` values.

### vertexWeights

```haxe
var vertexWeights:Vector<Float>
```

The weights of the joints influencing each vertex.

### rootJoints

```haxe
var rootJoints(default, null):Array<Joint>
```

The joints without parent.

### namedJoints

```haxe
var namedJoints(default, null):Map<String, Joint>
```

The joints, by name.

### allJoints

```haxe
var allJoints(default, null):Array<Joint>
```

All the joints, parents before children.

### boundJoints

```haxe
var boundJoints(default, null):Array<Joint>
```

The joints influencing at least one vertex.

### primitive

```haxe
var primitive:h3d.prim.Primitive
```

The skinned geometry.

### splitJoints

```haxe
var splitJoints(default, null):Array<{ material:Int, joints:Array<Joint> }>
```

When the skin has too many joints for a single draw, the groups of joints used by each part of the geometry.

### triangleGroups

```haxe
var triangleGroups:Vector<Int>
```

The split group of each triangle, when split.

## Methods

### setJoints

```haxe
function setJoints(joints:Array<Joint>, roots:Array<Joint>):Void
```

Sets the joints of the skeleton.

### addInfluence

```haxe
inline function addInfluence(vid:Int, j:Joint, w:Float):Void
```

Adds the influence of joint `j` with weight `w` on vertex `vid`. Call `initWeights` after all influences are added.

### isSplit

```haxe
inline function isSplit():Bool
```

Tells if the skin is split in several groups of joints.

### initWeights

```haxe
function initWeights():Void
```

Computes `boundJoints`, `vertexJoints` and `vertexWeights` from the influences (keeping the `bonesPerVertex` strongest).

### split

```haxe
function split(maxBones:Int, index:Array<Int>, triangleMaterials:Null<Array<Int>>):Bool
```

Splits the skin in groups of at most `maxBones` joints, each drawing a part of the triangles. Returns `false` if not
needed.
