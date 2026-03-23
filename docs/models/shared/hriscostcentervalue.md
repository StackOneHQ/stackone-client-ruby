# HRISCostCenterValue

## Example Usage

```ruby
require "stackone_client"

value = HRISCostCenterValue::WORKSPACE

# Open enum: use .deserialize() to create instances from custom string values
custom = HRISCostCenterValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `WORKSPACE`      | workspace        |
| `TEAM`           | team             |
| `DEPARTMENT`     | department       |
| `GROUP`          | group            |
| `ORGANIZATION`   | organization     |
| `UNMAPPED_VALUE` | unmapped_value   |
| `COST_CENTER`    | cost_center      |