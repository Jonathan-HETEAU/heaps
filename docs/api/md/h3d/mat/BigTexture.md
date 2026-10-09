# h3d.mat.BigTexture

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/BigTexture.hx`](../../../../../h3d/mat/BigTexture.hx)

A texture atlas packing many images in a single square texture, so that objects using different images can be
drawn together (used by `h3d.scene.World`). Images are added with `add`, then loaded and uploaded with `done`.
Images are reloaded when their file changes.

## Constructor

### new

```haxe
function new(id:Int, size:Int, ?bgColor:Int = 0xFF8080FF):Void
```

Creates an empty big texture of `size` x `size` pixels.
- **param** `bgColor` The color (`0xAARRGGBB`) of the free areas.

## Variables

### id

```haxe
var id:Int
```

An identifier of the big texture, given by its user.

### tex

```haxe
var tex:Texture
```

The GPU texture, uploaded by `done`.

## Methods

### dispose

```haxe
function dispose():Void
```

Releases the texture and pixels.

### add

```haxe
function add(t:hxd.res.Image):Null<BigTextureElement>
```

Allocates an area for image `t` and returns it, or `null` if there is no space left.

### addEmpty

```haxe
function addEmpty(width:Int, height:Int):Null<BigTextureElement>
```

Allocates an empty area of the given size, or returns `null` if there is no space left.

### done

```haxe
function done():Void
```

Loads all the images (asynchronously when possible) and uploads the texture.
