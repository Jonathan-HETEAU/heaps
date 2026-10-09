# h2d.impl.BatchDrawState

**class** · package [`h2d.impl`](README.md) · source [`h2d/impl/BatchDrawState.hx`](../../../../../h2d/impl/BatchDrawState.hx)

Automates buffer segmentation when rendering 2D geometry with multiple unique textures.

Primary use-case is to allow usage of multiple textures without the need to manually manage them.
Causes extra draw call each time a texture is swapped.
Due to that, for production it is recommended to combine assets in atlases for optimal performance.

Depending on geometry type, vertex count should be in groups of 4 vertices per quad or 3 indices per triangle.

## Constructor

### new

```haxe
function new():Void
```

Create a new BatchDrawState instance.

## Variables

### currentTexture

```haxe
var currentTexture(get, null):h3d.mat.Texture
```

Current active texture of the BatchDrawState.
Represents the most recent texture that was set with `setTile` or `setTexture`.
Always null after state initialization or after `clear` call.

### totalCount

```haxe
var totalCount(default, null):Int
```

A total amount of vertices added to the BatchDrawState.

## Methods

### setTile

```haxe
inline function setTile(tile:h2d.Tile):Void
```

Switches currently active texture to one in the given `tile` if it differs and splits the render state.
- **param** `tile` A Tile containing a texture that should be used for the next set of vertices. Does nothing if `null`.

### setTexture

```haxe
function setTexture(texture:h3d.mat.Texture):Void
```

Switches currently active texture to the given `texture` if it differs and splits the render state.
- **param** `texture` The texture that should be used for the next set of vertices. Does nothing if `null`.

### add

```haxe
inline function add(count:Int):Void
```

Add vertices to the state using currently active texture.
Should be called when rendering buffers add more data in order to properly render the geometry.
- **param** `count` The amount of vertices to add.

### clear

```haxe
function clear():Void
```

Resets the BatchDrawState by removing all texture references and zeroing vertex counter.

### drawQuads

```haxe
function drawQuads(ctx:h2d.RenderContext, buffer:h3d.Buffer, ?offset:Int = 0, ?length:Int = -1):Void
```

Renders given buffer as a set of quads. Buffer data should be in groups of 4 vertices per quad.
- **param** `ctx` The render context which performs the rendering. Rendering object should call `h2d.RenderContext.beginDrawBatchState` before calling `drawQuads`.
- **param** `buffer` The quad buffer used to render the state.
- **param** `offset` An optional starting offset of the buffer to render in triangles (2 per quad).
- **param** `length` An optional maximum limit of triangles to render.

When `offset` and `length` are not provided or are default values, slightly faster rendering routine is used.

### drawIndexed

```haxe
function drawIndexed(ctx:h2d.RenderContext, buffer:h3d.Buffer, indices:h3d.Indexes, ?offset:Int = 0, ?length:Int = -1):Void
```

Renders given indices as a set of triangles. Index data should be in groups of 3 vertices per quad.
- **param** `ctx` The render context which performs the rendering. Rendering object should call `h2d.RenderContext.beginDrawBatchState` before calling `drawQuads`.
- **param** `buffer` The vertex buffer used to render the state.
- **param** `indices` Vertex indices used to render the state.
- **param** `offset` An optional starting offset of the buffer to render in triangles.
- **param** `length` An optional maximum limit of triangles to render.

When `offset` and `length` are not provided or are default values, slightly faster rendering routine is used.
