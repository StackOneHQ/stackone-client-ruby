# LinkedAccountStatus

## Example Usage

```ruby
require "stackone_client"

value = LinkedAccountStatus::ACTIVE

# Open enum: use .deserialize() to create instances from custom string values
custom = LinkedAccountStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `ACTIVE`    | active      |
| `INACTIVE`  | inactive    |
| `SUSPENDED` | suspended   |
| `ARCHIVED`  | archived    |
| `EXPIRED`   | expired     |
| `ERROR`     | error       |