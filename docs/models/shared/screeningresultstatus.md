# ScreeningResultStatus

Result status

## Example Usage

```ruby
require "stackone_client"

value = ScreeningResultStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = ScreeningResultStatus.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `PENDING`        | pending          |
| `IN_PROGRESS`    | in_progress      |
| `COMPLETED`      | completed        |
| `FAILED`         | failed           |
| `CANCELLED`      | cancelled        |
| `UNMAPPED_VALUE` | unmapped_value   |