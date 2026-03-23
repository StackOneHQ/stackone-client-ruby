# Confidential

Confidential status of the job

## Example Usage

```ruby
require "stackone_client"

value = Confidential::TRUE

# Open enum: use .deserialize() to create instances from custom string values
custom = Confidential.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `TRUE`           | true             |
| `FALSE`          | false            |
| `UNMAPPED_VALUE` | unmapped_value   |