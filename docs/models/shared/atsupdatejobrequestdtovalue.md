# AtsUpdateJobRequestDtoValue

The status of the job.

## Example Usage

```ruby
require "stackone_client"

value = AtsUpdateJobRequestDtoValue::PUBLISHED

# Open enum: use .deserialize() to create instances from custom string values
custom = AtsUpdateJobRequestDtoValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `PUBLISHED`      | published        |
| `DRAFT`          | draft            |
| `PENDING`        | pending          |
| `INTERNAL`       | internal         |
| `ARCHIVED`       | archived         |
| `CLOSED`         | closed           |
| `OPEN`           | open             |
| `DELETED`        | deleted          |
| `ON_HOLD`        | on_hold          |
| `UNMAPPED_VALUE` | unmapped_value   |