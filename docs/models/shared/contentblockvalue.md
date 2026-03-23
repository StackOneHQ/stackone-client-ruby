# ContentBlockValue

The Status of the content blocks.

## Example Usage

```ruby
require "stackone_client"

value = ContentBlockValue::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = ContentBlockValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `DRAFT`          | draft            |
| `LIVE`           | live             |
| `ARCHIVED`       | archived         |
| `UNMAPPED_VALUE` | unmapped_value   |