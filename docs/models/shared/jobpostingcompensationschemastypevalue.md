# JobPostingCompensationSchemasTypeValue

The type of the compensation.

## Example Usage

```ruby
require "stackone_client"

value = JobPostingCompensationSchemasTypeValue::SALARY

# Open enum: use .deserialize() to create instances from custom string values
custom = JobPostingCompensationSchemasTypeValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `SALARY`         | salary           |
| `HOURLY`         | hourly           |
| `COMMISSION`     | commission       |
| `BONUS`          | bonus            |
| `EQUITY`         | equity           |
| `OTHER`          | other            |
| `UNMAPPED_VALUE` | unmapped_value   |