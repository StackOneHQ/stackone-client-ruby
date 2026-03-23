# TaskSchemasValue

The unified value for the type of the task. If the provider does not specify this type, the value will be set to UnmappedValue

## Example Usage

```ruby
require "stackone_client"

value = TaskSchemasValue::ACTION

# Open enum: use .deserialize() to create instances from custom string values
custom = TaskSchemasValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `ACTION`         | action           |
| `REVIEW`         | review           |
| `ACKNOWLEDGMENT` | acknowledgment   |
| `EDIT`           | edit             |
| `APPROVE`        | approve          |
| `UNMAPPED_VALUE` | unmapped_value   |