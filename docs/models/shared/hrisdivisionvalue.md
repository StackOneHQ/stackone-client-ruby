# HRISDivisionValue

## Example Usage

```ruby
require "stackone_client"

value = HRISDivisionValue::DEPARTMENT

# Open enum: use .deserialize() to create instances from custom string values
custom = HRISDivisionValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `DEPARTMENT`     | department       |
| `COMPANY`        | company          |
| `DIVISION`       | division         |
| `GROUP`          | group            |
| `PROJECT`        | project          |
| `COST_CENTER`    | cost_center      |
| `TEAM`           | team             |
| `UNMAPPED_VALUE` | unmapped_value   |