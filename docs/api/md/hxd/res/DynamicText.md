# hxd.res.DynamicText

**class** · package [`hxd.res`](README.md) · source [`hxd/res/DynamicText.hx`](../../../../../hxd/res/DynamicText.hx)

Typed texts loaded from an XML file, for localization.
The `build` macro creates a static field for each `<t>` text and `<g>` group of the file. Texts containing `::param::` become functions taking an object with these parameters.

## Static variables

### r_attr

```haxe
static var r_attr:EReg
```

Matches the `::param::` parameters of a text.

## Static methods

### parse

```haxe
static function parse(data:String):Dynamic
```

Parses the XML texts into an object, with a field per id.

### parseMetaData

```haxe
static function parseMetaData(data:String):DynamicTextMeta
```

Parses the metadata (the `skip` attributes) of the XML texts.

### applyRec

```haxe
static function applyRec(path:Array<String>, obj:Dynamic, data:Access, ref:Access, onMissing:(Array<String>, String) -> String):Void
```

Replaces the texts of `obj` by the texts of `data` (a translation), keeping the original texts that are missing or invalid.
If `ref` is set, a translation is only used if the original text is still the same as in `ref`. `onMissing` is called with the path and a message for each problem.
