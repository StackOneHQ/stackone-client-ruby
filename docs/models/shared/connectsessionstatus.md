# ConnectSessionStatus

## Example Usage

```ruby
require "stackone_client"

value = ConnectSessionStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = ConnectSessionStatus.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `PENDING`       | pending         |
| `AUTHENTICATED` | authenticated   |
| `ERROR`         | error           |
| `CANCELLED`     | cancelled       |