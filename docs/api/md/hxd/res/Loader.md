# hxd.res.Loader

**class** · package [`hxd.res`](README.md) · source [`hxd/res/Loader.hx`](../../../../../hxd/res/Loader.hx)

Loads the resources of a file system and caches them by path.
`hxd.Res.loader` is the default instance.

## Constructor

### new

```haxe
function new(fs:hxd.fs.FileSystem):Void
```

Creates a loader for the file system.

## Static variables

### currentInstance

```haxe
static var currentInstance:Loader
```

Set when initializing hxd.Res, or manually.
Allows code to resolve resources without compiling hxd.Res

## Variables

### fs

```haxe
var fs(default, null):hxd.fs.FileSystem
```

The file system containing the resources.

## Methods

### cleanCache

```haxe
function cleanCache():Void
```

Clears the cache: the next loads create new resource instances.

### dir

```haxe
function dir(path:String):Array<Any>
```

Returns the resources of a directory.

### exists

```haxe
function exists(path:String):Bool
```

Tells if a file exists at the path.

### load

```haxe
function load(path:String):Any
```

Returns the resource at the path, as an `Any` to convert with one of its `toXXX` methods. Throws if the file does not exist.

### loadCache

```haxe
function loadCache(path:String, c:Class<loadCache.T>):loadCache.T
```

Returns the resource at the path as an instance of `c`, created once and cached.

### delete

```haxe
function delete(path:String):Bool
```

Deletes the file and removes its resource from the cache.

### dispose

```haxe
function dispose():Void
```

Clears the cache and disposes the file system.
