# AssignmentSchemasStatusValue

The StackOne unified assignment status.

## Example Usage

```ruby
require "stackone_client"

value = AssignmentSchemasStatusValue::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = AssignmentSchemasStatusValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `PENDING`        | pending          |
| `IN_PROGRESS`    | in_progress      |
| `COMPLETED`      | completed        |
| `UNMAPPED_VALUE` | unmapped_value   |