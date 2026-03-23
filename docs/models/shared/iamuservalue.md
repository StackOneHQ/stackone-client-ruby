# IamUserValue

The status of the user, e.g. whether the user is enabled, has been disabled (eg. by an admin), or is pending (ie: awaiting approval by the user or an admin).

## Example Usage

```ruby
require "stackone_client"

value = IamUserValue::ENABLED

# Open enum: use .deserialize() to create instances from custom string values
custom = IamUserValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `ENABLED`        | enabled          |
| `DISABLED`       | disabled         |
| `PENDING`        | pending          |
| `UNMAPPED_VALUE` | unmapped_value   |