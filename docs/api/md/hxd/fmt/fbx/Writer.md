# hxd.fmt.fbx.Writer

**class** · package [`hxd.fmt.fbx`](README.md) · source [`hxd/fmt/fbx/Writer.hx`](../../../../../../hxd/fmt/fbx/Writer.hx)

## Constructor

### new

```haxe
function new(out:Output):Void
```

## Static methods

### getPrimitiveInfos

```haxe
static function getPrimitiveInfos(prim:h3d.prim.Primitive, ?format:hxd.BufferFormat, ?lodIdx:Int = 0):{ ?vertexFormat:Null<hxd.BufferFormat>, ?vertexBuffer:Null<Array<Float>>, ?lib:Null<hxd.fmt.hmd.Library>, ?indexesBuffer:Null<Array<Int>> }
```

## Methods

### write

```haxe
function write(objects:Array<h3d.scene.Object>, ?params:Dynamic):Void
```

### export

```haxe
function export(toExport:Array<h3d.scene.Object>, destinationPath:String, callb:() -> Void, ?params:Null<ExportParams>):Void
```
