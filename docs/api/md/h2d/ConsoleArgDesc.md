# h2d.ConsoleArgDesc

**typedef** · package [`h2d`](README.md) · module `h2d.Console` · source [`h2d/Console.hx`](../../../../h2d/Console.hx)

A descriptor for an argument of a console command.

## Fields

### t

```haxe
var t:ConsoleArg
```

The type of the argument.

### opt

```haxe
var ?opt:Null<Bool>
```

When set, argument is considered optional and command callback will receive `null` if argument was omitted.
Inserting optional arguments between non-optional arguments leads to an undefined behavior.

### name

```haxe
var name:String
```

A human-readable argument name.
