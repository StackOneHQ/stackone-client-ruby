# InterviewValue

The status of the interview.

## Example Usage

```ruby
require "stackone_client"

value = InterviewValue::UNSCHEDULED

# Open enum: use .deserialize() to create instances from custom string values
custom = InterviewValue.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `UNSCHEDULED`      | unscheduled        |
| `SCHEDULED`        | scheduled          |
| `COMPLETED`        | completed          |
| `CANCELLED`        | cancelled          |
| `PENDING_FEEDBACK` | pending_feedback   |
| `UNMAPPED_VALUE`   | unmapped_value     |