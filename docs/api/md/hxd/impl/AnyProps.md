# hxd.impl.AnyProps

**class** · package [`hxd.impl`](README.md) · source [`hxd/impl/AnyProps.hx`](../../../../../hxd/impl/AnyProps.hx)

Subclasses: [`h3d.mat.BaseMaterial`](../../h3d/mat/BaseMaterial.md), [`h3d.scene.Renderer`](../../h3d/scene/Renderer.md)

Base class of the objects configured by a dynamic properties object, such as the renderers and materials.

## Variables

### props

```haxe
var props(default, set):Any
```

The properties. Setting them calls `refreshProps`.

## Methods

### setDefaultProps

```haxe
function setDefaultProps(kind:String):Void
```

Sets the default properties of the given kind.

### getDefaultProps

```haxe
function getDefaultProps(?kind:String):Any
```

Returns the default properties of the given kind. Overridden by the subclasses.

### loadProps

```haxe
function loadProps(v:Dynamic):Any
```

Returns the properties to use from loaded data.

### refreshProps

```haxe
function refreshProps():Void
```

Called when the properties change, to apply them.
