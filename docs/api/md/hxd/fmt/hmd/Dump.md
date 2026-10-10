# hxd.fmt.hmd.Dump

**class** · package [`hxd.fmt.hmd`](README.md) · source [`hxd/fmt/hmd/Dump.hx`](../../../../../../hxd/fmt/hmd/Dump.hx)

Converts a HMD file into a readable text description, for debugging.

## Constructor

### new

```haxe
function new():Void
```

Creates the dumper.

## Static methods

### toString

```haxe
static function toString(hmd:Data):String
```

Returns the description of the data.

### main _(hl/sdl, hl/directx only)_

```haxe
static function main():Void
```

Command line tool printing the description of a HMD file (or of a FBX file converted to HMD).

## Methods

### dump

```haxe
function dump(h:Data):String
```

Returns the description of the data.
