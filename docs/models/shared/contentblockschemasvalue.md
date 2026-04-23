# ContentBlockSchemasValue

The type of the content blocks.

## Example Usage

```ruby
require "stackone_client"

value = ContentBlockSchemasValue::TEXT

# Open enum: use .deserialize() to create instances from custom string values
custom = ContentBlockSchemasValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `TEXT`           | text             |
| `HTML`           | html             |
| `IMAGE`          | image            |
| `CODE_SNIPPET`   | code-snippet     |
| `UNMAPPED_VALUE` | unmapped_value   |