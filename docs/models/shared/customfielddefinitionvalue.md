# CustomFieldDefinitionValue

## Example Usage

```ruby
require "stackone_client"

value = CustomFieldDefinitionValue::DATE

# Open enum: use .deserialize() to create instances from custom string values
custom = CustomFieldDefinitionValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `DATE`           | date             |
| `FLOAT`          | float            |
| `INTEGER`        | integer          |
| `LIST`           | list             |
| `CHECKBOX`       | checkbox         |
| `TEXT`           | text             |
| `BOOLEAN`        | boolean          |
| `SINGLE_SELECT`  | single_select    |
| `MULTI_SELECT`   | multi_select     |
| `URL`            | url              |
| `OTHER`          | other            |
| `UNMAPPED_VALUE` | unmapped_value   |