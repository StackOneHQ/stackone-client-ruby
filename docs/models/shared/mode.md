# Mode

Whether that level was enforcing or only observing

## Example Usage

```ruby
require "stackone_client"

value = Mode::ENFORCE

# Open enum: use .deserialize() to create instances from custom string values
custom = Mode.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `ENFORCE` | enforce   |
| `MONITOR` | monitor   |