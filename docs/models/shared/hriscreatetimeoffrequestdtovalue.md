# HrisCreateTimeOffRequestDtoValue

## Example Usage

```ruby
require "stackone_client"

value = HrisCreateTimeOffRequestDtoValue::APPROVED

# Open enum: use .deserialize() to create instances from custom string values
custom = HrisCreateTimeOffRequestDtoValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `APPROVED`       | approved         |
| `CANCELLED`      | cancelled        |
| `REJECTED`       | rejected         |
| `PENDING`        | pending          |
| `DELETED`        | deleted          |
| `DRAFT`          | draft            |
| `UNMAPPED_VALUE` | unmapped_value   |