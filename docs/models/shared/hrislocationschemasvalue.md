# HRISLocationSchemasValue

The type of the location.

## Example Usage

```ruby
require "stackone_client"

value = HRISLocationSchemasValue::HOME

# Open enum: use .deserialize() to create instances from custom string values
custom = HRISLocationSchemasValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `HOME`           | home             |
| `WORK`           | work             |
| `UNMAPPED_VALUE` | unmapped_value   |