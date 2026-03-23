# JournalLineValue

Type of account

## Example Usage

```ruby
require "stackone_client"

value = JournalLineValue::ASSET

# Open enum: use .deserialize() to create instances from custom string values
custom = JournalLineValue.deserialize("custom_value")
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