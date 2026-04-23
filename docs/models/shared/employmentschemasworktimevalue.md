# EmploymentSchemasWorkTimeValue

The unified value for the period.

## Example Usage

```ruby
require "stackone_client"

value = EmploymentSchemasWorkTimeValue::DAY

# Open enum: use .deserialize() to create instances from custom string values
custom = EmploymentSchemasWorkTimeValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `DAY`            | day              |
| `WEEK`           | week             |
| `MONTH`          | month            |
| `YEAR`           | year             |
| `UNMAPPED_VALUE` | unmapped_value   |