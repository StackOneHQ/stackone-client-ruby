# QuestionSchemasValue

The type of the question's condition

## Example Usage

```ruby
require "stackone_client"

value = QuestionSchemasValue::EQUALS_TO

# Open enum: use .deserialize() to create instances from custom string values
custom = QuestionSchemasValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `EQUALS_TO`      | equals_to        |
| `CONTAINS`       | contains         |
| `UNMAPPED_VALUE` | unmapped_value   |