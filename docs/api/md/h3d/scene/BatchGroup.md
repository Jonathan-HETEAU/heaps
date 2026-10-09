# h3d.scene.BatchGroup

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.Batcher` · source [`h3d/scene/Batcher.hx`](../../../../../h3d/scene/Batcher.hx)

A group of instances of a `Batcher` which can be removed together. Created with `Batcher.createGroup`.

## Constructor

### new

```haxe
inline function new(b:Batcher, groupID:Int):Void
```

Creates a group. Use `Batcher.createGroup` instead.

## Methods

### emitInstance

```haxe
inline function emitInstance(obj:ObjectInstance, worldPosition:h3d.Matrix, ?syncID:Int = 0):Void
```

Adds an instance of `obj` to this group. See `Batcher.emitInstance`.

### reserveInstances

```haxe
inline function reserveInstances(obj:ObjectInstance, count:Int):Void
```

Preallocates `count` instances of `obj` in this group. See `Batcher.reserveInstances`.

### remove

```haxe
inline function remove():Void
```

Removes all the instances of this group and releases it.
