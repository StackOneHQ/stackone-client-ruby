# ScheduledInterviewValue

The status of the interview.

## Example Usage

```ruby
require "stackone_client"

value = ScheduledInterviewValue::UNSCHEDULED

# Open enum: use .deserialize() to create instances from custom string values
custom = ScheduledInterviewValue.deserialize("custom_value")
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