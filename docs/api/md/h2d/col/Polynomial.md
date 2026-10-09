# h2d.col.Polynomial

**class** · package [`h2d.col`](README.md) · source [`h2d/col/Polynomial.hx`](../../../../../h2d/col/Polynomial.hx)

See `Polynomial.regress`.

## Static methods

### regress

```haxe
static function regress(xVals:Array<Float>, yVals:Array<Float>, degree:Int):Array<Float>
```

Calculate the best fit curve of given degree that match the input values. Returns the polynomial exponents. For instance [2,8,-5] will represent 2 + 8 x - 5 x^2
