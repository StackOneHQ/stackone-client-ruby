# PhoneNumberType

Type of phone number

## Example Usage

```ruby
require "stackone_client"

value = PhoneNumberType::PERSONAL

# Open enum: use .deserialize() to create instances from custom string values
custom = PhoneNumberType.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `PERSONAL`       | personal         |
| `WORK`           | work             |
| `MOBILE`         | mobile           |
| `HOME`           | home             |
| `UNKNOWN`        | unknown          |
| `OTHER`          | other            |
| `UNMAPPED_VALUE` | unmapped_value   |