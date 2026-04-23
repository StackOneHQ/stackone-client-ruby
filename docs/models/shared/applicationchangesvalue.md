# ApplicationChangesValue

The type of change that occurred to the application

## Example Usage

```ruby
require "stackone_client"

value = ApplicationChangesValue::APPLICATION_STATUS

# Open enum: use .deserialize() to create instances from custom string values
custom = ApplicationChangesValue.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `APPLICATION_STATUS` | application_status   |
| `INTERVIEW_STAGE`    | interview_stage      |
| `REJECTED_REASONS`   | rejected_reasons     |
| `UNMAPPED_VALUE`     | unmapped_value       |