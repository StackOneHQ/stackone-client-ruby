# AccountingJournalValue

The journal status

## Example Usage

```ruby
require "stackone_client"

value = AccountingJournalValue::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountingJournalValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `DRAFT`          | draft            |
| `POSTED`         | posted           |
| `VOID`           | void             |
| `UNMAPPED_VALUE` | unmapped_value   |