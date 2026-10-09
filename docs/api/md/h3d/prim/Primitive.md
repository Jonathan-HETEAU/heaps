# h3d.prim.Primitive

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/Primitive.hx`](../../../../../h3d/prim/Primitive.hx)

Subclasses: [`h3d.prim.BigPrimitive`](BigPrimitive.md), [`h3d.prim.DynamicPrimitive`](DynamicPrimitive.md), [`h3d.prim.Instanced`](Instanced.md), [`h3d.prim.MeshPrimitive`](MeshPrimitive.md), [`h3d.prim.Plane2D`](Plane2D.md), [`h3d.prim.Quads`](Quads.md), [`h3d.prim.RawPrimitive`](RawPrimitive.md)

h3d.prim.Primitive is the base class for all 3D primitives.
You can't create an instance of it and need to use one of its subclasses.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### buffer

```haxe
var buffer:h3d.Buffer
```

The primitive vertex buffer, holding its vertexes data.

### indexes

```haxe
var indexes:h3d.Indexes
```

The primitive indexes buffer, holding its triangles indices.

### refCount

```haxe
var refCount(default, null):Int
```

Current amount of references to this Primitive.
Use `incref` and `decref` methods to affect this value. If it reaches 0, it will be automatically disposed.

## Methods

### triCount

```haxe
function triCount():Int
```

The number of triangles the primitive has.

### vertexCount

```haxe
function vertexCount():Int
```

The number of vertexes the primitive has.

### getCollider

```haxe
function getCollider():h3d.col.Collider
```

Return a local collider for the primitive

### getBounds

```haxe
function getBounds():h3d.col.Bounds
```

Return the bounds for the primitive

### incref

```haxe
function incref():Void
```

Increase reference count of the Primitive.

### decref

```haxe
function decref():Void
```

Decrease reference count of the Primitive.
If recount reaches zero, Primitive is automatically disposed when last referencing mesh is removed from scene.

### alloc

```haxe
function alloc(engine:h3d.Engine):Void
```

Allocate the primitive on GPU. Used for internal usage.

### selectMaterial

```haxe
function selectMaterial(material:Int, lod:Int):Void
```

Select the specified sub material before drawin. Used for internal usage.

### getMaterialIndexes

```haxe
function getMaterialIndexes(material:Int, ?lod:Int = 0):{ start:Int, count:Int }
```

Returns the number and offset of indexes for the specified material

### getMaterialIndexStart

```haxe
function getMaterialIndexStart(material:Int, ?lod:Int = 0):Int
```

Returns the first index of the given material group and level of detail.

### getMaterialIndexCount

```haxe
function getMaterialIndexCount(material:Int, ?lod:Int = 0):Int
```

Returns the number of indexes of the given material group and level of detail.

### render

```haxe
function render(engine:h3d.Engine):Void
```

Render the primitive. Used for internal usage.

### dispose

```haxe
function dispose():Void
```

Dispose the primitive, freeing the GPU memory it uses.

### toString

```haxe
function toString():Null<String>
```

Return the primitive type.

### lodCount

```haxe
function lodCount():Int
```

Return the LOD count.

### screenRatioToLod

```haxe
function screenRatioToLod(screenRatio:Float):Int
```

Returns the level of detail to use for an object covering `screenRatio` of the screen (see `h3d.scene.Mesh.screenRatio`).

### getCullingScreenRatio

```haxe
function getCullingScreenRatio():Float
```

Returns the screen ratio under which the meshes using this primitive are not drawn at all (`0` to always draw them).
