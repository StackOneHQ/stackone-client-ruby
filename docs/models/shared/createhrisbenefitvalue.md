# CreateHRISBenefitValue

The type of the benefit

## Example Usage

```ruby
require "stackone_client"

value = CreateHRISBenefitValue::RETIREMENT_SAVINGS

# Open enum: use .deserialize() to create instances from custom string values
custom = CreateHRISBenefitValue.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `RETIREMENT_SAVINGS` | retirement_savings   |
| `HEALTH_SAVINGS`     | health_savings       |
| `OTHER`              | other                |
| `HEALTH_INSURANCE`   | health_insurance     |
| `INSURANCE`          | insurance            |
| `UNMAPPED_VALUE`     | unmapped_value       |