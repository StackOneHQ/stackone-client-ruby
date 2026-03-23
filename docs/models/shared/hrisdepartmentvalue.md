# HRISDepartmentValue

## Example Usage

```ruby
require "stackone_client"

value = HRISDepartmentValue::DEPARTMENT

# Open enum: use .deserialize() to create instances from custom string values
custom = HRISDepartmentValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `DEPARTMENT`     | department       |
| `COMPANY`        | company          |
| `DIVISION`       | division         |
| `GROUP`          | group            |
| `PROJECT`        | project          |
| `TEAM`           | team             |
| `UNMAPPED_VALUE` | unmapped_value   |