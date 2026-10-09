# h3d.mat.BigTextureElement

**class** · package [`h3d.mat`](README.md) · module `h3d.mat.BigTexture` · source [`h3d/mat/BigTexture.hx`](../../../../../h3d/mat/BigTexture.hx)

An area of a `BigTexture` holding one image. Its UV coordinates in the big texture are `du + u * su`, `dv + v * sv`.

## Constructor

### new

```haxe
function new(t:BigTexture, q:h3d.mat._BigTexture.QuadTree, du:Float, dv:Float, su:Float, sv:Float):Void
```

Creates an area. Use `BigTexture.add` instead.

## Variables

### t

```haxe
var t:BigTexture
```

The big texture containing the area.

### du

```haxe
var du:Float
```

The U offset of the area in the big texture.

### dv

```haxe
var dv:Float
```

The V offset of the area in the big texture.

### su

```haxe
var su:Float
```

The U size of the area in the big texture.

### sv

```haxe
var sv:Float
```

The V size of the area in the big texture.

### width

```haxe
var width(get, null):Int
```

The width of the area, in pixels.

### height

```haxe
var height(get, null):Int
```

The height of the area, in pixels.

## Methods

### set

```haxe
function set(tex:hxd.res.Image):Void
```

Changes the image of the area. The big texture is rebuilt by its next `BigTexture.done` call.

### setAlpha

```haxe
function setAlpha(tex:hxd.res.Image):Void
```

Sets an image whose red channel is copied to the alpha channel of the area.
