# h3d.impl.Texture

**typedef** · package [`h3d.impl`](README.md) · module `h3d.impl.Driver` · source [`h3d/impl/Driver.hx`](../../../../../h3d/impl/Driver.hx)

The native texture of the current driver.

## On js


### width

```haxe
var width:Int
```

### t

```haxe
var t:js.html.webgl.Texture
```

### pixelFmt

```haxe
var pixelFmt:Int
```

### internalFmt

```haxe
var internalFmt:Int
```

### height

```haxe
var height:Int
```

### bits

```haxe
var bits:Int
```

### bind

```haxe
var bind:Int
```

## On hl/sdl


### width

```haxe
var width:Int
```

### t

```haxe
var t:sdl.Texture
```

### pixelFmt

```haxe
var pixelFmt:Int
```

### internalFmt

```haxe
var internalFmt:Int
```

### height

```haxe
var height:Int
```

### bits

```haxe
var bits:Int
```

### bind

```haxe
var bind:Int
```

## On hl/directx


### views

```haxe
var ?views:Null<Array<dx.ShaderResourceView>>
```

### view

```haxe
var view:dx.ShaderResourceView
```

### rt

```haxe
var rt:Array<dx.RenderTargetView>
```

### res

```haxe
var res:dx.Resource
```

### readOnlyDepthView

```haxe
var ?readOnlyDepthView:Null<dx.DepthStencilView>
```

### depthView

```haxe
var ?depthView:Null<dx.DepthStencilView>
```
