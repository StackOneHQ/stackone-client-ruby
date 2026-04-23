# JobPostingSchemasStatusValue

The status of the job postings.

## Example Usage

```ruby
require "stackone_client"

value = JobPostingSchemasStatusValue::LIVE

# Open enum: use .deserialize() to create instances from custom string values
custom = JobPostingSchemasStatusValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `LIVE`           | live             |
| `DRAFT`          | draft            |
| `PENDING`        | pending          |
| `INTERNAL`       | internal         |
| `REJECTED`       | rejected         |
| `CLOSED`         | closed           |
| `ARCHIVED`       | archived         |
| `UNMAPPED_VALUE` | unmapped_value   |