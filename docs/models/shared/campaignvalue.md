# CampaignValue

The schedule type of the campaign.

## Example Usage

```ruby
require "stackone_client"

value = CampaignValue::IMMEDIATE

# Open enum: use .deserialize() to create instances from custom string values
custom = CampaignValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `IMMEDIATE`      | immediate        |
| `SCHEDULED`      | scheduled        |
| `RECURRING`      | recurring        |
| `CUSTOM`         | custom           |
| `TRIGGERED`      | triggered        |
| `UNMAPPED_VALUE` | unmapped_value   |