# ParamStyle

Parameter schema style: "nested" (default) groups by location, "flat_prefixed" flattens with location prefix, "flat_smart" flattens and only prefixes on name collision

## Example Usage

```ruby
require "stackone_client"

value = ParamStyle::NESTED
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `NESTED`        | nested          |
| `FLAT_PREFIXED` | flat_prefixed   |
| `FLAT_SMART`    | flat_smart      |