# ListValue

The type of the list.

## Example Usage

```ruby
require "stackone_client"

value = ListValue::CANDIDATES

# Open enum: use .deserialize() to create instances from custom string values
custom = ListValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `CANDIDATES`     | candidates       |
| `CONTACTS`       | contacts         |
| `COMPANIES`      | companies        |
| `UNMAPPED_VALUE` | unmapped_value   |