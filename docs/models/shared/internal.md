# Internal

## Example Usage

```ruby
require "stackone_client"

value = Internal::TRUE

# Open enum: use .deserialize() to create instances from custom string values
custom = Internal.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `TRUE`           | true             |
| `FALSE`          | false            |
| `UNMAPPED_VALUE` | unmapped_value   |