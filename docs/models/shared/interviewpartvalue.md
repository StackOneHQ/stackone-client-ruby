# InterviewPartValue

The type of the interview.

## Example Usage

```ruby
require "stackone_client"

value = InterviewPartValue::SCREENING

# Open enum: use .deserialize() to create instances from custom string values
custom = InterviewPartValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `SCREENING`      | screening        |
| `LUNCH`          | lunch            |
| `ON_SITE`        | on_site          |
| `PRESENTATION`   | presentation     |
| `SELL`           | sell             |
| `CULTURE`        | culture          |
| `INFORMAL`       | informal         |
| `TEST`           | test             |
| `PHONE`          | phone            |
| `VIDEO`          | video            |
| `UNMAPPED_VALUE` | unmapped_value   |