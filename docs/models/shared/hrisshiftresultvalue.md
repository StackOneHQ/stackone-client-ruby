# HrisShiftResultValue

The approval status of the shift

## Example Usage

```ruby
require "stackone_client"

value = HrisShiftResultValue::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = HrisShiftResultValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `PENDING`        | pending          |
| `APPROVED`       | approved         |
| `REJECTED`       | rejected         |
| `UNMAPPED_VALUE` | unmapped_value   |