# h3d.scene.ObjectFlags

**enum abstract** · package [`h3d.scene`](README.md) · module `h3d.scene.Object` · source [`h3d/scene/Object.hx`](../../../../../h3d/scene/Object.hx)

Bit flags storing the boolean state of an `Object`. Most of them are exposed as properties of `Object`
(for instance `FVisible` is `Object.visible`): prefer using these properties.

Underlying type: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `FPosChanged` | `0x01` | The transform changed and `absPos` must be recomputed. |
| `FVisible` | `0x02` | See `Object.visible`. |
| `FCulled` | `0x04` | See `Object.culled`. |
| `FFollowPositionOnly` | `0x08` | See `Object.followPositionOnly`. |
| `FLightCameraCenter` | `0x10` | See `Object.lightCameraCenter`. |
| `FAllocated` | `0x20` | The object is part of an allocated scene. |
| `FAlwaysSyncAnimation` | `0x40` | See `Object.alwaysSyncAnimation`. |
| `FInheritCulled` | `0x80` | See `Object.inheritCulled`. |
| `FModelRoot` | `0x100` | See `Object.modelRoot`. |
| `FIgnoreBounds` | `0x200` | See `Object.ignoreBounds`. |
| `FIgnoreCollide` | `0x400` | See `Object.ignoreCollide`. |
| `FIgnoreParentTransform` | `0x800` | See `Object.ignoreParentTransform`. |
| `FCullingColliderInherited` | `0x1000` | See `Object.cullingColliderInherited`. |
| `FFixedPosition` | `0x2000` | See `Object.fixedPosition`. |
| `FFixedPositionSynced` | `0x4000` | Internal: the absolute position of a `fixedPosition` object has been computed once. |
| `FAlwaysSync` | `0x8000` | See `Object.alwaysSync`. |
| `FDrawn` | `0x10000` | See `Object.drawn`. |
| `FInSync` | `0x20000` | Internal: the object is currently running its `sync`. |
| `FPosChangedInSync` | `0x40000` | Internal: the transform was modified during `sync`, so `absPos` must be recomputed right after it. |
| `FForceBounds` | `0x80000` | See `Object.forceBounds`. |

## Methods

### toInt

```haxe
inline function toInt():Int
```

Returns the integer value of the flags.

### has

```haxe
inline function has(f:ObjectFlags):Bool
```

Tells if the flag `f` is set.

### set

```haxe
inline function set(f:ObjectFlags, b:Bool):Bool
```

Sets or clears the flag `f` and returns `b`.

### toString

```haxe
inline function toString():String
```

Returns the list of the flags set, separated by ` | `.
