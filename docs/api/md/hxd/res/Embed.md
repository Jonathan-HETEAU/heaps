# hxd.res.Embed

**class** · package [`hxd.res`](README.md) · source [`hxd/res/Embed.hx`](../../../../../hxd/res/Embed.hx)

Macros to embed files and fonts in the compiled application.

## Static methods

### getFileContent

```haxe
static function getFileContent(file:Dynamic):Dynamic
```

Returns the content of the text file, read at compile time.

### getResource

```haxe
static function getResource(file:Dynamic):Dynamic
```

Returns a resource (as `hxd.res.Any`) for the file, embedded at compile time.

### embedFont

```haxe
static function embedFont(file:Dynamic, ?chars:Dynamic, ?skipErrors:Dynamic):Dynamic
```

Embeds the TTF font file (searched in the class path, then in the Windows fonts directory) and returns the font name to use with `hxd.res.FontBuilder` (JS only).
