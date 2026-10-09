# h3d.mat.BaseMaterial

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/BaseMaterial.hx`](../../../../../h3d/mat/BaseMaterial.hx)

Extends: [`hxd.impl.AnyProps`](../../hxd/impl/AnyProps.md)

Subclasses: [`h3d.mat.Material`](Material.md)

Base class of the materials: a linked list of render passes (`Pass`), each with its own render states and shaders.

The main pass is drawn in the pass named by its `Pass.name` (for instance `"default"` or `"alpha"`), other passes
(such as `"shadow"` or `"depth"`) are drawn when the renderer renders that pass name.

## Variables

### name

```haxe
var name:String
```

The material name, usually the one from the model file.

### mainPass

```haxe
var mainPass(get, null):Pass
```

The first pass of the material.

## Methods

### addPass

```haxe
function addPass(p:addPass.T):addPass.T
```

Adds a pass at the end of the pass list and returns it.

### removePass

```haxe
function removePass(p:Pass):Bool
```

Removes a pass from the pass list. Returns `false` if it was not found.

### getPasses

```haxe
function getPasses():Array<Pass>
```

Returns the list of the passes of the material.

### getPass

```haxe
function getPass(name:String):Pass
```

Returns the pass named `name`, or `null`.

### allocPass

```haxe
function allocPass(name:String, ?inheritMain:Bool = true):Pass
```

Returns the pass named `name`, creating it if needed.
- **param** `inheritMain` If `true`, a created pass shares the shaders of the main pass.

### clone

```haxe
function clone(?m:BaseMaterial):BaseMaterial
```

Returns a copy of the material (the main pass render states, the name and the properties).

## Inherited members

- from [`hxd.impl.AnyProps`](../../hxd/impl/AnyProps.md): `props`, `setDefaultProps`, `getDefaultProps`, `loadProps`, `refreshProps`
