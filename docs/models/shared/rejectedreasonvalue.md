# RejectedReasonValue

The type of the rejected reason.

## Example Usage

```ruby
require "stackone_client"

value = RejectedReasonValue::REJECTED_BY_CANDIDATE

# Open enum: use .deserialize() to create instances from custom string values
custom = RejectedReasonValue.deserialize("custom_value")
```


## Values

| Name                       | Value                      |
| -------------------------- | -------------------------- |
| `REJECTED_BY_CANDIDATE`    | rejected_by_candidate      |
| `REJECTED_BY_ORGANIZATION` | rejected_by_organization   |
| `OTHER`                    | other                      |
| `UNKNOWN`                  | unknown                    |
| `UNMAPPED_VALUE`           | unmapped_value             |