# hxd.net.SocketHost

**class** · package [`hxd.net`](README.md) · source [`hxd/net/SocketHost.hx`](../../../../../hxd/net/SocketHost.hx)

Extends: `hxbit.NetworkHost`

## Constructor

### new

```haxe
function new():Void
```

## Variables

### enableSound

```haxe
var enableSound:Bool
```

## Methods

### dispose

```haxe
override function dispose():Void
```

### connect

```haxe
function connect(host:String, port:Int, ?onConnect:() -> Void):Void
```

### wait

```haxe
function wait(host:String, port:Int, ?onConnected:() -> Void):Void
```

### offlineServer

```haxe
function offlineServer():Void
```
