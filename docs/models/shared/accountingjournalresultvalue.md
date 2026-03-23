# AccountingJournalResultValue

The journal status

## Example Usage

```ruby
require "stackone_client"

value = AccountingJournalResultValue::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountingJournalResultValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `DRAFT`          | draft            |
| `POSTED`         | posted           |
| `VOID`           | void             |
| `UNMAPPED_VALUE` | unmapped_value   |