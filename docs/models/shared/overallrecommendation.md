# OverallRecommendation

The overall recommendation

## Example Usage

```ruby
require "stackone_client"

value = OverallRecommendation::STRONG_YES

# Open enum: use .deserialize() to create instances from custom string values
custom = OverallRecommendation.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `STRONG_YES`     | strong_yes       |
| `YES`            | yes              |
| `NO`             | no               |
| `STRONG_NO`      | strong_no        |
| `NO_DECISION`    | no_decision      |
| `UNMAPPED_VALUE` | unmapped_value   |