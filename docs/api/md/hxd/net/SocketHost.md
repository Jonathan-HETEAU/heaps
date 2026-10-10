# hxd.net.SocketHost

**class** · package [`hxd.net`](README.md) · source [`hxd/net/SocketHost.hx`](../../../../../hxd/net/SocketHost.hx)

Extends: `hxbit.NetworkHost`

A hxbit network host using TCP sockets, as a client (`connect`) or as a server (`wait`). Requires the hxbit library.

## Constructor

### new

```haxe
function new():Void
```

Creates the host.

## Variables

### enableSound

```haxe
var enableSound:Bool
```

Disabled when connecting to a server on the same computer (`127.0.0.1`), so that the sounds are not played twice.

## Methods

### dispose

```haxe
override function dispose():Void
```

### connect

```haxe
function connect(host:String, port:Int, ?onConnect:() -> Void):Void
```

Connects to a server, and calls `onConnect` with `true` when connected, or `false` on failure.

### wait

```haxe
function wait(host:String, port:Int, ?onConnected:() -> Void):Void
```

Starts a server listening on the address, and calls `onConnected` for each client connecting.

### offlineServer

```haxe
function offlineServer():Void
```

Starts as a server without listening, for a single player game.
