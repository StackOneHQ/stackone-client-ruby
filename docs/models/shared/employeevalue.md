# EmployeeValue

## Example Usage

```ruby
require "stackone_client"

value = EmployeeValue::FULL_TIME

# Open enum: use .deserialize() to create instances from custom string values
custom = EmployeeValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `FULL_TIME`      | full_time        |
| `SHIFTS`         | shifts           |
| `PART_TIME`      | part_time        |
| `UNMAPPED_VALUE` | unmapped_value   |