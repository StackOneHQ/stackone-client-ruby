# CompletionSchemasValue

The StackOne unified result status.

## Example Usage

```ruby
require "stackone_client"

value = CompletionSchemasValue::PASS

# Open enum: use .deserialize() to create instances from custom string values
custom = CompletionSchemasValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `PASS`           | Pass             |
| `FAIL`           | Fail             |
| `UNMAPPED_VALUE` | unmapped_value   |