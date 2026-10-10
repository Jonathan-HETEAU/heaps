# hxd.CustomCursor

**class** · package [`hxd`](README.md) · module `hxd.Cursor` · source [`hxd/Cursor.hx`](../../../../hxd/Cursor.hx)

A cursor made of bitmaps, possibly animated.

## Constructor

### new

```haxe
function new(frames:Array<BitmapData>, speed:Float, offsetX:Int, offsetY:Int):Void
```

Creates a cursor.
- **param** `frames` The images of the cursor.
- **param** `speed` The number of frames per second.
- **param** `offsetX` The X position of the cursor hot spot in the images.
- **param** `offsetY` The Y position of the cursor hot spot in the images.

## Static methods

### getNativeCursor _(js only)_

```haxe
static function getNativeCursor(name:String):Cursor
```

JavaScript: returns a cursor using the CSS cursor `name`.

## Methods

### reset

```haxe
function reset():Void
```

Restarts the animation.

### update

```haxe
function update(dt:Float):Int
```

Advances the animation by `dt` seconds and returns the current frame index.

### dispose

```haxe
function dispose():Void
```

Releases the native cursors.
