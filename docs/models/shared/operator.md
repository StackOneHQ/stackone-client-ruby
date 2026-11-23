# Operator

eq matches any of the values and ne none of them; gt, gte, lt and lte compare one number

## Example Usage

```ruby
require "stackone_client"

value = Operator::EQ

# Open enum: use .deserialize() to create instances from custom string values
custom = Operator.deserialize("custom_value")
```


## Values

| Name  | Value |
| ----- | ----- |
| `EQ`  | eq    |
| `NE`  | ne    |
| `GT`  | gt    |
| `GTE` | gte   |
| `LT`  | lt    |
| `LTE` | lte   |