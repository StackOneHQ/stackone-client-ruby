# TimeOffBalancesSchemasValue

The unified value for the duration unit. If the provider does not specify this unit, the value will be set to unknown

## Example Usage

```ruby
require "stackone_client"

value = TimeOffBalancesSchemasValue::MINUTES

# Open enum: use .deserialize() to create instances from custom string values
custom = TimeOffBalancesSchemasValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `MINUTES`        | minutes          |
| `HOURS`          | hours            |
| `DAYS`           | days             |
| `WEEKS`          | weeks            |
| `MONTHS`         | months           |
| `YEARS`          | years            |
| `UNKNOWN`        | unknown          |
| `UNMAPPED_VALUE` | unmapped_value   |