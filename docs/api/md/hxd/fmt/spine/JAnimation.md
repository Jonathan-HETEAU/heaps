# hxd.fmt.spine.JAnimation

**typedef** · package [`hxd.fmt.spine`](README.md) · module `hxd.fmt.spine.JsonData` · source [`hxd/fmt/spine/JsonData.hx`](../../../../../../hxd/fmt/spine/JsonData.hx)

An animation, in the Spine JSON format.

## Fields

### slots

```haxe
var ?slots:Null<Dynamic>
```

The slot animations.

### ik

```haxe
var ?ik:Null<Dynamic>
```

The inverse kinematics animations.

### ffd

```haxe
var ?ffd:Null<Dynamic>
```

The free form deformation animations.

### events

```haxe
var ?events:Null<Dynamic>
```

The event keys.

### drawOrder

```haxe
var ?drawOrder:Null<Dynamic>
```

The draw order keys.

### bones

```haxe
var ?bones:Null<DynamicAccess<JBoneAnimation>>
```

The bone animations, by bone name.
