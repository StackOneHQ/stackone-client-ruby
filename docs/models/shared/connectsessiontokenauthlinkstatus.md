# ConnectSessionTokenAuthLinkStatus

## Example Usage

```ruby
require "stackone_client"

value = ConnectSessionTokenAuthLinkStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = ConnectSessionTokenAuthLinkStatus.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `PENDING`       | pending         |
| `AUTHENTICATED` | authenticated   |
| `ERROR`         | error           |
| `CANCELLED`     | cancelled       |