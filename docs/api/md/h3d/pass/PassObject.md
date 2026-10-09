# h3d.pass.PassObject

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/PassObject.hx`](../../../../../h3d/pass/PassObject.hx)

A material pass of an object emitted for the current frame (see `h3d.scene.RenderContext.emitPass`).

## Variables

### pass

```haxe
var pass:h3d.mat.Pass
```

The material pass.

### obj

```haxe
var obj:h3d.scene.Object
```

The object drawn.

### index

```haxe
var index:Int
```

A value given by the object, for instance the material index of a `MultiMaterial`.

### shaders

```haxe
var shaders:hxsl.ShaderList
```

The shaders used to draw the object (computed when drawing).

### shader

```haxe
var shader:hxsl.RuntimeShader
```

The compiled shader (computed when drawing).

### depth

```haxe
var depth:Float
```

The depth of the object from the camera, used for sorting.

### texture

```haxe
var texture:Int
```

The identifier of the main texture, used to sort by texture.
