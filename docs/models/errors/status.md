# Status

The account status that blocked the request

## Example Usage

```ruby
require "stackone_client"

value = Status::SUSPENDED

# Open enum: use .deserialize() to create instances from custom string values
custom = Status.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `SUSPENDED` | suspended   |
| `EXPIRED`   | expired     |
| `ARCHIVED`  | archived    |
| `ERROR`     | error       |