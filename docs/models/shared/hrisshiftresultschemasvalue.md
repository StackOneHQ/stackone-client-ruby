# HrisShiftResultSchemasValue

The status of the shift

## Example Usage

```ruby
require "stackone_client"

value = HrisShiftResultSchemasValue::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = HrisShiftResultSchemasValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `DRAFT`          | draft            |
| `PUBLISHED`      | published        |
| `CONFIRMED`      | confirmed        |
| `CANCELLED`      | cancelled        |
| `UNMAPPED_VALUE` | unmapped_value   |