# AtsUpdateCandidatesAssessmentsResultsRequestDtoValue

The result of the test.

## Example Usage

```ruby
require "stackone_client"

value = AtsUpdateCandidatesAssessmentsResultsRequestDtoValue::INITIATED

# Open enum: use .deserialize() to create instances from custom string values
custom = AtsUpdateCandidatesAssessmentsResultsRequestDtoValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `INITIATED`      | initiated        |
| `IN_PROGRESS`    | in_progress      |
| `CANCELLED`      | cancelled        |
| `COMPLETED`      | completed        |
| `EXPIRED`        | expired          |
| `FAILED`         | failed           |
| `PASSED`         | passed           |
| `UNMAPPED_VALUE` | unmapped_value   |