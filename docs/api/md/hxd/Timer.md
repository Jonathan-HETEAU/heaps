# hxd.Timer

**class** · package [`hxd`](README.md) · source [`hxd/Timer.hx`](../../../../hxd/Timer.hx)

The Timer class acts as a global time measurement that can be accessed from various parts of the engine.
These three values are representation of the same underlying calculus: tmod, dt, fps

## Static variables

### wantedFPS

```haxe
static var wantedFPS:Float
```

The FPS on which "tmod" have values are based on.
Can be freely configured if your gameplay runs at a different speed.
Default : 60

### maxDeltaTime

```haxe
static var maxDeltaTime:Float
```

The maximum amount of time between two frames (in seconds).
If the time exceed this amount, Timer will consider these lags are to be ignored.
Default : 0.5

### smoothFactor

```haxe
static var smoothFactor:Float
```

The smoothing done between frames. A smoothing of 0 gives "real time" values, higher values will smooth
the results for tmod/dt/fps over frames using the formula   dt = lerp(elapsedTime, dt, smoothFactor)
Default : 0 on HashLink, 0.95 on other platforms

### lastTimeStamp

```haxe
static var lastTimeStamp(default, null):Float
```

The last timestamp in which update() function was called.

### elapsedTime

```haxe
static var elapsedTime(default, null):Float
```

The amount of time (unsmoothed) that was spent since the last frame.

### frameCount

```haxe
static var frameCount:Int
```

A frame counter, increases on each call to update()

### dt

```haxe
static var dt:Float
```

The smoothed elapsed time (in seconds).

### tmod

```haxe
static var tmod(get, set):Float
```

The smoothed frame modifier, based on wantedFPS. Its value is the same as dt/wantedFPS
Allows to express movements in terms of pixels-per-frame-at-wantedFPS instead of per second.

## Static methods

### update

```haxe
static function update():Void
```

Update the timer calculus on each frame. This is automatically called by hxd.App

### fps

```haxe
static function fps():Float
```

The current smoothed FPS.

### skip

```haxe
static function skip():Void
```

After some loading / long processing, call skip() in order to prevent
it from impacting your smoothed values.

### reset

```haxe
static function reset():Void
```

Similar as skip() but also reset dt to default value.
Can be used when starting a new game if you want to discard any previous measurement.
