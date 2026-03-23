# SkillsValue

The unified skill level. For write operations: provide one of the listed enum values, or omit/set to "unmapped_value" to use source_value instead.

## Example Usage

```ruby
require "stackone_client"

value = SkillsValue::PRIMARY

# Open enum: use .deserialize() to create instances from custom string values
custom = SkillsValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `PRIMARY`        | primary          |
| `SECONDARY`      | secondary        |
| `TERTIARY`       | tertiary         |
| `UNMAPPED_VALUE` | unmapped_value   |