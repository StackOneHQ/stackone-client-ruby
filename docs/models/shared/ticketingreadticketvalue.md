# TicketingReadTicketValue

The priority of the ticket.

## Example Usage

```ruby
require "stackone_client"

value = TicketingReadTicketValue::LOWEST

# Open enum: use .deserialize() to create instances from custom string values
custom = TicketingReadTicketValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `LOWEST`         | lowest           |
| `LOW`            | low              |
| `MEDIUM`         | medium           |
| `HIGH`           | high             |
| `HIGHEST`        | highest          |
| `UNMAPPED_VALUE` | unmapped_value   |