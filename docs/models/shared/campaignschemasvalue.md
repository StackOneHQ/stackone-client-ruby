# CampaignSchemasValue

The Status of the campaign.

## Example Usage

```ruby
require "stackone_client"

value = CampaignSchemasValue::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = CampaignSchemasValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `DRAFT`          | draft            |
| `ARCHIVED`       | archived         |
| `LIVE`           | live             |
| `UNMAPPED_VALUE` | unmapped_value   |