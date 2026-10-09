# h3d.parts.GpuSave

**typedef** · package [`h3d.parts`](README.md) · module `h3d.parts.GpuParticles` · source [`h3d/parts/GpuParticles.hx`](../../../../../h3d/parts/GpuParticles.hx)

The serialized form of a `GpuParticles` (see `GpuParticles.save`).

## Fields

### version

```haxe
var version:Int
```

The version of the format.

### type

```haxe
var type:String
```

The type of the saved data.

### hide

```haxe
var ?hide:Null<Dynamic>
```

Extra data saved by the editor.

### groups

```haxe
var groups:Array<Dynamic>
```

The saved groups.

### bounds

```haxe
var bounds:Array<Float>
```

The bounds of the particles.
