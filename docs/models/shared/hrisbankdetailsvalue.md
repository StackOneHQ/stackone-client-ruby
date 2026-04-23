# HRISBankDetailsValue

The type of bank account

## Example Usage

```ruby
require "stackone_client"

value = HRISBankDetailsValue::SAVINGS

# Open enum: use .deserialize() to create instances from custom string values
custom = HRISBankDetailsValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `SAVINGS`        | savings          |
| `CHECKING`       | checking         |
| `CURRENT`        | current          |
| `BUSINESS`       | business         |
| `PERSONAL`       | personal         |
| `OTHER`          | other            |
| `UNMAPPED_VALUE` | unmapped_value   |