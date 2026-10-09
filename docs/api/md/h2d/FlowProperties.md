# h2d.FlowProperties

**class** · package [`h2d`](README.md) · module `h2d.Flow` · source [`h2d/Flow.hx`](../../../../h2d/Flow.hx)

An individual `Flow` element properties.

Can be obtained after adding the element to the Flow and calling `Flow.getProperties`.
Contains configuration unique of each Flow element.

## Variables

### paddingLeft

```haxe
var paddingLeft:Int
```

An extra padding to the left of the flow element.

### paddingTop

```haxe
var paddingTop:Int
```

An extra padding to the top of the flow element.

### paddingRight

```haxe
var paddingRight:Int
```

An extra padding to the right of the flow element.

### paddingBottom

```haxe
var paddingBottom:Int
```

An extra padding to the bottom of the flow element.

### isAbsolute

```haxe
var isAbsolute(default, set):Bool
```

When enabled, element won't be automatically positioned during `Flow.reflow` and
instead treated as an absolute element relative to the Flow.

### horizontalAlign

```haxe
var horizontalAlign:Null<FlowAlign>
```

The `Flow.horizontalAlign` override.

If `FlowProperties.isAbsolute` is enabled - aligns the element within the Flow boundaries.
Otherwise affects the element alignment within the Flow. Does not affect the alignment if `Flow.layout` is `Horizontal`.

### verticalAlign

```haxe
var verticalAlign:Null<FlowAlign>
```

The `Flow.verticalAlign` override.

If `FlowProperties.isAbsolute` is enabled - aligns the element within the Flow boundaries.
Otherwise affects the element alignment within the Flow. Does not affect the alignment if `Flow.layout` is `Vertical`.

### offsetX

```haxe
var offsetX:Int
```

A visual offset of the element along the X axis.

Offset does not affect the occupied space by the element, and can lead to overlapping with other elements.

### offsetY

```haxe
var offsetY:Int
```

A visual offset of the element along the Y axis.

Offset does not affect the occupied space by the element, and can lead to overlapping with other elements.

### minWidth

```haxe
var minWidth:Null<Int>
```

The minimum occupied width of the element within the flow.

### minHeight

```haxe
var minHeight:Null<Int>
```

The minimum occupied height of the element within the flow.

### calculatedWidth

```haxe
var calculatedWidth(default, null):Int
```

The calculated element width since last element reflow.

### calculatedHeight

```haxe
var calculatedHeight(default, null):Int
```

The calculated element height since last element reflow.

### isBreak

```haxe
var isBreak(default, null):Bool
```

Whether this element is the last on its current row/column, and the next flow element being on the next row/column after overflow.

### lineBreak

```haxe
var lineBreak:Bool
```

Forces this element to break the line and flow onto the next row/column.
`Flow.multiline` is not required to be enabled.

### autoSize

```haxe
var autoSize(null, set):Null<Float>
```

When set, element will use the maximum size of non-autoSize elements as size constraint instead of current constraint on the parent flow.

### autoSizeWidth

```haxe
var autoSizeWidth:Null<Float>
```

### autoSizeHeight

```haxe
var autoSizeHeight:Null<Float>
```

## Methods

### align

```haxe
inline function align(vertical:Null<FlowAlign>, horizontal:Null<FlowAlign>):Void
```

Shortcut to set both `FlowProperties.verticalAlign` and `FlowProperties.horizontalAlign`.
