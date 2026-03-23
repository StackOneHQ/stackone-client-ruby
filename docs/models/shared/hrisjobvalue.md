# HrisJobValue

The status of the job.

## Example Usage

```ruby
require "stackone_client"

value = HrisJobValue::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = HrisJobValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `DRAFT`          | draft            |
| `PENDING`        | pending          |
| `ARCHIVED`       | archived         |
| `CLOSED`         | closed           |
| `OPEN`           | open             |
| `DELETED`        | deleted          |
| `UNMAPPED_VALUE` | unmapped_value   |