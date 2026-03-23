# AtsCreateOfferRequestDtoValue

The status of the offer.

## Example Usage

```ruby
require "stackone_client"

value = AtsCreateOfferRequestDtoValue::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = AtsCreateOfferRequestDtoValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `PENDING`        | pending          |
| `RETRACTED`      | retracted        |
| `ACCEPTED`       | accepted         |
| `REJECTED`       | rejected         |
| `CREATED`        | created          |
| `APPROVED`       | approved         |
| `NOT_APPROVED`   | not_approved     |
| `UNMAPPED_VALUE` | unmapped_value   |