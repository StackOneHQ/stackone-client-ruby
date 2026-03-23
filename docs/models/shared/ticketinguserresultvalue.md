# TicketingUserResultValue

The type of the user.

## Example Usage

```ruby
require "stackone_client"

value = TicketingUserResultValue::AGENT

# Open enum: use .deserialize() to create instances from custom string values
custom = TicketingUserResultValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `AGENT`          | agent            |
| `CONTACT`        | contact          |
| `BOT`            | bot              |
| `UNMAPPED_VALUE` | unmapped_value   |