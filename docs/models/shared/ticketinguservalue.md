# TicketingUserValue

The type of the user.

## Example Usage

```ruby
require "stackone_client"

value = TicketingUserValue::AGENT

# Open enum: use .deserialize() to create instances from custom string values
custom = TicketingUserValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `AGENT`          | agent            |
| `CONTACT`        | contact          |
| `BOT`            | bot              |
| `UNMAPPED_VALUE` | unmapped_value   |