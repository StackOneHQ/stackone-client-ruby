# DimensionsPostDtoOrderBy

The field to order the results by

## Example Usage

```ruby
require "stackone_client"

value = DimensionsPostDtoOrderBy::START_TIME

# Open enum: use .deserialize() to create instances from custom string values
custom = DimensionsPostDtoOrderBy.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `START_TIME`  | start_time    |
| `END_TIME`    | end_time      |
| `EVENT_TIME`  | event_time    |
| `DURATION_MS` | duration_ms   |