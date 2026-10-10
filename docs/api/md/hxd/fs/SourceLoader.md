# hxd.fs.SourceLoader

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/SourceLoader.hx`](../../../../../hxd/fs/SourceLoader.hx)

Locates the source files of the application at runtime, for live reloading (used for shaders).

## Static methods

### isActive

```haxe
static function isActive():Bool
```

Tells if a source directory was added.

### resolve

```haxe
static function resolve(path:String):FileEntry
```

Returns the entry of the source file in the first directory containing it, or `null`.

### addLivePath _(hl/sdl, hl/directx only)_

```haxe
static function addLivePath(path:String):Void
```

Adds a directory where the sources are searched.

### addLivePathHaxelib _(hl/sdl, hl/directx only)_

```haxe
static function addLivePathHaxelib(libs:Array<String>):Void
```

Adds the class paths of the given haxelib libraries.

### initLivePaths _(hl/sdl, hl/directx only)_

```haxe
static function initLivePaths():Void
```

Adds the current directory and the Heaps library sources (and Hide when used).
