# EmploymentSchemasPayFrequencyValue

The pay frequency of the job postings.

## Example Usage

```ruby
require "stackone_client"

value = EmploymentSchemasPayFrequencyValue::HOURLY

# Open enum: use .deserialize() to create instances from custom string values
custom = EmploymentSchemasPayFrequencyValue.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `HOURLY`           | hourly             |
| `WEEKLY`           | weekly             |
| `BI_WEEKLY`        | bi_weekly          |
| `FOUR_WEEKLY`      | four_weekly        |
| `SEMI_MONTHLY`     | semi_monthly       |
| `MONTHLY`          | monthly            |
| `BI_MONTHLY`       | bi_monthly         |
| `QUARTERLY`        | quarterly          |
| `SEMI_ANNUALLY`    | semi_annually      |
| `YEARLY`           | yearly             |
| `THIRTEEN_MONTHLY` | thirteen_monthly   |
| `PRO_RATA`         | pro_rata           |
| `UNMAPPED_VALUE`   | unmapped_value     |
| `HALF_YEARLY`      | half_yearly        |
| `DAILY`            | daily              |