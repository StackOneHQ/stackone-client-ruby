# AnswerValue

The type of the answer.

## Example Usage

```ruby
require "stackone_client"

value = AnswerValue::SHORT_TEXT

# Open enum: use .deserialize() to create instances from custom string values
custom = AnswerValue.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `SHORT_TEXT`      | short_text        |
| `LONG_TEXT`       | long_text         |
| `ATTACHMENT`      | attachment        |
| `MULTI_SELECT`    | multi_select      |
| `SINGLE_SELECT`   | single_select     |
| `BOOLEAN`         | boolean           |
| `NUMBER`          | number            |
| `DATE`            | date              |
| `VIDEO`           | video             |
| `REFERENCE_CHECK` | reference_check   |
| `URL`             | url               |
| `UNMAPPED_VALUE`  | unmapped_value    |