# EmployeeSchemasValue

## Example Usage

```ruby
require "stackone_client"

value = EmployeeSchemasValue::ACTIVE

# Open enum: use .deserialize() to create instances from custom string values
custom = EmployeeSchemasValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `ACTIVE`         | active           |
| `PENDING`        | pending          |
| `TERMINATED`     | terminated       |
| `LEAVE`          | leave            |
| `INACTIVE`       | inactive         |
| `UNKNOWN`        | unknown          |
| `UNMAPPED_VALUE` | unmapped_value   |