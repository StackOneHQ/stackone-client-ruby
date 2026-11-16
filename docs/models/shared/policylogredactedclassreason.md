# PolicyLogRedactedClassReason

Why it was redacted. `rule`: a rule denied the class. `fault`: the policy could not be evaluated for it, so it was redacted to fail safe. Absent on decisions stored before the reason was recorded.

## Example Usage

```ruby
require "stackone_client"

value = PolicyLogRedactedClassReason::RULE

# Open enum: use .deserialize() to create instances from custom string values
custom = PolicyLogRedactedClassReason.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `RULE`           | rule             |
| `FAULT`          | fault            |
| `UNMAPPED_VALUE` | unmapped_value   |