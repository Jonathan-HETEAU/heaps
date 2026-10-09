# hxd.net.Socket

**class** · package [`hxd.net`](README.md) · source [`hxd/net/Socket.hx`](../../../../../hxd/net/Socket.hx)

## Constructor

### new

```haxe
function new():Void
```

## Static variables

### ALLOW_BIND

```haxe
static inline var ALLOW_BIND:Bool = false
```

## Variables

### out

```haxe
var out(default, null):hxd.net._Socket.SocketOutput
```

### input

```haxe
var input(default, null):hxd.net._Socket.SocketInput
```

### timeout

```haxe
var timeout(default, set):Null<Float>
```

## Methods

### set_timeout

```haxe
function set_timeout(t:Null<Float>):Null<Float>
```

### connect

```haxe
function connect(host:String, port:Int, onConnect:() -> Void):Void
```

### bind

```haxe
function bind(host:String, port:Int, onConnect:() -> Void, ?listenCount:Int = 5):Void
```

### close

```haxe
function close():Void
```

### onError

```haxe
dynamic function onError(msg:String):Void
```

### onData

```haxe
dynamic function onData():Void
```
