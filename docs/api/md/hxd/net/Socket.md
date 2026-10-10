# hxd.net.Socket

**class** · package [`hxd.net`](README.md) · source [`hxd/net/Socket.hx`](../../../../../hxd/net/Socket.hx)

An asynchronous TCP socket, on HashLink (with libuv) and Node.js.

## Constructor

### new

```haxe
function new():Void
```

Creates a socket.

## Static variables

### ALLOW_BIND

```haxe
static inline var ALLOW_BIND:Bool = false
```

Tells if `bind` is supported on this platform.

## Variables

### out

```haxe
var out(default, null):hxd.net._Socket.SocketOutput
```

The output to send data.

### input

```haxe
var input(default, null):hxd.net._Socket.SocketInput
```

The input to read the received data, in `onData`.

### timeout

```haxe
var timeout(default, set):Null<Float>
```

A timeout in seconds (currently not applied).

## Methods

### set_timeout

```haxe
function set_timeout(t:Null<Float>):Null<Float>
```

### connect

```haxe
function connect(host:String, port:Int, onConnect:() -> Void):Void
```

Connects to the server and calls `onConnect` when connected.

### bind

```haxe
function bind(host:String, port:Int, onConnect:() -> Void, ?listenCount:Int = 5):Void
```

Listens for connections on the address, and calls `onConnect` with the socket of each connected client.

### close

```haxe
function close():Void
```

Closes the socket.

### onError

```haxe
dynamic function onError(msg:String):Void
```

Called on a socket error. Throws by default.

### onData

```haxe
dynamic function onData():Void
```

Called when data is received, to read from `input`.
