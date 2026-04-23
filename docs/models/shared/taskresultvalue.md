# TaskResultValue

The unified value for the status of the task. If the provider does not specify this status, the value will be set to UnmappedValue

## Example Usage

```ruby
require "stackone_client"

value = TaskResultValue::OPEN

# Open enum: use .deserialize() to create instances from custom string values
custom = TaskResultValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `OPEN`           | open             |
| `IN_PROGRESS`    | in_progress      |
| `BLOCKED`        | blocked          |
| `COMPLETED`      | completed        |
| `CANCELLED`      | cancelled        |
| `UNMAPPED_VALUE` | unmapped_value   |