# h3d.scene.ObjectFlags

**enum abstract** · package [`h3d.scene`](README.md) · module `h3d.scene.Object` · source [`h3d/scene/Object.hx`](../../../../../h3d/scene/Object.hx)

Underlying type: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `FPosChanged` | `0x01` |  |
| `FVisible` | `0x02` |  |
| `FCulled` | `0x04` |  |
| `FFollowPositionOnly` | `0x08` |  |
| `FLightCameraCenter` | `0x10` |  |
| `FAllocated` | `0x20` |  |
| `FAlwaysSyncAnimation` | `0x40` |  |
| `FInheritCulled` | `0x80` |  |
| `FModelRoot` | `0x100` |  |
| `FIgnoreBounds` | `0x200` |  |
| `FIgnoreCollide` | `0x400` |  |
| `FIgnoreParentTransform` | `0x800` |  |
| `FCullingColliderInherited` | `0x1000` |  |
| `FFixedPosition` | `0x2000` |  |
| `FFixedPositionSynced` | `0x4000` |  |
| `FAlwaysSync` | `0x8000` |  |
| `FDrawn` | `0x10000` |  |
| `FInSync` | `0x20000` |  |
| `FPosChangedInSync` | `0x40000` |  |
| `FForceBounds` | `0x80000` |  |

## Methods

### toInt

```haxe
inline function toInt():Int
```

### has

```haxe
inline function has(f:ObjectFlags):Bool
```

### set

```haxe
inline function set(f:ObjectFlags, b:Bool):Bool
```

### toString

```haxe
inline function toString():String
```
