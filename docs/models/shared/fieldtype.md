# FieldType

The type of the field

## Example Usage

```ruby
require "stackone_client"

value = FieldType::SHORT_TEXT

# Open enum: use .deserialize() to create instances from custom string values
custom = FieldType.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `SHORT_TEXT`     | short_text       |
| `LONG_TEXT`      | long_text        |
| `MULTI_SELECT`   | multi_select     |
| `SINGLE_SELECT`  | single_select    |
| `BOOLEAN`        | boolean          |
| `NUMBER`         | number           |
| `DATE`           | date             |
| `PHONE`          | phone            |
| `EMAIL`          | email            |
| `SCORE`          | score            |
| `LOCATION`       | location         |
| `UNMAPPED_VALUE` | unmapped_value   |