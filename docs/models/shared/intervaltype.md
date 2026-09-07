# IntervalType

The time interval to bucket results by

## Example Usage

```ruby
require "stackone_client"

value = IntervalType::MINUTE

# Open enum: use .deserialize() to create instances from custom string values
custom = IntervalType.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `MINUTE` | minute   |
| `HOUR`   | hour     |
| `DAY`    | day      |
| `WEEK`   | week     |
| `MONTH`  | month    |
| `NONE`   | none     |