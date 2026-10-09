# h2d.Console

**class** · package [`h2d`](README.md) · source [`h2d/Console.hx`](../../../../h2d/Console.hx)

Extends: [`h2d.Object`](Object.md)

A simple debug console integration.

Console can be focused manually through `Console.show` and `Console.hide` methods
as well as by pressing the key defined by `Console.shortKeyChar`.

It's possible to log messages to console via `Console.log` method.

By default comes with 2 commands: `help` and `cls`, which print help message
describing all commands and clears the console logs respectively.

To add custom commands, use `Console.add` and `Console.addCommand` methods.

## Constructor

### new

```haxe
function new(font:Font, ?parent:Object):Void
```

Create a new Console instance using the provided font and parent.
- **param** `font` The font to use for console text input and log.
- **param** `parent` An optional parent `h2d.Object` instance to which Console adds itself if set.

## Static variables

### HIDE_LOG_TIMEOUT

```haxe
static var HIDE_LOG_TIMEOUT:Float
```

The timeout in seconds before log will automatically hide after the last message.

## Variables

### shortKeyChar

```haxe
var shortKeyChar:Int
```

The text character which should be pressed in order to automatically show console input.

### autoComplete

```haxe
var autoComplete:Bool
```

Provide an auto-complete on Enter/Tab key and command completion hints.

## Methods

### resetCommands

```haxe
function resetCommands():Void
```

* Reset all commands and aliases to default

### addCommand

```haxe
function addCommand(name:String, ?help:String, args:Array<ConsoleArgDesc>, callb:Dynamic):Void
```

Add a new command to console.
- **param** `name` Command name.
- **param** `help` Optional command description text.
- **param** `args` An array of command arguments.
- **param** `callb` The callback method taking the arguments listed in `args`.

### add

```haxe
function add(name:Dynamic, callb:Dynamic):Dynamic
```

Add a new command to console. <span class="label">Macro method</span>

The `callb` method arguments are used to determine console argument type and names. Due to that,
only the following callback argument types are supported: `Int`, `Float`, `String` and `Bool`.
Another limitation is that commands added via macro do not contain description.

For example:
```haxe
function addItem(id:Int, ?amount:Int) {
    var item = findItemById(id)
    if (amount == null) amount = 1;
    player.giveItem(item, amount);
    console.log('Added $amount x ${item.name} to player!');
}
// Macro call automatically takes addItem arguments.
console.add("additem", addItem);
// And is equivalent to using addCommand describing each argument manually:
console.addCommand("additem", null, [{ name: "id", t: AInt }, { name: "amount", t: AInt, opt: true }], addItem);
```

- **param** `name` A String expression of the command name.
- **param** `callb` An expression that points at the callback method.

### addAlias

```haxe
function addAlias(name:String, command:String):Void
```

Add an alias to an existing command.
- **param** `name` Command alias.
- **param** `command` Full command name to alias.

### runCommand

```haxe
function runCommand(commandLine:String):Void
```

Executes `commandLine` the same way the user would execute it.

### isActive

```haxe
function isActive():Bool
```

Checks if the Console is currently shown.

### hide

```haxe
function hide():Void
```

Hides the Console.

### show

```haxe
function show():Void
```

Shows and focuses the Console.

### log

```haxe
function log(text:String, ?color:Int):Void
```

Print to the console log.
- **param** `text` The text to show in the log message.
- **param** `color` Optional custom text color.

## Inherited members

- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
