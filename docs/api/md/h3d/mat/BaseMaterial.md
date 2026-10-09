# h3d.mat.BaseMaterial

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/BaseMaterial.hx`](../../../../../h3d/mat/BaseMaterial.hx)

Extends: [`hxd.impl.AnyProps`](../../hxd/impl/AnyProps.md)

Subclasses: [`h3d.mat.Material`](Material.md)

## Variables

### name

```haxe
var name:String
```

### mainPass

```haxe
var mainPass(get, null):Pass
```

## Methods

### addPass

```haxe
function addPass(p:addPass.T):addPass.T
```

### removePass

```haxe
function removePass(p:Pass):Bool
```

### getPasses

```haxe
function getPasses():Array<Pass>
```

### getPass

```haxe
function getPass(name:String):Pass
```

### allocPass

```haxe
function allocPass(name:String, ?inheritMain:Bool = true):Pass
```

### clone

```haxe
function clone(?m:BaseMaterial):BaseMaterial
```

## Inherited members

- from [`hxd.impl.AnyProps`](../../hxd/impl/AnyProps.md): `props`, `setDefaultProps`, `getDefaultProps`, `loadProps`, `refreshProps`
