# hxd.tools.Instance

**abstract** · package [`hxd.tools`](README.md) · module `hxd.tools.VHACD` · source [`hxd/tools/VHACD.hx`](../../../../../hxd/tools/VHACD.hx) · available on hl/sdl, hl/directx

Underlying type: `hl.Abstract<Svhacd>`

## Methods

### clean

```haxe
function clean():Void
```

### release

```haxe
function release():Void
```

### compute

```haxe
function compute(points:hl.Bytes, countPoints:Int, triangles:hl.Bytes, countTriangle:Int, params:Parameters):Bool
```

### get_n_convex_hulls

```haxe
function get_n_convex_hulls():Int
```

### get_convex_hull

```haxe
function get_convex_hull(index:Int, convexHullOut:ConvexHull):Bool
```
