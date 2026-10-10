# hxd.fs.ConvertCommand

**typedef** · package [`hxd.fs`](README.md) · module `hxd.fs.FileConverter` · source [`hxd/fs/FileConverter.hx`](../../../../../hxd/fs/FileConverter.hx) · available on hl/sdl, hl/directx

The conversions of a rule, with their parameters, and the next command applied to the result.

## Fields

### then

```haxe
var ?then:Null<ConvertCommand>
```

A conversion to run on the result.

### paramsStr

```haxe
var ?paramsStr:Null<String>
```

The parameters formatted as a string, added to the output file name.

### params

```haxe
var ?params:Null<Dynamic>
```

The parameters of the conversion.

### conv

```haxe
var conv:Array<Convert>
```

The converters, the first one supporting the file is used.
