# AccountingAccountValue

Type of account

## Example Usage

```ruby
require "stackone_client"

value = AccountingAccountValue::ASSET

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountingAccountValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `ASSET`          | asset            |
| `LIABILITY`      | liability        |
| `EQUITY`         | equity           |
| `REVENUE`        | revenue          |
| `EXPENSE`        | expense          |
| `UNMAPPED_VALUE` | unmapped_value   |