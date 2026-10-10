# h3d.impl.Texture

**typedef** · package [`h3d.impl`](README.md) · module `h3d.impl.Driver` · source [`h3d/impl/Driver.hx`](../../../../../h3d/impl/Driver.hx)

The native texture of the current driver.

## On js


### width

```haxe
var width:Int
```

The width, in pixels.

### t

```haxe
var t:js.html.webgl.Texture
```

The native texture.

### pixelFmt

```haxe
var pixelFmt:Int
```

The GL pixel type.

### internalFmt

```haxe
var internalFmt:Int
```

The GL internal format.

### height

```haxe
var height:Int
```

The height, in pixels.

### bits

```haxe
var bits:Int
```

The sampling parameters (filter, wrap, mip map) last applied, to skip unchanged ones (`-1` if none).

### bind

```haxe
var bind:Int
```

The GL binding target (2D, cube, array or 3D texture).

## On hl/sdl


### width

```haxe
var width:Int
```

The width, in pixels.

### t

```haxe
var t:sdl.Texture
```

The native texture.

### pixelFmt

```haxe
var pixelFmt:Int
```

The GL pixel type.

### internalFmt

```haxe
var internalFmt:Int
```

The GL internal format.

### height

```haxe
var height:Int
```

The height, in pixels.

### bits

```haxe
var bits:Int
```

The sampling parameters (filter, wrap, mip map) last applied, to skip unchanged ones (`-1` if none).

### bind

```haxe
var bind:Int
```

The GL binding target (2D, cube, array or 3D texture).

## On hl/directx


### views

```haxe
var ?views:Null<Array<dx.ShaderResourceView>>
```

The shader resource views starting at each mip level.

### view

```haxe
var view:dx.ShaderResourceView
```

The shader resource view.

### rt

```haxe
var rt:Array<dx.RenderTargetView>
```

The render target views, by layer and mip level.

### res

```haxe
var res:dx.Resource
```

The native resource.

### readOnlyDepthView

```haxe
var ?readOnlyDepthView:Null<dx.DepthStencilView>
```

The read only depth stencil view, for depth textures.

### depthView

```haxe
var ?depthView:Null<dx.DepthStencilView>
```

The depth stencil view, for depth textures.
