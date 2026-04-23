# PositionValue

The status of the position.

## Example Usage

```ruby
require "stackone_client"

value = PositionValue::OPEN

# Open enum: use .deserialize() to create instances from custom string values
custom = PositionValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `OPEN`           | open             |
| `DRAFT`          | draft            |
| `CLOSED`         | closed           |
| `PAUSED`         | paused           |
| `UNMAPPED_VALUE` | unmapped_value   |