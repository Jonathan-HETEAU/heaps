# hxd.clipper.ClipType

**enum** · package [`hxd.clipper`](README.md) · source [`hxd/clipper/ClipType.hx`](../../../../../hxd/clipper/ClipType.hx)

The boolean operation of `Clipper.execute`, between the subject and the clip polygons.

## Constructors

### Intersection

```haxe
Intersection
```

The regions inside both the subject and the clip.

### Union

```haxe
Union
```

The regions inside the subject or the clip.

### Difference

```haxe
Difference
```

The regions inside the subject but not the clip.

### Xor

```haxe
Xor
```

The regions inside the subject or the clip, but not both.
