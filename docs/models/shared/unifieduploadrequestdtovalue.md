# UnifiedUploadRequestDtoValue

Whether the file is confidential or not

## Example Usage

```ruby
require "stackone_client"

value = UnifiedUploadRequestDtoValue::TRUE

# Open enum: use .deserialize() to create instances from custom string values
custom = UnifiedUploadRequestDtoValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `TRUE`           | true             |
| `FALSE`          | false            |
| `UNMAPPED_VALUE` | unmapped_value   |