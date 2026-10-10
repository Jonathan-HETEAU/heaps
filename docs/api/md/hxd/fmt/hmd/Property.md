# hxd.fmt.hmd.Property

**enum** · package [`hxd.fmt.hmd`](README.md) · module `hxd.fmt.hmd.Data` · source [`hxd/fmt/hmd/Data.hx`](../../../../../../hxd/fmt/hmd/Data.hx)

Type parameters: `<T>`

Optional properties of the elements of the file.

## Constructors

### CameraFOVY

```haxe
CameraFOVY(v:Float)
```

The vertical field of view of a camera, in degrees.

### Unused_HasMaterialFlags

```haxe
Unused_HasMaterialFlags
```

Not used anymore.

### HasExtraTextures

```haxe
HasExtraTextures
```

The material has a specular texture and a normal map.

### FourBonesByVertex

```haxe
FourBonesByVertex
```

The skin of the geometry uses 4 bones by vertex instead of 3.

### HasLod

```haxe
HasLod
```

The model has levels of detail.

### HasCollider

```haxe
HasCollider
```

The model has a collider.

### HasColliders

```haxe
HasColliders
```

The model has several colliders.

### HasCustomCollider

```haxe
HasCustomCollider
```

The file has colliders that are not convex hulls.
