# CompletionValue

The StackOne unified learning object type.

## Example Usage

```ruby
require "stackone_client"

value = CompletionValue::CONTENT

# Open enum: use .deserialize() to create instances from custom string values
custom = CompletionValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `CONTENT`        | content          |
| `COURSE`         | course           |
| `COLLECTION`     | collection       |
| `UNMAPPED_VALUE` | unmapped_value   |